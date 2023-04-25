Script started on 2023-02-09 19:23:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="186" LINES="12"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ cat forLoop.java 
import java.util.Scanner; 		// Get input

class forLoop{
    public static void main(String[] args){

        Scanner keyboard = new Scanner(System.in);
        System.out.println("Num: ");
        double n = keyboard.nextDouble();
        System.out.println(factorial(n));
    }

    public static double factorial(double n){
                double answer = 1.0;
        
        for (int i = 2; i <= n; i++){
            answer *= i;
        }

        return answer;
    }
}]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ javac -deprecation forLoop.java 
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ javac -deprecation forLoop.java [15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[C[15@javac -deprecation[C[C[C[C[C[C[C[C[C[C[C[C[C[C[15Pcat[C[C[C[C[C[C[C[C[C[C[C[C[C[Cls /home/cs/214/current/ajm94[14@cp lab04-result[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[14Pl[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[12Pcat forLoop.java [15@javac -deprecation[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Kjava forLoop
Num: 
100
9.33262154439441E157
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ java forLoop
Num: 
5
120.0
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/04[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/04[00m$ exit

Script done on 2023-02-09 19:23:38-05:00 [COMMAND_EXIT_CODE="0"]
