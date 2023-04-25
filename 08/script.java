Script started on 2023-03-09 20:28:52-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="172" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/08[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ cat NameTester.java 
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Alex Miller
 * Date: 3/9
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

// Replace this line with the declaration of class Name...
class Name
{
  private String myFirst, myMiddle, myLast;

  public Name(String first, String middle, String last)
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }

  public String getFirst()
  {
    return myFirst;
  }

  public String getMiddle()
  {
    return myMiddle;
  }

  public String getLast()
  {
    return myLast;
  }

  public String toString()
  {
    return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  public void print() 
  {
  System.out.println( toString() );
  }
};


]0;ajm94@gold17: ~/Desktop/CS 214/Labs/08[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ make java
make: Nothing to be done for 'java'.
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/08[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ java -ed[Ka NameTester
John Paul Jones
All tests passed!
]0;ajm94@gold17: ~/Desktop/CS 214/Labs/08[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ exit

Script done on 2023-03-09 20:29:13-05:00 [COMMAND_EXIT_CODE="0"]
