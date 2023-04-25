Script started on 2023-01-12 19:35:51-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="197" LINES="13"]
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ cat rectangle_area.java 
import java.util.Scanner;  // include class for Scanner

public class rectangle_area {
     public static double rectArea(double s1, double s2) {
        return s1*s2;               // return an expression
     } 
	
  // main program
  public static void main(String[] args) {
      // prompt
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its height: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double side1 = keyboard.nextDouble();

      System.out.print(" enter its length: ");
      double side2 = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + rectArea(side1, side2) + "\n");
      System.out.printf("The area is %f\n\n", rectArea(side1, side2));
      System.out.printf("The area is %.15f\n\n", rectArea(side1, side2));

      
  } // main method

} // class RectArea]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ javac rectangle_area.java 
]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ java rectangle_area


To compute the area of a rectangle,
 enter its height: 1
 enter its length: 1

The area is 1.0

The area is 1.000000

The area is 1.000000000000000

]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ java rectangle_area


To compute the area of a rectangle,
 enter its height: 2
 enter its length: 2

The area is 4.0

The area is 4.000000

The area is 4.000000000000000

]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ java rectangle_area


To compute the area of a rectangle,
 enter its height: 2.5
 enter its length: 2.5

The area is 6.25

The area is 6.250000

The area is 6.250000000000000

]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ java rectangle_area


To compute the area of a rectangle,
 enter its height: 4.999999
 enter its length: 4.999999

The area is 24.999990000001

The area is 24.999990

The area is 24.999990000001000

]0;ajm94@gold29: ~/Desktop/CS 214/Projects/01[01;32majm94@gold29[00m:[01;34m~/Desktop/CS 214/Projects/01[00m$ exit

Script done on 2023-01-12 19:37:40-05:00 [COMMAND_EXIT_CODE="0"]
