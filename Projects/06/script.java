Script started on 2023-02-16 20:53:36-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ javac -deprecation quad.java 
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ java[K[K[K[Kcat quad.java 
import java.lang.Math;
import java.util.Scanner;

public class quad {
    public static boolean quadraticRoots(double a, double b, double c,
                                         double[] roots) {
        if (a != 0) {
            double arg = Math.pow(b, 2.0) - 4 * a * c;
            if (arg >= 0) {
                roots[0] = (-b + Math.sqrt(arg)) / (2 * a);
                roots[1] = (-b - Math.sqrt(arg)) / (2 * a);
                return true;
            } else {
                System.err.println("\n*** quadraticRoots(): b^2 - 4ac is negative!");
                return false;
            }
        } else {
            System.err.println("\n*** QuadraticRoots(): a is zero!");
            return false;
        }
    }

    public static void main(String[] args) {
        double a, b, c;
        double[] roots = new double[2];

        System.out.println("Enter the values of a, b, and c:");
        Scanner scanner = new Scanner(System.in);

        a = scanner.nextDouble();
        b = scanner.nextDouble();
        c = scanner.nextDouble();

        if (quadraticRoots(a, b, c, roots)) {
            System.out.println("The roots are: " + roots[0] + " and " + roots[1]);
        }
    }
}]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ java quad
Enter the values of a, b, and c:
1
25
1
The roots are: -0.04006420562288859 and -24.95993579437711
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/06[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/06[00m$ exit

Script done on 2023-02-16 20:53:59-05:00 [COMMAND_EXIT_CODE="0"]
