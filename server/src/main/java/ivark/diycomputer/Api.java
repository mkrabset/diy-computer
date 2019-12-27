package ivark.diycomputer;


import com.fasterxml.jackson.databind.JsonNode;
import ivark.diycomputer.instructionset.Compiler;
import ivark.diycomputer.instructionset.eeprom.SerialWriter;
import ivark.diycomputer.model.Computer;
import ivark.diycomputer.vm.VirtualMachine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:8080")
public class Api {
    private final Computer c =new Computer();
    private final Compiler compiler=new Compiler(c);
    private final VirtualMachine vm = new VirtualMachine(c,compiler);
    private String code = "";
    private String mappedCode = "";
    private int runDelay = 5000;

    private SerialWriter serialWriter;

    @PostConstruct
    public void init() {
        try {
            this.serialWriter = new SerialWriter() {
                @Override
                public void onSent(String msg) {
                    Api.this.batchLog.log("SENT: " + msg);
                }

                @Override
                public void onReceived(String msg) {
                    Api.this.batchLog.log("RECV:" + msg);
                }
            };
        } catch (Exception e) {
            System.out.println("Failed to connect");
            e.printStackTrace();
        }
    }

    @Autowired
    private BatchLog batchLog;

    @PostMapping("/compiler")
    public String compile(@RequestBody InputStream program) throws Exception {
        Compiler compiler = new Compiler(c);
        List<String> lines = compiler.getLines(new InputStreamReader(program));
        List<String> installInstructions = compiler.generateInstallInstructions(lines);
        return installInstructions.stream().collect(Collectors.joining("\n"));
    }

    @PostMapping("/code")
    public void setCode(@RequestBody String code) throws Exception {
        this.code = code;
    }

    @GetMapping("/code")
    public String getCode() throws Exception {
        return code;
    }

    @GetMapping("/batchlog")
    public JsonNode getBatchLog(@RequestParam("from") Integer from) {
        return batchLog.getLog(from);
    }


    @PostMapping("/runDelay")
    public void setRunDelay(String runDelay) throws Exception {
        this.runDelay = Math.max(Integer.valueOf(runDelay), 10);
        serialWriter.writeToSerial("rd " + this.runDelay);
    }

    @GetMapping("/runDelay")
    public Integer getRunDelay() throws Exception {
        return runDelay;
    }

    @GetMapping("/mappedCode")
    public String getMappedCode() {
        return mappedCode;
    }

    @GetMapping(value = "/vmState", produces = "application/json")
    public JsonNode getVMState() {
        return vm.getState();
    }

    @PostMapping("/command")
    public void execute(@RequestBody String com) throws Exception {
        Command command = Command.valueOf(com);
        switch (command) {
            case install: {
                vm.init();
                List<String> lines = compiler.getLines(new StringReader(code));
                Map<String, Integer> labelMap = compiler.createLabelMap(lines);
                Compiler.ByteCode byteCode = compiler.getByteCode(lines, labelMap);
                List<Byte> bytes = byteCode.getBytes();
                for (int i=0;i<bytes.size();i++) {
                    vm.c.ram.getVMPart().write(i,bytes.get(i));
                }
                this.mappedCode = byteCode.mappedCode.stream().map(Object::toString).collect(Collectors.joining("\n"));
                this.mappedCode = this.mappedCode + "\n\nChecksum: " + byteCode.checksum() + "\n";
                List<String> installInstructions = compiler.genInstallInstructions(byteCode.getBytes());
                serialWriter.writeToSerial(installInstructions);
                break;
            }
            case initPc: {
                serialWriter.writeToSerial("initpc");
                break;
            }
            case run: {
                serialWriter.writeToSerial("run");
                break;
            }
            case halt: {
                serialWriter.writeToSerial("halt");
                break;
            }
            case step: {
                serialWriter.writeToSerial("s");
                vm.step();
                break;
            }
            case reconnect: {
                try {
                    serialWriter.close();
                } catch (Exception e) {

                }
                serialWriter = null;
                init();
            }
        }
    }


    enum Command {
        install, initPc, run, halt, step, reconnect
    }
}
