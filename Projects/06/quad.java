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
}