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

} // class RectArea