Script started on 2023-04-08 20:58:49-04:00 [TERM="xterm-256color" TTY="/dev/pts/70" COLUMNS="208" LINES="12"]
]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/java[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/java[00m$ cat Threaded_Array_Sum.java Sum.java ArraySum.java 
/* Threaded_Array_Sum.java sums the integers in a file using an array.
 *
 * Usage: java -Xint Threaded_Array_Sum <fileName>
 *
 * Input: the name of the input file
 *         (entered on the command-line).
 * Precondition: the first line of the file is the number
 *                of (other) numbers in the file.
 * Output: the sum of the other numbers in the file
 *          and how long it took to compute that sum.
 *
 * Begun by: Prof. Adams for CS 214 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/8
 */

 import java.util.Scanner;                   // convenient I/O
 import java.io.File;                        // file I/O
 import java.io.FileNotFoundException;       // file exception
 import java.lang.System;                    // nanoTime()
 
 public class Threaded_Array_Sum {
 
   public static void main(String [] args) {
      Threaded_Array_Sum me = new Threaded_Array_Sum(args);
      me.run();
   }
 
   /* constructor
    * @param: args, an array of Strings
    * Precondition: args.length == 1 &&
    *                args[0] is the name of an input file
    *                 whose first line is N, an integer
    *                 followed by a blank line
    *                 followed by N integers, one per line.
    * Postcondition: myScanner is a Scanner for that input file
    *             && myArray is an array containing the N ints.
    */
   public Threaded_Array_Sum(String [] args) {
      if (args.length < 1) {
         System.err.println("\n*** Usage: java Sum <fileName>\n");
         System.exit(1);
      }
      Scanner aScanner = openScanner( args[0] ); // open input file
      myArray = readFile(aScanner);              // fill array with values
      int myNumThreads = getNumThreads( args );
   }
 
 
   /* utility to open / return a Scanner to a file 
    *   whose name comes from the command-line.
    * 
    * @param: fileName, a String
    * Precondition: fileName is the name of an input file.
    * Return: a Scanner for that input file.
    */
   private Scanner openScanner(String fileName) {
      Scanner in = null;
      try {
         File theFile = new File ( fileName );
         in = new Scanner( theFile );
      } catch ( FileNotFoundException  fnfe ) {
         System.err.println("\n*** Unable to open '" + fileName + "'\n");
         System.exit(1);
      }
 
      return in;
   }
 
   /* fill an array with values from a Scanner
    * @param: in, a Scanner to an input file.
    * Precondition: the first line of the input file is N,
    *                the number of (other) numbers in the file.
    * Postcondition: the N int values have been read
    *                 from 'in' and stored in an array.
    * Return: the array containing the N int values.
    */
   private int[] readFile(Scanner in) {
      int numNumbers = in.nextInt();           // read how many numbers
      int [] array = new int[numNumbers];      // allocate array
      for (int i = 0; i < array.length; i++) { // fill array
         array[i] = in.nextInt();              //   with numbers
      }
      in.close();                              // close input file
      return array;                            // we're done
   }
 
   /* how long does it take to process the values in myArray?
    * Precondition: myArray has been filled with N input values.
    * Output: the sum of the values in myArray
    *          and how long it took to compute that sum.
    */
   public void run() {
      long startTime = System.nanoTime();             // start timing
      long sum = sumArray(myArray);                    // sum the values
      long totalTime = System.nanoTime() - startTime; // stop timing
      
      System.out.println("\nThe sum of the " + myArray.length
                          + " numbers is: " + sum 
                          + "\n and summing them took " 
                          + totalTime + " time units.\n");
   }
 
   /* sum the values in an array
    * @param: arr, an array of integers
    * Return: the sum of the int values in arr.
    */
   private long sumArray(int[] arr) {
      long sum = 0;
      for (int i = 0; i < arr.length; i++) {
         sum += arr[i];
      }
      return sum;
   }

   private final int getNumThreads( String [] args ) {
    if (args.length >= 2) {
       return Integer.parseInt( args[1] );
    } else {
       return 1;
    }
 }
 
   private int [] myArray = null;
 }
 
 /* Sum.java sums the integers in a file.
 *
 * Usager java Sum <fileName>
 *
 * Input: the name of the input file
 *         (entered on the command-line).
 * Precondition: the first line of the file
 *                is the number of numbers in the file.
 * Output: the sum of the other numbers in the file.
 *
 * @author: Prof. Adams, for CS 214 at Calvin College.
 */

import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

public class Sum {

  public static void main(String [] args) {
     Sum me = new Sum(args);
     me.run(args);
  }

  /* constructor
   * @param: args, an array of Strings
   * Precondition: args.length >= 1 &&
   *                args[0] is the name of an input file.
   * Postcondition: myScanner is a Scanner for that input file.
   */              
  public Sum(String [] args) {
     if (args.length < 1) {
        System.err.println("\n*** Usage: java Sum <fileName>\n");
        System.exit(1);
     }
     myScanner = openScanner( args[0] );
  }

  /* method to sum the numbers in the file
   *
   * Precondition: myScanner is a Scanner for an input file
   *                whose first line is N, the number of numbers
   *                followed by a blank line
   *                followed by N numbers, each on a separate line.
   * Output: the sum of the N numbers.
   */
  public void run(String [] args) {

     long numNumbers = myScanner.nextLong();    // read how many numbers
     long sum = 0, number = 0;

     // either of these loops work
     for (int i = 0; i < numNumbers; i++) {  // counting loop
//     while ( myScanner.hasNextInt() ) {      // pretest loop
        number = myScanner.nextLong();        //   read the next number
        sum += number;                       //   add it to the sum
     }
     myScanner.close();

     System.out.println("\nThe sum of the numbers is: " + sum + "\n");
  }

  /* Utility to open / return a Scanner to a file 
   * 
   * @param: fileName, a String
   * Precondition: fileName is the name of an input file.
   * Return: a Scanner for that input file.
   */
  private Scanner openScanner(String fileName) {
     Scanner in = null;
     try {
        File theFile = new File ( fileName );
        in = new Scanner( theFile );
     } catch ( FileNotFoundException  fnfe ) {
        System.err.println("\n*** Unable to open '" + fileName + "'\n");
        System.exit(1);
     }
     return in;
  }

  private Scanner myScanner = null;
}

/* ArraySum.java sums the integers in a file using an array.
 *
 * Usage: java -Xint ArraySum <fileName>
 *
 * Input: the name of the input file
 *         (entered on the command-line).
 * Precondition: the first line of the file is the number
 *                of (other) numbers in the file.
 * Output: the sum of the other numbers in the file
 *          and how long it took to compute that sum.
 *
 * Begun by: Prof. Adams for CS 214 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/8
 */

import java.util.Scanner;                   // convenient I/O
import java.io.File;                        // file I/O
import java.io.FileNotFoundException;       // file exception
import java.lang.System;                    // nanoTime()

public class ArraySum {

  public static void main(String [] args) {
     ArraySum me = new ArraySum(args);
     me.run();
  }

  /* constructor
   * @param: args, an array of Strings
   * Precondition: args.length == 1 &&
   *                args[0] is the name of an input file
   *                 whose first line is N, an integer
   *                 followed by a blank line
   *                 followed by N integers, one per line.
   * Postcondition: myScanner is a Scanner for that input file
   *             && myArray is an array containing the N ints.
   */
  public ArraySum(String [] args) {
     if (args.length < 1) {
        System.err.println("\n*** Usage: java Sum <fileName>\n");
        System.exit(1);
     }
     Scanner aScanner = openScanner( args[0] ); // open input file
     myArray = readFile(aScanner);              // fill array with values
  }


  /* utility to open / return a Scanner to a file 
   *   whose name comes from the command-line.
   * 
   * @param: fileName, a String
   * Precondition: fileName is the name of an input file.
   * Return: a Scanner for that input file.
   */
  private Scanner openScanner(String fileName) {
     Scanner in = null;
     try {
        File theFile = new File ( fileName );
        in = new Scanner( theFile );
     } catch ( FileNotFoundException  fnfe ) {
        System.err.println("\n*** Unable to open '" + fileName + "'\n");
        System.exit(1);
     }

     return in;
  }

  /* fill an array with values from a Scanner
   * @param: in, a Scanner to an input file.
   * Precondition: the first line of the input file is N,
   *                the number of (other) numbers in the file.
   * Postcondition: the N int values have been read
   *                 from 'in' and stored in an array.
   * Return: the array containing the N int values.
   */
  private int[] readFile(Scanner in) {
     int numNumbers = in.nextInt();           // read how many numbers
     int [] array = new int[numNumbers];      // allocate array
     for (int i = 0; i < array.length; i++) { // fill array
        array[i] = in.nextInt();              //   with numbers
     }
     in.close();                              // close input file
     return array;                            // we're done
  }

  /* how long does it take to process the values in myArray?
   * Precondition: myArray has been filled with N input values.
   * Output: the sum of the values in myArray
   *          and how long it took to compute that sum.
   */
  public void run() {
     long startTime = System.nanoTime();             // start timing
     long sum = sumArray(myArray);                    // sum the values
     long totalTime = System.nanoTime() - startTime; // stop timing
     
     System.out.println("\nThe sum of the " + myArray.length
                         + " numbers is: " + sum 
                         + "\n and summing them took " 
                         + totalTime + " time units.\n");
  }

  /* sum the values in an array
   * @param: arr, an array of integers
   * Return: the sum of the int values in arr.
   */
  private long sumArray(int[] arr) {
     long sum = 0;
     for (int i = 0; i < arr.length; i++) {
        sum += arr[i];
     }
     return sum;
  }

  private int [] myArray = null;
}

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/java[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/java[00m$ java Threaded_Array_Sum.[K /home//[Kcs/214/labs/12/numbers/5numbers.txt 5

The sum of the 5 numbers is: 150
 and summing them took 2614 time units.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/java[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/java[00m$ java Threaded_Array_Sum /home/cs/214/labs/12/numbers/5numbers.txt 5[K[K[K[K[K[K[K[K[K[K[K[K[K[K1000000numbers.txt 5

The sum of the 1000000 numbers is: 50473230
 and summing them took 4292005 time units.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/java[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/java[00m$ java Threaded_Array_Sum /home/cs/214/labs/12/numbers/1000000numbers.txt 5[K4

The sum of the 1000000 numbers is: 50473230
 and summing them took 5485112 time units.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/java[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/java[00m$ java Threaded_Array_Sum /home/cs/214/labs/12/numbers/1000000numbers.txt 4[K1

The sum of the 1000000 numbers is: 50473230
 and summing them took 4280080 time units.

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/12/java[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/12/java[00m$ exit

Script done on 2023-04-08 21:00:17-04:00 [COMMAND_EXIT_CODE="0"]
