import java.util.Scanner;

public class proj7 {
    public static void printArray(double[] arr) {
        for (double elem : arr) {
            System.out.println(elem);
        }
    }

    public static void readArray(double[] arr) {
        Scanner sc = new Scanner(System.in);
        for (int i = 0; i < arr.length; i++) {
            System.out.print("Enter a value for element " + i + ": ");
            arr[i] = sc.nextDouble();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("How many values do you want in the array? ");
        int numValues = sc.nextInt();

        double[] arr = new double[numValues];

        readArray(arr);
        printArray(arr);
    }
}