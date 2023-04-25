Script started on 2023-03-20 19:33:49-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="186" LINES="9"]
]0;ajm94@gold32: ~/Desktop/CS 214/Labs/09/java[01;32majm94@gold32[00m:[01;34m~/Desktop/CS 214/Labs/09/java[00m$ cat NameTester.java 
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Alex Miller
 * Date: 3/20
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}



]0;ajm94@gold32: ~/Desktop/CS 214/Labs/09/java[01;32majm94@gold32[00m:[01;34m~/Desktop/CS 214/Labs/09/java[00m$ cat Name.java 
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Alex Miller
 * Date: 3/20
 ************************************************************/

// the Name class appears outside of the rest of the program
class Name {

    // Name object constructor with initialization  
    public Name(final String first, final String middle, final String last) {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
    }
   
    // extractor for first name of a Name object
    public final String getFirst() {
        return myFirst;
    }
  
    // extractor for middle name of a Name object
    public final String getMiddle() {
        return myMiddle;
    }
  
    // extractor for last name of a Name object
    public final String getLast() {
        return myLast;
    }
    
    // return string created by piecing together first, middle, and last names
    public final String toString() {
        return myFirst + ' ' + myMiddle + ' ' + myLast;
    }
  
    private String myFirst, myMiddle, myLast;  // private instance variables
  }]0;ajm94@gold32: ~/Desktop/CS 214/Labs/09/java[01;32majm94@gold32[00m:[01;34m~/Desktop/CS 214/Labs/09/java[00m$ javac -deprecation NameTester.java 
]0;ajm94@gold32: ~/Desktop/CS 214/Labs/09/java[01;32majm94@gold32[00m:[01;34m~/Desktop/CS 214/Labs/09/java[00m$ java NameTester
John Paul Jones
All tests passed!
]0;ajm94@gold32: ~/Desktop/CS 214/Labs/09/java[01;32majm94@gold32[00m:[01;34m~/Desktop/CS 214/Labs/09/java[00m$ exit

Script done on 2023-03-20 19:34:12-04:00 [COMMAND_EXIT_CODE="0"]
