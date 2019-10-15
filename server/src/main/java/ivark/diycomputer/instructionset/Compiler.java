package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.Computer;
import ivark.diycomputer.instructionset.eeprom.SerialWriter;

import java.io.*;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;


/**
 * Created by ivark on 22.10.17.
 */
public class Compiler {
    private InstructionSet is;

    final static private Pattern LABELPATTERN = Pattern.compile("([a-zA-Z][a-zA-Z0-9_]*)\\:");
    final static private Pattern BYTELINEPATTERN = Pattern.compile("B *0x *([0-9a-fA-F ]*)");
    final static private Pattern STRINGLINEPATTERN = Pattern.compile("S '(.*)'");

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
                if (line.contains("//")) {
                    line = line.substring(0, line.indexOf("//")).trim();
                }
                if (line.startsWith("#") || line.isEmpty()) {
                    line = r.readLine();
                    continue;
                }
                result.add(line);
                line = r.readLine();
            }
        }
        return result;
    }

    public Map<String, Integer> createLabelMap(List<String> lines) {
        Map<String, Integer> result = new HashMap<>();
        int address = 0;
        for (String line : lines) {
            if (BYTELINEPATTERN.matcher(line).matches()) {
                address += getBytesFromByteline(line).length;
            } else if (STRINGLINEPATTERN.matcher(line).matches()) {
                address += getBytesFromStringline(line).length;
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

    private String[] getBytesFromByteline(String byteline) {
        Matcher matcher = BYTELINEPATTERN.matcher(byteline);
        if (matcher.matches()) {
            String hex = matcher.group(1).trim();
            return hex.replace(" ", "").split("(?<=\\G.{2})");
        } else {
            throw new RuntimeException("Illegal byte line: \n" + byteline);
        }
    }

    private String[] getBytesFromStringline(String byteline) {
        Matcher matcher = STRINGLINEPATTERN.matcher(byteline);
        if (matcher.matches()) {
            String str = matcher.group(1).replace("\\0", "\0");
            return str.chars().mapToObj(c -> toHex(c, 2)).toArray(String[]::new);
        } else {
            throw new RuntimeException("Illegal byte line: \n" + byteline);
        }
    }

    public List<String> genCode(List<String> lines, Map<String, Integer> lblMap) {
        List<String> result = new ArrayList<>();
        //result.add("md 10000");  // Set max speed for programming (masterdelay=0)
        result.add("mar 0000");  // Set memory address register to zero
        List<Byte> byteCode = getByteCode(lines, lblMap);
        String instr="w ";
        for (byte b: byteCode) {
            instr+=toHex((int)b,2);
            if (instr.length() > 32) {
                result.add(instr);
                instr="w ";
            }
        }
        if (instr.length()>2) {
            result.add(instr);
        }
        result.add("initpc");
        return result;
    }


    public List<Byte> getByteCode(List<String> lines, Map<String, Integer> lblMap) {
        List<Byte> result = new ArrayList<>();
        int address = 0;
        for (String line : lines) {
            System.out.print((toHex(address, 4) + "  " + line + "                                                   ").substring(0, 40));

            if (BYTELINEPATTERN.matcher(line).matches()) {
                String[] bytes = getBytesFromByteline(line);
                address += bytes.length;
                for (String bytestring : bytes) {
                    result.add(toByte(bytestring));
                }
                System.out.print(Stream.of(bytes).collect(Collectors.joining(" ")));
                System.out.println();
            } else if (STRINGLINEPATTERN.matcher(line).matches()) {
                String[] bytes = getBytesFromStringline(line);
                address += bytes.length;
                for (String bytestring : bytes) {
                    result.add(toByte(bytestring));
                }
                System.out.print(Stream.of(bytes).collect(Collectors.joining(" ")));
                System.out.println();
            } else {
                Matcher matcher = LABELPATTERN.matcher(line.trim());
                if (matcher.matches()) {
                    System.out.println();
                } else {
                    Instruction i = findInstruction(is, line);
                    try {
                        address++;
                        System.out.print(toHex(i.num, 2) + " ");

                        result.add((byte) i.num);
                        if (matchesDirectly(i, line)) {
                            Matcher m = i.pattern.matcher(line);
                            m.matches();
                            if (m.groupCount() >= 1) {
                                String[] argbytes = m.group(1).split("(?<=\\G.{2})");
                                for (String argbyte : argbytes) {
                                    result.add(toByte(argbyte));
                                }
                                System.out.print(Stream.of(argbytes).collect(Collectors.joining(" ")));
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
                            if (m.group(2) != null && !m.group(2).isEmpty()) {
                                arg += Integer.valueOf(m.group(2));
                            }
                            String[] argbytes = toHex(arg, 4).split("(?<=\\G.{2})");
                            for (String argbyte : argbytes) {
                                result.add(toByte(argbyte));
                            }
                            System.out.println(toHex(arg, 4));
                            address += 2;
                        } else if (matchesWithIndirectLabel(i, line)) {
                            Matcher m = getIndirectLabelPattern(i).matcher(line);
                            m.matches();
                            Integer arg = lblMap.get(m.group(1));
                            if (arg == null) {
                                throw new RuntimeException("Unknown label: " + m.group(1) + " in instruction " + line);
                            }
                            String[] argbytes = toHex(arg, 4).split("(?<=\\G.{2})");
                            for (String argbyte : argbytes) {
                                result.add(toByte(argbyte));
                            }
                            System.out.println(toHex(arg, 4));
                            address += 2;
                        }
                    } catch (Exception e) {
                        throw new RuntimeException("Failed for instruction "+i+" at line : "+line,e);
                    }
                }
            }
        }
        return result;
    }

    private Byte toByte(String s) {
        return (byte) Integer.parseInt(s, 16);
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
        if (i.pattern.toString().contains("\\$(....)")) {
            if (getDirectLabelPattern(i).matcher(line).matches()) {
                return true;
            }
        }
        return false;
    }

    private boolean matchesWithIndirectLabel(Instruction i, String line) {
        if (i.pattern.toString().contains("\\(\\$(....)\\)")) {
            if (getIndirectLabelPattern(i).matcher(line).matches()) {
                return true;
            }
        }
        return false;
    }

    private Pattern getDirectLabelPattern(Instruction i) {
        return Pattern.compile(i.pattern.toString().replace("\\$(....)", "([a-zA-Z][a-zA-Z0-9_]*)\\+?([0-3]?)"));
    }

    private Pattern getIndirectLabelPattern(Instruction i) {
        return Pattern.compile(i.pattern.toString().replace("\\(\\$(....)\\)", "\\(([a-zA-Z][a-zA-Z0-9_]*)\\)"));
    }


    protected void writeProg(List<String> installInstructions) throws Exception {

        File tempFile = File.createTempFile("diyprog", "diy");
        try (PrintWriter pw = new PrintWriter(new FileWriter(tempFile))) {
            for (String line : installInstructions) {
                pw.print(line + "\n");
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
