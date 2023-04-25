Script started on 2023-02-06 19:30:04-05:00 [TERM="xterm-256color" TTY="/dev/pts/6" COLUMNS="197" LINES="12"]
ca]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ cat LogTable.java 
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by:
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();
    double count = start;

    //Replace this line with a while loop to generate the table of logs
    while(count <= stop){
      System.out.println("The logarithm of " + count + " is " + Math.log(count));
      count += increment;
    }

    for (double i = start; i < stop; i += increment){
      System.out.println("The logarithm of " + i + " is " + Math.log(i));
    }


    count = start;
    do {
      System.out.println("The logarithm of " + count + " is " + Math.log(count));
      count += increment;
    } while (count <= stop);

  }
}

]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ javac -deprecation LogTable.java 
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
5
1
The logarithm of 1.0 is 0.0
The logarithm of 2.0 is 0.6931471805599453
The logarithm of 3.0 is 1.0986122886681098
The logarithm of 4.0 is 1.3862943611198906
The logarithm of 5.0 is 1.6094379124341003
The logarithm of 6.0 is 1.791759469228055
The logarithm of 6.0 is 1.791759469228055
The logarithm of 6.0 is 1.791759469228055
The logarithm of 6.0 is 1.791759469228055
The logarithm of 1.0 is 0.0
The logarithm of 2.0 is 0.6931471805599453
The logarithm of 3.0 is 1.0986122886681098
The logarithm of 4.0 is 1.3862943611198906
The logarithm of 5.0 is 1.6094379124341003
]0;ajm94@gold29: ~/Desktop/CS 214/Labs/04[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Labs/04[00m$ exit

Script done on 2023-02-06 19:31:09-05:00 [COMMAND_EXIT_CODE="0"]
