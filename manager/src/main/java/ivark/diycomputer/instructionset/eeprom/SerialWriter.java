package ivark.diycomputer.instructionset.eeprom;

import jssc.SerialPort;
import jssc.SerialPortEvent;
import jssc.SerialPortException;

import java.io.*;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

/**
 * Created by ivark on 20.02.17.
 */
public class SerialWriter implements Closeable {
    SerialPort serialPort;

    public SerialWriter() throws Exception {
        this.serialPort = getSerialPort();
    }

    public void writeToSerial(String fileName) throws Exception {
        if (serialPort==null) {
            throw new RuntimeException("SerialWriter closed");
        }
        System.out.println("Writing to serial");
        try (FileInputStream fis = new FileInputStream(new File(fileName))) {
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
                                    System.out.println("Receiving: " + msg);
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

            waitForAck(inputQueue);

            BufferedReader br=new BufferedReader(new InputStreamReader(fis));
            String line=br.readLine();
            while (line!=null) {
                System.out.println("Send:"+line);
                serialPort.writeString(line+'\n');
                waitForAck(inputQueue);
                line=br.readLine();
            }
        }
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

    private int getInt(byte h, byte low) {
        int hiVal = ((int) h) & 0xff;
        int loVal = ((int) low) & 0xff;
        return hiVal << 8 | loVal;
    }

    @Override
    public void close() throws IOException {
        try {
            serialPort.removeEventListener();
            serialPort.closePort();
            serialPort = null;
        } catch (Exception e) {
            throw new RuntimeException("Failed to close serialwriter",e);
        }
    }
}
