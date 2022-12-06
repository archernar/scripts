
public static int roundUp(int n, int m) {
    return n >= 0 ? ((n + m - 1) / m) * m : (n / m) * m;
}
