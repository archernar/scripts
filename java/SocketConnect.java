import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.*;

public class SocketConnect
{
    final static boolean DEBUG = false;
    public static void main( String[] args )
    {
        boolean bRet  = false;
        boolean bSSH  = false;
        boolean bHTTP = false;
        int timeout = 5;
        String server;
        String path;
        Socket socket1 = null;
        Socket socket2 = null;
        final int port = 80;


        for (int i=1;i<256;i++) {
            server = "192.168.1." + i;
            path = "moe";
            try {
                bHTTP = true;
                debug("Trying HTTP " + server + "  ");
                SocketAddress socketAddress = new InetSocketAddress(server, 80);
                socket1 = new Socket();
                socket1.connect(socketAddress, timeout);
                debug(server + "  HTTP CONNECT");
            }
            catch( Exception e ) {
                bHTTP = false;
                debugln(server + "  HTTP BAD CONNECT");
            }
            finally {
                try { socket1.close(); } catch ( Exception z ) { z=z; }
            }
            try {
                bSSH = true;
                debug("Trying SSH " + server + "  ");
                SocketAddress socketAddress = new InetSocketAddress(server, 22);
                socket2 = new Socket();
                socket2.connect(socketAddress, timeout);
                debug(server + "  SSH CONNECT");
            }
            catch( Exception e ) {
                bSSH = false;
                debugln(server + "  SSL BAD CONNECT");
            }
            finally {
                try { socket2.close(); } catch ( Exception z ) { z=z; }
            }

            if ( DEBUG && (bHTTP || bSSH)) System.out.println(server + " " +bHTTP + " " + bSSH + " " + (bHTTP || bSSH));
            if (bHTTP || bSSH) System.out.println(server);

        }
    }
    private static void debug(String sz) {
         if (SocketConnect.DEBUG) {
             System.out.print(sz);
         }
    }
    private static void debugln(String sz) {
         if (SocketConnect.DEBUG) {
             System.out.println(sz);
         }
    }

}
