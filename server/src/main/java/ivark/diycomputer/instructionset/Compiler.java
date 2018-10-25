package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.Computer;
import ivark.diycomputer.instructionset.eeprom.SerialWriter;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 * Created by ivark on 22.10.17.
 */
public class Compiler {
    private InstructionSet is;

    final static private Pattern LABELPATTERN = Pattern.compile("([a-zA-Z][a-zA-Z0-9]*)\\:");

    static public void main(String... args) throws Exception {
        Compiler compiler = new Compiler(new Computer());
        compiler.compile(new File(args[0]));
    }

    public Compiler(Computer computer) {
        this.is = new InstructionSet(computer);
    }

    private void compile(File file) throws Exception {
        List<String> lines = getLines(new FileReader(file));
        List<String> installInstructions = generateInstallInstructions(lines);

        System.out.println("\n\nInstall-instructions:");
        System.out.println("---------------------");
        installInstructions.forEach(System.out::println);

        //writeProg(installInstructions);
    }

    public List<String> generateInstallInstructions(List<String> lines) {
        Map<String, Integer> labelMap = createLabelMap(lines);
        return genCode(lines, labelMap);
    }


    public List<String> getLines(Reader reader) throws IOException {
        List<String> result = new ArrayList<>();
        try (BufferedReader r = new BufferedReader(reader)) {
            String line = r.readLine();
            while (line != null) {
                line = line.trim();
                if (line.startsWith("#") || line.isEmpty()) {
                    line = r.readLine();
                    continue;
                }
                result.add(line);
                line=r.readLine();
            }
        }
        return result;
    }

    private Map<String, Integer> createLabelMap(List<String> lines) {
        Map<String, Integer> result = new HashMap<>();
        int address = 0;
        for (String line : lines) {
            if (line.equals("B")) {
                address++;
            } else {
                Matcher matcher = LABELPATTERN.matcher(line.trim());
                if (matcher.matches()) {
                    String label = matcher.group(1);
                    result.put(label, address);
                } else {
                    Instruction i = findInstruction(is, line);
                    if (i != null) {
                        address++;
                        if (i.pattern.toString().contains("....")) {
                            address += 2;
                        } else if (i.pattern.toString().contains("..")) {
                            address += 1;
                        }
                    } else {
                        throw new RuntimeException("Compile error:" + line);
                    }
                }
            }
        }
        return result;
    }


    private List<String> genCode(List<String> lines, Map<String, Integer> lblMap) {
        List<String> result = new ArrayList<>();
        int address = 0;
        result.add("mar 0000");  // Set memory address register to zero
        for (String line : lines) {
            System.out.print((toHex(address, 4) + "  " + line + "                 ").substring(0, 20));

            if (line.equals("B")) {
                address++;
                result.add("w 00");
                System.out.println("00");
            } else {
                Matcher matcher = LABELPATTERN.matcher(line.trim());
                if (matcher.matches()) {
                    System.out.println();
                } else {
                    Instruction i = findInstruction(is, line);
                    address++;
                    System.out.print(toHex(i.num, 2) + " ");
                    String instr = "w " + toHex(i.num, 2);
                    if (matchesDirectly(i, line)) {
                        Matcher m = i.pattern.matcher(line);
                        m.matches();
                        if (m.groupCount() >= 1) {
                            String arg = m.group(1);
                            instr = instr + " " + arg;
                            System.out.print(arg);
                            if (i.pattern.toString().contains("....")) {
                                address += 2;
                            } else if (i.pattern.toString().contains("..")) {
                                address += 1;
                            }
                        }
                        System.out.println();
                    } else if (matchesWithLabel(i, line)) {
                        Matcher m = getDirectLabelPattern(i).matcher(line);
                        m.matches();
                        Integer arg = lblMap.get(m.group(1));
                        instr = instr + toHex(arg, 4);
                        System.out.println(toHex(arg, 4));
                        address += 2;
                    } else if (matchesWithIndirectLabel(i, line)) {
                        Matcher m = getIndirectLabelPattern(i).matcher(line);
                        m.matches();
                        Integer arg = lblMap.get(m.group(1));
                        if (arg == null) {
                            throw new RuntimeException("Unknown label: " + m.group(1) + " in instruction " + line);
                        }
                        instr = instr + toHex(arg, 4);
                        System.out.println(toHex(arg, 4));
                        address += 2;
                    }
                    result.add(instr);
                }
            }
        }
        result.add("initpc");
        return result;
    }

    private Instruction findInstruction(InstructionSet is, String line) {
        for (Instruction i : is.instructions) {
            if (matchesDirectly(i, line)) {
                return i;
            }
            if (matchesWithLabel(i, line)) {
                return i;
            }
            if (matchesWithIndirectLabel(i, line)) {
                return i;
            }
        }
        return null;
    }

    private boolean matchesDirectly(Instruction i, String line) {
        Matcher m = i.pattern.matcher(line);
        return m.matches();
    }

    private boolean matchesWithLabel(Instruction i, String line) {
        if (i.pattern.toString().contains("\\(\\$(....)\\)")) {
            if (getDirectLabelPattern(i).matcher(line).matches()) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesWithIndirectLabel(Instruction i, String line) {
        if (i.pattern.toString().contains("\\$(....)")) {
            if (getIndirectLabelPattern(i).matcher(line).matches()) {
                return true;
            }
        }
        return false;
    }

    private Pattern getDirectLabelPattern(Instruction i) {
        return Pattern.compile(i.pattern.toString().replace("\\(\\$(....)\\)", "\\(([a-zA-Z][a-zA-Z0-9]*)\\)"));
    }

    private Pattern getIndirectLabelPattern(Instruction i) {
        return Pattern.compile(i.pattern.toString().replace("\\$(....)", "([a-zA-Z][a-zA-Z0-9]*)"));
    }


    protected void writeProg(List<String> installInstructions) throws Exception {

        File tempFile = File.createTempFile("diyprog", "diy");
        try (PrintWriter pw = new PrintWriter(new FileWriter(tempFile))) {
            for (String line:installInstructions) {
                pw.print(line+"\n");
            }
            pw.flush();
        }

        try (SerialWriter sw = new SerialWriter()) {
            sw.writeToSerial(tempFile);
        }
    }

    private static String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

}
