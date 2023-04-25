Script started on 2023-01-26 19:59:25-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="11"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ cat switchJava.java 
import java.util.Scanner;  // include class for Scanner

public class switchJava {

    public static void main(String[] args) {
        Scanner keyboard = new Scanner(System.in);
        int avg = keyboard.nextInt();
        System.out.println(letterGrade(avg));
    }

    public static char letterGrade(int avg) {
        switch (avg) {
            case 10:
            case 9:
                return 'A';
            case 8:
                return 'B';
            case 7:
                return 'C';
            case 6:
                return 'D';
            default:
                return 'F';
        }
    }
}]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ cat switchJava.java [6Pjava YearCodesc -deprecation YearCodes.java[K[K-deprecation switchJava.java 
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ javac -deprecation switchJava.java [Kjava switchJava
10
A
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ java switchJava
9
A
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/03[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/03[00m$ exit

Script done on 2023-01-26 20:00:09-05:00 [COMMAND_EXIT_CODE="1"]
