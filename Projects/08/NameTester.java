/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Alex Miller
 * Date: 3/16
 ************************************************************/
import java.util.Scanner;

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

    assert aName.lfmi().equals("Jones, John P.");

    aName.setFirst("idk");
    aName.setMiddle("who knows");
    aName.setLast("test");;

    assert aName.getFirst().equals("idk") ;
    assert aName.getMiddle().equals("who knows") ;
    assert aName.getLast().equals("test") ;

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

  public void setFirst(String aFirst)
  {
    myFirst = aFirst;
  }

  public void setMiddle(String aMiddle)
  {
    myMiddle = aMiddle;
  }

  public void setLast(String aLast)
  {
    myLast = aLast;
  }

  public String lfmi()
  {
    return myLast + ", " + myFirst + " " + myMiddle.charAt(0) + ".";
  }

  public void read()
  {
    Scanner scanner = new Scanner(System.in);
    myFirst = scanner.nextLine();
    myMiddle = scanner.nextLine();
    myLast = scanner.nextLine();

  }


};


