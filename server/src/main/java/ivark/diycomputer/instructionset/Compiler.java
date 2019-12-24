package ivark.diycomputer.instructionset;

import ivark.diycomputer.model.Computer;
import ivark.diycomputer.instructionset.eeprom.SerialWriter;

import java.io.*;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;


/**
 * Created by ivark on 22.10.17.
 */
public class Compiler {
    private DIYInstructionSet is;

    final static private Pattern LABELPATTERN = Pattern.compile("([a-zA-Z][a-zA-Z0-9_]*)\\:");
    final static private Pattern BYTELINEPATTERN = Pattern.compile("B *0x *([0-9a-fA-F ]*)");
    final static private Pattern STRINGLINEPATTERN = Pattern.compile("S '(.*)'");

    static public void main(String... args) throws Exception {
        Compiler compiler = new Compiler(new Computer());
        compiler.compile(new File(args[0]));
    }

    public Compiler(Computer computer) {
        this.is = new DIYInstructionSet(computer);
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
        ByteCode byteCode = getByteCode(lines, labelMap);
        return genInstallInstructions(byteCode.getBytes());
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

    public List<String> genInstallInstructions(List<Byte> programBytes) {
        List<String> result = new ArrayList<>();
        //result.add("md 10000");  // Set max speed for programming (masterdelay=0)
        result.add("mar 0000");  // Set memory address register to zero
        String instr = "w ";
        for (byte b : programBytes) {
            instr += toHex((int) b, 2);
            if (instr.length() > 32) {
                result.add(instr);
                instr = "w ";
            }
        }
        if (instr.length() > 2) {
            result.add(instr);
        }
        result.add("initpc");
        return result;
    }


    public ByteCode getByteCode(List<String> lines, Map<String, Integer> lblMap) {
        ByteCode result = new ByteCode();
        int address = 0;
        for (String line : lines) {
            String currentAddress = toHex(address, 4);
            String currentLine = line;
            List<Byte> currentBytes = null;
            LineType currentLineType = null;

            if (BYTELINEPATTERN.matcher(line).matches()) {
                currentLineType = LineType.BYTES;
                String[] bytes = getBytesFromByteline(line);
                currentBytes = Arrays.stream(bytes).map(this::toByte).collect(Collectors.toList());
            } else if (STRINGLINEPATTERN.matcher(line).matches()) {
                currentLineType = LineType.STRING;
                String[] bytes = getBytesFromStringline(line);
                currentBytes = Arrays.stream(bytes).map(this::toByte).collect(Collectors.toList());
            } else {
                Matcher matcher = LABELPATTERN.matcher(line.trim());
                if (matcher.matches()) {
                    currentLineType = LineType.LABEL;
                    currentBytes = Collections.emptyList();
                } else {
                    currentLineType = LineType.INSTR;
                    Instruction i = findInstruction(is, line);
                    try {
                        currentBytes = new ArrayList<>();
                        currentBytes.add((byte) i.num);

                        if (matchesDirectly(i, line)) {
                            Matcher m = i.pattern.matcher(line);
                            m.matches();
                            if (m.groupCount() >= 1) {
                                String[] argbytes = m.group(1).split("(?<=\\G.{2})");
                                currentBytes.addAll(Arrays.stream(argbytes).map(this::toByte).collect(Collectors.toList()));
                            }
                        } else if (matchesWithLabel(i, line)) {
                            Matcher m = getDirectLabelPattern(i).matcher(line);
                            m.matches();
                            Integer arg = lblMap.get(m.group(1));
                            if (m.group(2) != null && !m.group(2).isEmpty()) {  // Group 2 for labels is a constant offset, example: lbl+2
                                arg += Integer.valueOf(m.group(2));
                            }
                            String[] argbytes = toHex(arg, 4).split("(?<=\\G.{2})");
                            currentBytes.addAll(Arrays.stream(argbytes).map(this::toByte).collect(Collectors.toList()));
                        } else if (matchesWithIndirectLabel(i, line)) {
                            Matcher m = getIndirectLabelPattern(i).matcher(line);
                            m.matches();
                            Integer arg = lblMap.get(m.group(1));
                            if (arg == null) {
                                throw new RuntimeException("Unknown label: " + m.group(1) + " in instruction " + line);
                            }
                            String[] argbytes = toHex(arg, 4).split("(?<=\\G.{2})");
                            currentBytes.addAll(Arrays.stream(argbytes).map(this::toByte).collect(Collectors.toList()));
                        }

                    } catch (Exception e) {
                        throw new RuntimeException("Failed for instruction " + i + " at line : " + line, e);
                    }
                }
            }
            address += currentBytes.size();
            result.mappedCode.add(new ByteCode.MappedLine(currentAddress, currentBytes, currentLine, currentLineType));
        }
        return result;
    }

    private Byte toByte(String s) {
        return (byte) Integer.parseInt(s, 16);
    }

    private Instruction findInstruction(DIYInstructionSet is, String line) {
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
            Matcher matcher = getDirectLabelPattern(i).matcher(line);
            if (matcher.matches()) {
                String label=matcher.group(1);
                return !(label.equals("X") || label.equals("Y") || label.equals("Z"));
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

    private static String toHex(Byte v, int length) {
        String padded = "0000000" + Integer.toHexString(v);
        return padded.substring(padded.length() - length);
    }

    public static class ByteCode {
        public static final String PADDING = "          ";
        public final List<MappedLine> mappedCode = new ArrayList<>();

        public static class MappedLine {
            final String address;
            final List<Byte> bytes;
            final String line;
            final LineType lineType;

            public MappedLine(String address, List<Byte> bytes, String line, LineType lineType) {
                this.address = address;
                this.bytes = bytes;
                this.line = line;
                this.lineType = lineType;
            }

            @Override
            public String toString() {
                String bytePart = lineType == LineType.STRING
                        ? ""
                        : (bytes.stream()
                        .map(b -> toHex((int) b, 2))
                        .collect(Collectors.joining(" ")) + PADDING).substring(0, 10);

                return address + " "
                        + bytePart
                        + line;
            }
        }

        public List<Byte> getBytes() {
            return mappedCode.stream().flatMap(line -> line.bytes.stream()).collect(Collectors.toList());
        }

        public String checksum() {
            byte result=0;
            for (MappedLine ml:mappedCode) {
                if (ml.lineType==LineType.LABEL && ml.line.trim().equals("cs_end:")) {
                    break;
                }
                for (byte b: ml.bytes) {
                    result+=b;
                }
            }
            return "#"+toHex(result,2)+" = "+((result+256) % 256);
        }


    }

    enum LineType {
        LABEL,
        INSTR,
        BYTES,
        STRING
    }

}
