import java.lang.reflect.Method;
import java.util.Scanner;

public class Runner {
    
    private String className;

    public Runner(String sz) {
        className = sz;
    }
    public Runner() {
        className = "";
    }

    void setClassName(String sz) {
        className = sz;
    }

    public String setClassName() {
        String sz;
        String szPrompt = "Enter Class to Run: ";
        System.out.print( szPrompt.equals("") ? "Enter a string: " : szPrompt);
        Scanner sc=new Scanner(System.in);
        sz=sc.nextLine();
        System.out.println("");
        className = sz;
        return sz;
    }

    String getClassName() {
        return className;
    }

    public void runClass() {
        Class noparams[] = {};     // No paramater
        try {
            Class cls = Class.forName(this.className);
            Object obj = cls.newInstance();
            Method method = cls.getDeclaredMethod("run", noparams);
            method.invoke(obj, null);
        } catch (Exception e) {
             System.out.println("Caught Exception: "+ e.getMessage());
             e.printStackTrace();
        }

    }

    // Public Static Methods
    public static void main(String[] args) { 
            String szClassName;
            Runner runner = new Runner();
            szClassName = runner.setClassName();
            runner.runClass();
    } 

}

