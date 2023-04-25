Script started on 2023-01-23 20:49:50-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="182" LINES="12"]
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ cat YearCodes.java 
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

    public static int yearCode(String year)
    {
    if (year.equals("freshman"))
        return 1;
    else if (year.equals("sophomore"))
        return 2;
    else if (year.equals("junior"))
        return 3;
    else if (year.equals("senior"))
        return 4;
    else
        return 0;
    }

}
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ javac -deprecation j[KYearCodes.java 
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ js[Kava YearCor[Kdes

Enter your academic year: 
frsh  eshman
1
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ java YearCodes

Enter your academic year: 
1
0
]0;ajm94@gold21: ~/Desktop/CS 214/Labs/03[01;32majm94@gold21[00m:[01;34m~/Desktop/CS 214/Labs/03[00m$ exit

Script done on 2023-01-23 20:50:24-05:00 [COMMAND_EXIT_CODE="0"]
