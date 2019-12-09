package ivark.diycomputer.instructionset.misc;

import java.util.ArrayList;
import java.util.List;

public class TableFormatter {
    public static final String ANSI_RESET = "\u001B[0m";
    public static final String ANSI_BLACK = "\u001B[30m";
    public static final String ANSI_RED = "\u001B[31m";
    public static final String ANSI_GREEN = "\u001B[32m";
    public static final String ANSI_YELLOW = "\u001B[33m";
    public static final String ANSI_BLUE = "\u001B[34m";
    public static final String ANSI_PURPLE = "\u001B[35m";
    public static final String ANSI_CYAN = "\u001B[36m";
    public static final String ANSI_WHITE = "\u001B[37m";

    private int cols;
    private String evenRowColor;
    private String oddRowColor;
    private String sep;
    private List<List<String>> rows=new ArrayList<>();

    private TableFormatter(int cols, String evenRowColor, String oddRowColor, String sep) {
        this.cols=cols;
        this.evenRowColor=evenRowColor;
        this.oddRowColor=oddRowColor;
        this.sep=sep;
    }

    public void addRow(List<String> colValues) {
        if (colValues.size()!=cols) {
            throw new RuntimeException("Wrong number of cols: "+colValues);
        }
        rows.add(new ArrayList<>(colValues));
    }

    public String toString() {
        int[] maxWidths=new int[cols];
        for (List<String> row:rows) {
            for (int c=0;c<cols;c++) {
                maxWidths[c]=Math.max(maxWidths[c],row.get(c).length());
            }
        }

        StringBuilder sb=new StringBuilder();
        for (int r=0;r<rows.size();r++) {
            sb.append(r%2==0 ? evenRowColor : oddRowColor);
            List<String> row=rows.get(r);
            for (int c=0;c<cols;c++) {
                String col=row.get(c);
                sb.append(col+String.format("%1$"+(maxWidths[c]-col.length())+ "s", " "));
                sb.append(sep);
            }
            sb.append("\n");
        }
        return sb.toString();
    }
}
