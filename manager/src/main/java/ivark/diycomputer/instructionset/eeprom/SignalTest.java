package ivark.diycomputer.instructionset.eeprom;

import ivark.diycomputer.Computer;
import ivark.diycomputer.instructionset.InstructionSet;
import ivark.diycomputer.instructionset.Microcode;
import ivark.diycomputer.model.Signal;
import jssc.SerialPort;
import jssc.SerialPortEvent;
import jssc.SerialPortException;

import java.io.File;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public class SignalTest {
    Computer c = new Computer();
    InstructionSet s = new InstructionSet(c);

    Signal signal = c.sp.dirUpSignal;

    public static void main(String... args) throws Exception {
        new SignalTest().start();
    }

    private void start() throws Exception {
        SerialPort serialPort = getSerialPort();
        BlockingQueue<String> inputQueue = new ArrayBlockingQueue<>(100);
        final StringBuilder sb = new StringBuilder();
        serialPort.addEventListener(event -> {
            if (event.isRXCHAR()) {
                int num = event.getEventValue();
                if (num > 0) {
                    try {
                        byte buffer[] = serialPort.readBytes();
                        for (int i = 0; i < buffer.length; i++) {
                            byte b = buffer[i];
                            if (b == '\n') {
                                String msg = sb.toString().trim();
                                //System.out.println("Receiving: " + msg);
                                inputQueue.add(msg);
                                sb.delete(0, sb.length());
                            } else {
                                sb.append((char) b);
                            }
                        }
                    } catch (SerialPortException ex) {
                        System.out.println(ex);
                    }
                }
            }
        }, SerialPortEvent.RXCHAR);


        Thread.sleep(1000);
        while (!inputQueue.isEmpty()) {
            inputQueue.take();
        }

        s.instructions.forEach(i -> {
            try {
                for (int stepNum = 0; stepNum < i.steps.size(); stepNum++) {
                    Microcode step = i.steps.get(stepNum);
                    String hexString = toHex(i.num, 2) + toHex(stepNum, 1);
                    //System.out.println("Testing " + i.opcode + ": #" + toHex(i.num, 2) + "(" + toHex(stepNum, 1) + ")");
                    serialPort.writeString("mc " + hexString + "\n");
                    waitForAck(inputQueue);
                    boolean expected = step.activeSignals.contains(signal) ? signal.activeValue : !signal.activeValue;
                    boolean actual = probe(serialPort, inputQueue);
                    if (actual != expected) {
                        System.out.println("Test failed for entry " + hexString + ", expected " + expected + ", got " + actual + " on signal " + signal.name);
                        while (true) {
                            System.out.println(probe(serialPort, inputQueue));
                            try {Thread.sleep(500);} catch (Exception e) {}
                        }
                    }
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });
        serialPort.closePort();
        System.out.println("Success!");
    }

    private boolean probe(SerialPort serialPort, BlockingQueue<String> inputQueue) throws Exception {
        serialPort.writeString("probe\n");
        String msg = inputQueue.take();
        boolean actual = msg.trim().equals("1");
        waitForAck(inputQueue);
        return actual;
    }

    private void waitForAck(BlockingQueue<String> inputQueue) throws Exception {
        String s = "";
        while (!s.trim().endsWith(">")) {
            s = inputQueue.take();
        }
    }

    private SerialPort getSerialPort() throws Exception {
        String prefix = "/dev/ttyUSB";
        for (int i = 0; i <= 8; i++) {
            try {
                String dev = prefix + i;
                if (new File(dev).exists()) {
                    SerialPort serialPort = new SerialPort(dev);
                    serialPort.openPort();
                    serialPort.setParams(115200,
                            SerialPort.DATABITS_8,
                            SerialPort.STOPBITS_1,
                            SerialPort.PARITY_NONE);
                    System.out.println("CONNECTED: " + dev);
                    return serialPort;
                }
            } catch (Exception e) {
            }
        }
        throw new RuntimeException("Serial device not found.");
    }

    private static String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }
}
