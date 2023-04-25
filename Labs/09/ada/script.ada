Script started on 2023-04-25 02:23:58-04:00 [TERM="xterm-256color" TTY="/dev/pts/25" COLUMNS="232" LINES="8"]
]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/09/ada[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/09/ada[00m$ cat name_package.adb name_package.ads name_tester.adb 
-- name_package.adb defines operations for the Name type.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 
---------------------------------------------------------
with Name_Package; use Name_Package;
with Ada.Text_IO; use Ada.Text_IO;

package body Name_Package is

    aName : Name_Package.Name ;
  ----------------------------------------------
  -- Init initializes a Name variable          
  -- Receive: Nm, the Name variable;          
  --          First, the first name;         
  --          Middle, the middle name;      
  --          Last, the last name.         
  -- Return: Nm, its fields set to First, 
  --               Middle, and Last.     
  ----------------------------------------------

  procedure Init(Nm: out Name;
                 First, Middle, Last : in String) is
  begin
    Nm.MyFirst := First;
    Nm.MyMiddle := Middle;
    Nm.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        
  -- Receive: Nm, a Name.                      
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myFirst.                     
  ----------------------------------------------
  function getFirst( Nm: in Name) return String is
  begin
    return Nm.MyFirst;
  end getFirst;

  ----------------------------------------------
  -- getMiddle(Name) retrieves Name as a String 
  -- Receive: Nm, a Name.        
  -- PRE: Nm has been initialized.
  -- Return: Nm.myMiddle. 
  ----------------------------------------------
  function getMiddle( Nm: in Name) return String is
  begin
     return Nm.MyMiddle;
  end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       
  -- Receive: Nm, a Name.                    
  -- PRE: Nm has been initialized.            
  -- Return: Nm.myLast.                        
  ----------------------------------------------
  function getLast( Nm: in Name) return String is
  begin
     return Nm.MyLast;
  end getLast;

  ----------------------------------------------
  -- getFullName(Name) retrieves Name as a String -
  -- Receive: Nm, a Name.                      -
  -- PRE: Nm has been initialized.             -
  -- Return: a String representation of Nm.    -
  ----------------------------------------------
  function getFullName( Nm: in Name) return String is
  begin
    return Nm.MyFirst & " "
           & Nm.MyMiddle & " "
           & Nm.MyLast;
  end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: Nm has been initialized.             -
  -- Receive: Nm, a Name.                      -
  -- Output: Nm, to the screen.                -
  ----------------------------------------------
  procedure Put(Nm: in Name) is
  begin
    Put( getFullName(Nm) );
  end Put;
  end Name_Package;
-- name_package.ads declares the Name type and its operations.
-- This is the header file of the Name class
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 
--------------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

package Name_Package is

    type Name is private;
    ----------------------------------------------
    -- Init initializes a Name variable          
    -- Receive: Nm, the Name variable;          
    --          First, the first name;         
    --          Middle, the middle name;      
    --          Last, the last name.         
    -- Return: Nm, its fields set to First, 
    --               Middle, and Last.     
    ----------------------------------------------
    procedure Init(Nm: out Name; First, Middle, Last : in String);

    ----------------------------------------------
    -- getFirst(Name) retrieves Name.myFirst        
    -- Receive: Nm, a Name.                      
    -- PRE: Nm has been initialized.            
    -- Return: Nm.myFirst.                     
    ----------------------------------------------
    function getFirst(Nm: in Name) return String;

    ----------------------------------------------
    -- getMiddle(Name) retrieves Name as a String 
    -- Receive: Nm, a Name.        
    -- PRE: Nm has been initialized.
    -- Return: Nm.myMiddle. 
    ----------------------------------------------
    function getMiddle(Nm: in Name) return String;

    ----------------------------------------------
    -- getLast(Name) retrieves Name.myLast       
    -- Receive: Nm, a Name.                    
    -- PRE: Nm has been initialized.            
    -- Return: Nm.myLast.                        
    ----------------------------------------------
    function getLast(Nm: in Name) return String;

    ----------------------------------------------
    -- getFullName(Name) retrieves Name as a String -
    -- Receive: Nm, a Name.                      -
    -- PRE: Nm has been initialized.             -
    -- Return: a String representation of Nm.    -
    ----------------------------------------------
    function getFullName( Nm: in Name) return String;

    ----------------------------------------------
    -- Put(Name) displays a Name value.          -
    -- PRE: Nm has been initialized.             -
    -- Receive: Nm, a Name.                      -
    -- Output: Nm, to the screen.                -
    ----------------------------------------------
    procedure Put(Nm: in Name);

    private 
    NAME_SIZE : constant Positive := 8;
    type Name is
      record
         myFirst,
         myMiddle,
         MyLast : String(1..NAME_SIZE);
      end record;
end Name_Package;

-- name_tester.adb "test-drives" the Name type.
-- This file is the implementation of the name_package.ads header file.
-- Begun by: Dr. Adams, CPSC 280, October 1999.
-- Completed by: Alex Miller
-- Date: 
----------------------------------------------

with Name_Package; use Name_Package;
with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is
  aName : Name_Package.Name;
begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ",
                   "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", 
                   "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", 
                   "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ",
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;
end name_tester;

]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/09/ada[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/09/ada[00m$ gnatmake name_tester.adb
gnatmake: "name_tester" up to date.
]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/09/ada[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/09/ada[00m$ ./name_tester 
John     Paul     Jones   
All tests passed!
]0;ajm94@code-tunnel: ~/Desktop/CS 214/Labs/09/ada[01;32majm94@code-tunnel[00m:[01;34m~/Desktop/CS 214/Labs/09/ada[00m$ exit

Script done on 2023-04-25 02:24:25-04:00 [COMMAND_EXIT_CODE="0"]
