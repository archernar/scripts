public class Sys{
    public static int linecount = 0;

public static void reset() {
    linecount=0;
}
public static void println(int a, int b) {
    System.out.println( a + ", " + b);
}
public static void println(int a) {
    System.out.println( a );
}
public static void println(String a) {
    System.out.println( a );
}
public static void print(String a) {
    System.out.print( a );
}
public static void put(String a) { System.out.print( ++linecount + ") " + a ); }
public static void putln(String a) { System.out.println( ++linecount + ") " + a ); }

public static void put(int a) { System.out.print( a ); }
public static void putln(int a) { System.out.println( a ); }


public static void put(int a, int b) { System.out.print(++linecount + ") " + a + ", " + b); }
public static void putln(int a, int b) { System.out.println(++linecount + ") " + a + ", " + b); }
}

