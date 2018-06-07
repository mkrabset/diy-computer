package ivark.diycomputer.instructionset;

import ivark.diycomputer.Computer;
import ivark.diycomputer.instructionset.eeprom.SerialWriter;

import java.io.*;
import java.util.HashMap;
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
        Map<String, Integer> labelMap = createLabelMap(file);
        String s = genCode(file, labelMap);
        writeProg(s);
    }

    private Map<String, Integer> createLabelMap(File file) throws IOException {
        int address = 0;
        Map<String, Integer> labelAddress = new HashMap<>();
        try (BufferedReader r = new BufferedReader(new FileReader(file))) {
            String line = r.readLine();
            while (line != null) {
                line = line.trim();
                if (line.startsWith("#")) {
                  line=r.readLine();
                    continue;
                }
                if (line.equals("B")) {
                    address++;
                } else if (!line.isEmpty()) {
                    Matcher matcher = LABELPATTERN.matcher(line.trim());
                    if (matcher.matches()) {
                        String label = matcher.group(1);
                        labelAddress.put(label, address);
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
                line = r.readLine();
            }
        }
        return labelAddress;
    }


    private String genCode(File file, Map<String, Integer> lblMap) throws IOException {

        int address = 0;
        StringBuilder sb = new StringBuilder();
        sb.append("mar 0000\n");
        //sb.append("md 10000\n");
        try (BufferedReader r = new BufferedReader(new FileReader(file))) {
            String line = r.readLine();
            while (line != null) {
                line = line.trim();
                if (line.startsWith("#")) {
                    line=r.readLine();
                    continue;
                }

                if (!line.isEmpty()) {
                    System.out.print((toHex(address, 4) + "  " + line + "                 ").substring(0,20));
                }

                if (line.equals("B")) {
                    address++;
                    sb.append("w 00\n");
                    System.out.println("00");
                } else if (!line.isEmpty()) {
                    Matcher matcher = LABELPATTERN.matcher(line.trim());
                    if (matcher.matches()) {
                        System.out.println();
                    } else {
                        Instruction i = findInstruction(is, line);
                        address++;
                        System.out.print(toHex(i.num,2)+" ");
                        sb.append("w " + toHex(i.num, 2));
                        if (matchesDirectly(i, line)) {
                            Matcher m = i.pattern.matcher(line);
                            m.matches();
                            if (m.groupCount() >= 1) {
                                String arg = m.group(1);
                                sb.append(" " + arg);
                                System.out.print(arg);
                                if (i.pattern.toString().contains("....")) {
                                    address+=2;
                                } else if (i.pattern.toString().contains("..")) {
                                    address+=1;
                                }
                            }
                            System.out.println();
                            sb.append("\n");
                        } else if (matchesWithLabel(i, line)) {
                            Matcher m = getDirectLabelPattern(i).matcher(line);
                            m.matches();
                            Integer arg = lblMap.get(m.group(1));
                            sb.append(toHex(arg, 4) + "\n");
                            System.out.println(toHex(arg,4));
                            address+=2;
                        } else if (matchesWithIndirectLabel(i, line)) {
                            Matcher m = getIndirectLabelPattern(i).matcher(line);
                            m.matches();
                            Integer arg = lblMap.get(m.group(1));
                            if (arg==null) {
                                throw new RuntimeException("Unknown label: "+m.group(1)+" in instruction "+line);
                            }
                            sb.append(toHex(arg,4)+"\n");
                            System.out.println(toHex(arg,4));
                            address+=2;
                        }
                    }
                }
                line = r.readLine();
            }
        }
        sb.append("initpc\n");
        return sb.toString();
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


    protected void writeProg(String spec) throws Exception {
        System.out.println(spec);

        File tempFile = File.createTempFile("eeprom", "display");
        try (PrintWriter pw = new PrintWriter(new FileWriter(tempFile))) {
            pw.print(spec);
            pw.flush();
        }
        try (SerialWriter sw = new SerialWriter()) {
            sw.writeToSerial(tempFile.getAbsolutePath());
        }
    }

    private static String toHex(Integer v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

}
