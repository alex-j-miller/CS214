Script started on 2023-04-06 19:42:26-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="197" LINES="9"]
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ada[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ada[00m$ cat bird_package.adb bird_package.ads birds.adb duck_package.adb duck_package.ads flying_package.adb flying_package.ads gh[Koose_package.adb goose_package.ads kiwi_package.adb kiwi_package.ads ostrich_package.adb ostrich_package.ads owl_package.adb owl_package.ads penguin_package.adb penguin_package.ads walking_package.adb walking_package.ads
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/3
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String) is
   begin
      A_Bird.My_Name := Name;
   end Init;

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function Name(A_Bird : in Bird_Type) return String is
   begin
      return A_Bird.My_Name;
   end Name;
   
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
   function Call(A_Bird : Bird_Type) return String is
   begin
      return "Squawwwwwwk!";
   end Call;
   
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   function Type_Name(A_Bird : in Bird_Type) return String is
   begin
      return "Bird";
   end Type_Name;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
   procedure Put(A_Bird : in Bird_Type'Class) is
   begin
      Put( Name(A_Bird) );
      Put( ' ' );
      Put( Type_Name(A_Bird) );
      Put( " says " );
      Put( Call(A_Bird) );
   end Put;
   

end Bird_Package;

-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/3
---------------------------------------------------

package Bird_Package is

type Bird_Type is tagged private;


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------

 procedure Init(A_Bird : out Bird_Type; Name : in String);

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------

 function  Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------

 function  Call(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------

 function  Type_Name(A_Bird : in Bird_Type) return String;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------

 procedure Put(A_Bird : in Bird_Type'Class); 

private
    type Bird_Type is
          tagged record
            My_Name : String(1..6);
          end record;

end Bird_Package;
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Alex Miller
-- Date: 4/3
-----------------------------------------------------

with Bird_Package, 
  Duck_Package, 
  Goose_Package, 
  Owl_Package,
  Penguin_Package,
  Ostrich_Package,
  Kiwi_Package,
  Ada.Text_IO;

use Bird_Package,
  Duck_Package, 
  Goose_Package, 
  Owl_Package,
  Penguin_Package,
  Ostrich_Package,
  Kiwi_Package,
  Ada.Text_IO;

procedure Birds is

 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Penguin_Type;
 Bird6 : Ostrich_Type;
 Bird7 : Kiwi_Type;

begin
   Put("Welcome to the Bird Park!");
   New_Line;

 Init(Bird2, "Donald");
 Put(Bird2); New_Line;
 Init(Bird3, "Mother");
 Put(Bird3); New_Line;
 Init(Bird4, "Woodsy");
 Put(Bird4); New_Line;
 
 Init(Bird5, "Peter ");
 Put(Bird5); New_Line;
 Init(Bird6, "Orvile");
 Put(Bird6); New_Line;
 Init(Bird7, "Kiki  ");
 Put(Bird7); New_Line;

 New_Line;
end Birds;

-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/3
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------

   function Call(A_Duck : in Duck_Type) return String is
   begin
    return "Quack!";
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------

   function Type_Name(A_Duck : in Duck_Type) return String is
   begin
    return "Duck";
   end Type_Name;

end Duck_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/3
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Duck_Package is

type Duck_Type is new Flying_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------

function  Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------

 function  Type_Name(A_Duck : in Duck_Type) return String;

private
     type Duck_Type is new Flying_Type with
          record
            null;
          end record;

end Duck_Package;
-- Alex Miller
-- 4/6

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Package is
   
   -- movement abstract method
   function Movement(A_Duck : in Flying_Type) return String is
   begin
      return "flew";
   end Movement;
   
   
   function Type_Name(A_Duck : in Flying_Type) return String is
   begin
      return "Flying";
   end Type_Name;


end Flying_Package;-- Alex Miller
-- 4/6

with Bird_Package; use Bird_Package;

package Flying_Package is
   
   type Flying_Type is new Bird_Type with private;

   function Movement(A_Duck : in Flying_Type) return String;

   function Type_Name(A_Duck : in Flying_Type) return String;

private
   type Flying_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Flying_Package;-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/3
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

    function Call(A_Goose : in Goose_Type) return String is
    begin
     return "Honk!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

    function Type_Name(A_Goose : in Goose_Type) return String is
    begin
     return "Goose";
    end Type_Name;


end Goose_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/6
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Goose_Package is

 type Goose_Type is new Flying_Type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------

function  Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------

 function  Type_Name(A_Goose : in Goose_Type) return String;

private

     type Goose_Type is new Flying_Type with
          record
            null;
          end record;

end Goose_Package;
-- Alex Miller
-- 4/6

with Ada.Text_IO;
use Ada.Text_IO;

package body Kiwi_Package is
   function Call(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "*noise";
   end Call;
   function Type_Name(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Kiwi";
   end Type_Name;


end Kiwi_Package;-- Alex Miller
-- 4/6

with Walking_Package; use Walking_Package;

package Kiwi_Package is
   
   type Kiwi_Type is new Walking_Type with private;

   function Call(A_Kiwi : in Kiwi_Type) return String;

   function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
   type Kiwi_Type is new Walking_Type with
      record
	 null;
      end record;
   

end Kiwi_Package;-- Alex Miller
-- 4/6

with Ada.Text_IO; use Ada.Text_IO;

package body Ostrich_Package is
    function Call(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Snork";
    end Call;
    function Type_Name(A_Ostrich : in Ostrich_Type) return String is
    begin
        return "Ostrich";
    end Type_Name;
end Ostrich_Package;-- Alex Miller
-- 4/6

with Walking_Package; use Walking_Package;

package Ostrich_Package is
   
   type Ostrich_Type is new Walking_Type with private;

   function Call(A_Ostrich : in Ostrich_Type) return String;
   function Type_Name(A_Ostrich : in Ostrich_Type) return String;
   private
    type Ostrich_Type is new Walking_Type with
        record
            null;
        end record;
end Ostrich_Package;-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by:
-- Date:
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------

    function Call(A_Owl : in Owl_Type) return String is
    begin
     return "Whoo!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------

     function Type_Name(A_Owl : in Owl_Type) return String is
    begin
     return "Owl";
    end Type_Name;

end Owl_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 4/6
---------------------------------------------------

with Flying_Package; use Flying_Package;

package Owl_Package is

type Owl_Type is new Flying_Type with private;

 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------

function  Call(A_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------

 function  Type_Name(A_Owl : in Owl_Type) return String;

private
     type Owl_Type is new Flying_Type with
          record
            null;
          end record;


end Owl_Package;
-- Alex Miller
-- 4/6

with Ada.Text_IO; use Ada.Text_IO;

package body Penguin_Package is
    function Call(A_Penguin : in Penguin_Type) return String is
    begin
        return "Huhhuh";
    end Call;
    function Type_Name(A_Penguin : in Penguin_Type) return String is
    begin
        return "Penguin";
    end Type_Name;
end Penguin_Package;-- Alex Miller
-- 4/6

with Walking_Package; use Walking_Package;

package Penguin_Package is
   
   type Penguin_Type is new Walking_Type with private;

   function Call(A_Penguin : in Penguin_Type) return String;
   function Type_Name(A_Penguin : in Penguin_Type) return String;
   private
    type Penguin_Type is new Walking_Type with
        record
            null;
        end record;
end Penguin_Package;-- Alex Miller
-- 4/6

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Package is
   
   -- movement abstract method
   function Movement(A_Duck : in Walking_Type) return String is
   begin
      return "walked";
   end Movement;
   
   
   function Type_Name(A_Duck : in Walking_Type) return String is
   begin
      return "Walking";
   end Type_Name;


end Walking_Package;-- Alex Miller
-- 4/6

with Bird_Package; use Bird_Package;

package Walking_Package is
   
   type Walking_Type is new Bird_Type with private;
   
   -- movement abstract method
   function Movement(A_Duck : in Walking_Type) return String;
   
   
   function Type_Name(A_Duck : in Walking_Type) return String;

private
   type Walking_Type is new Bird_Type with
      record
	 null;
      end record;
   

end Walking_Package;]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ada[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ada[00m$ gnatmake birds
gnatmake: "birds" up to date.
]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ada[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ada[00m$ ./birds
Welcome to the Bird Park!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsy Owl says Whoo!
Peter  Penguin says Huhhuh
Orvile Ostrich says Snork
Kiki   Kiwi says *noise

]0;ajm94@gold17: ~/Desktop/CS 214/Projects/10/ada[01;32majm94@gold17[00m:[01;34m~/Desktop/CS 214/Projects/10/ada[00m$ exit

Script done on 2023-04-06 19:44:09-04:00 [COMMAND_EXIT_CODE="0"]
