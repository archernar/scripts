import java.io.IOException;
import java.io.File;
import java.util.ArrayList; // import the ArrayList class
import java.util.Scanner;
public class Sorter {
 
    public static void main(String[] args) {
        ReadFileLineByLineUsingFiles();
    }

public static int roundUp(int n, int m) {
    return n >= 0 ? ((n + m - 1) / m) * m : (n / m) * m;
}
public static String getLine(Scanner s, int i) {
    String sz = s.nextLine() ;
    System.out.println(" ECHO:: ] "  + sz);
    return sz;
}

    public static void ReadFileLineByLineUsingFiles() {
        Scanner s = null;
        final int COL = 4;
        ArrayList<String> inlist = new ArrayList<String>();
        int N = 0;
        int r = 0;
        int c = 0;
        int n = -1;
        int rowCount = 0;

        try {
                s = new Scanner(new File("sam"));
                while (s.hasNext()) {
                    rowCount++;
                    inlist.add(s.nextLine());
                }
                s.close();
        } 
        catch (Exception e) {
               System.out.println("Caught Exception: " + e.getMessage());
               e.printStackTrace();
        } 
        finally {
               s.close();
        }
        n = rowCount;
        for (int i=rowCount;i<roundUp(rowCount,COL);i++) {
                inlist.add("");
                n++;
        }
        rowCount=n;



      N=rowCount / COL;
//    Sys.putln(N);
//    Sys.putln(COL);
//    Sys.putln(N*COL);
      String[][] list = new String[N][COL];
        try {
                c=0;
                int i=0;
                for (int k=0;k<COL;k++) {
                    r=0;
                    for (int j=0;j<N;j++) {
                        // Sys.putln(r,c);
                        list[r][c] = inlist.get(i);i++;
                        r++;
                    }
                    c++;
                }
        } 
        catch (Exception e) {
               System.out.println("Caught Exception: " + e.getMessage());
               e.printStackTrace();
               System.exit(1);
        } 
        finally {
               s.close();
        }

        Sys.reset();
        for (r=0;r<list.length;r++) {
               for (c=0;c<list[0].length;c++) {
                   String sz = list[r][c];
                   //if (sz != null) Sys.putln(r + ", " + c + "  " + sz);
                   if (sz != null) System.out.println(sz);
               }
        }
    }
 
}
