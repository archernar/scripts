<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Java Code Example">
<meta name="keywords" content="Java, Tutorial, Basics, beginners">
<title>Java Programming Example</title>

<link rel="stylesheet" href="http://www.happyahab.com/pri.css">

</head>
<body>
<div id="wrap-outer">
        <div id="wrap-inner">
            <div id="content-main">
                <h3>J11-Getting User Input</h3>
<pre><code class="language-java line-numbers">
import java.util.Scanner;
 
public class App {
    public static void main(String[] args) {
         
        // Create scanner object
        Scanner input = new Scanner(System.in);
         
        // Output the prompt
        System.out.println("Enter a floating point value: ");
         
        // Wait for the user to enter something.
        double value = input.nextDouble();
         
        // Tell them what they entered.
        System.out.println("You entered: " + value);
    }
}</code></pre>
            </div>
        </div>
    </div>
</div>
<script src="http://www.happyahab.com/pri.js"></script>

</body>
</html>

