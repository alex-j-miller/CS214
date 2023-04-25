Script started on 2023-04-06 18:46:18-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/java[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/java[00m$ cat Bird.java Birds.java Duck.java FlyingBird.java Goose.java Kiwi.java Ostrich.java Owl.java Penguin.java WalkingBird.java 
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/3
 ******************************************************/

import java.io.*;

public abstract class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
  public Bird()
  {
    myName = "";
  }


 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Bird(String name)
  {
    myName = name;
  }


 /* Name accessor
  * Return: myName.
  */
  public String getName()
  {
    return myName;
  }

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
  public String call()
  {
    return "Squawk!";
  }

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    // System.out.println( getName() + ' ' + getClass().getName() + " says " + call() );
    System.out.println(myName + " " + getClass().getName() + " just " + movement() + " and said " + call() );
  }

  public abstract String movement();



  private String myName;
}

/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/3
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      //Bird bird0 = new Bird();

      //Bird bird1 = new Bird("Hawkeye");
      //bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();
      
      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      Penguin bird5 = new Penguin("Popper");
      bird5.print();

      Ostrich bird6 = new Ostrich("Olly");
      bird6.print();

      Kiwi bird7 = new Kiwi("Kowalski");
      bird7.print();
      System.out.println();
    }
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/3
 ******************************************************/

public class Duck extends FlyingBird {
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Duck() {
    super();
  }

  public Duck(String name)
  {
    super(name);
  }



 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
  public String call()
  {
    return "Quack!";
  }

}

public class FlyingBird extends Bird{
    public FlyingBird() {
        super();
    }

    public FlyingBird(String name){
        super(name);
    }


    public String movement()
    {
        return "flew";
    }
}
/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/3
 ******************************************************/

public class Goose extends FlyingBird{

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose()
  {
    super();
  }
  public Goose(String name)
  {     
    super(name);
  } 


 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
  public String call()
  {
    return "Honk!";
  } 

} 

public class Kiwi extends WalkingBird{
    public Kiwi(){
        super();
    }
    public Kiwi(String name) {
        super(name);
    }
    public String call(){
        return "*Kiwi noises*";
    }
}
public class Ostrich extends WalkingBird{
    public Ostrich(){
        super();
    }
    public Ostrich(String name){
        super(name);
    }
    public String call(){
        return "Snork";
    }
}
/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Alex Miller
 * Date: 4/3
 ******************************************************/

public class Owl extends FlyingBird{

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl()
  {
    super();
  }
  public Owl(String name)
  {
    super(name);
  }




 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
  public String call()
  {
    return "Whoo-hoo!";
  }

} 

public class Penguin extends WalkingBird{
    public Penguin() {
        super();
    }

    public Penguin(String name) {
        super(name);
    }

    public String call(){
        return "Huh-huh-huh-huuuuh";
    }
}
public abstract class WalkingBird extends Bird{
    public WalkingBird() {
        super();
    }

    public WalkingBird(String name){
        super(name);
    }

    public String movement()
    {
        return "walked";
    }
}
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/java[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/java[00m$ javac -deprecation Birds.java 
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/java[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/java[00m$ javac -deprecation Birds.java [94@cat Bird.java Birds.java Duck.java FlyingBird.java Goose.java Kiwi.java Ostrich.java Owl.java Penguin.java WalkingBird[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Cjavac -deprecation Birds.java [K[Kjava Birds

Welcome to the Bird Park!

Donald Duck just flew and said Quack!
Mother Goose Goose just flew and said Honk!
Woodsey Owl just flew and said Whoo-hoo!
Popper Penguin just walked and said Huh-huh-huh-huuuuh
Olly Ostrich just walked and said Snork
Kowalski Kiwi just walked and said *Kiwi noises*

]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/java[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/java[00m$ exit

Script done on 2023-04-06 18:47:39-04:00 [COMMAND_EXIT_CODE="0"]
