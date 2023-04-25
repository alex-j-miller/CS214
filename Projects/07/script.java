Script started on 2023-02-22 16:32:12-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ cat proj7.java 
// Alex Miller
// 3/6

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
}]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ javac -deprecation prok[Kj7.java 
]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ java pro[Kr[Koj7
How many values do you want in the array? 5
Enter a value for element 0: 3
Enter a value for element 1: 4
Enter a value for element 2: 2
Enter a value for element 3: 1
Enter a value for element 4: 7
3.0
4.0
2.0
1.0
7.0
]0;ajm94@gold33: ~/Desktop/CS 214/Projects/07[01;32majm94@gold33[00m:[01;34m~/Desktop/CS 214/Projects/07[00m$ exit

Script done on 2023-02-22 16:32:47-05:00 [COMMAND_EXIT_CODE="0"]
