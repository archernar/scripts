public class Sys{
    public static boolean bOutput = true;
    public static int linecount = 0;
    public static final String C = ", ";

public static void on()    { bOutput=true; }
public static void off()   { bOutput=false; }
public static void reset() { linecount=0; }

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


public static void putln(String ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (String i : a) {
        sb.append(delim + i);
        delim=C;
    }
    writeln(sb.toString());
}
public static void put(String ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (String i : a) {
        sb.append(delim + i);
        delim=C;
    }
    write(sb.toString());
}

public static void putln(int ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (int i : a) {
        sb.append(delim + i);
        delim=C;
    }
    writeln(sb.toString());
}
public static void put(int ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (int i : a) {
        sb.append(delim + i);
        delim=C;
    }
    write(sb.toString());
}


public static void putln(long ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (long i : a) {
        sb.append(delim + i);
        delim=C;
    }
    writeln(sb.toString());
}
public static void put(long ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (long i : a) {
        sb.append(delim + i);
        delim=C;
    }
    write(sb.toString());
}

public static void putln(double ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (double i : a) {
        sb.append(delim + i);
        delim=C;
    }
    writeln(sb.toString());
}
public static void put(double ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (double i : a) {
        sb.append(delim + i);
        delim=C;
    }
    write(sb.toString());
}
public static void putln(float ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (float i : a) {
        sb.append(delim + i);
        delim=C;
    }
    writeln(sb.toString());
}
public static void put(float ... a) {
    StringBuilder sb = new StringBuilder();
    String delim = "";
    for (float i : a) {
        sb.append(delim + i);
        delim=C;
    }
    write(sb.toString());
}



private static void write(String sz) {
    System.out.print(++linecount + ") " + sz);
}
private static void writeln(String sz) {
    System.out.println(++linecount + ") " + sz);
}

}

