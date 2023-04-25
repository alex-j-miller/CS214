-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Alex Miller
-- Date: 3/9
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  -- replace this line with the definition of NAME_SIZE
  NAME_SIZE : Integer := 8;

  -- replace this line with the definition of Name
  type Name is record myFirst, MyMiddle, MyLast : String(1..NAME_SIZE); end record;

  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  -- replace this line with the definition of Init()
  procedure Init(TheName: out Name; First, Middle, Last : in String) is begin TheName.MyFirst := First; TheName.MyMiddle := Middle; TheName.MyLast := Last; end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

  -- replace this line with the definition of getFirst()
  function getFirst(TheName : in Name) return String is begin return TheName.MyFirst; end getFirst;


  -- replace this line with the doc and def of getMiddle()
  function getMiddle(TheName: in Name) return String is begin return TheName.MyMiddle; end getMiddle;


  -- replace this line with the doc and def of getLast()
  function getLast(TheName: in Name) return String is begin return TheName.MyLast; end getLast;


  procedure setFirst(TheName : out Name ; aFirst: in String) is begin TheName.myFirst := aFirst; end setFirst;

  procedure setMiddle(TheName : out Name ; aMiddle: in String) is begin TheName.myMiddle := aMiddle; end setMiddle;

  procedure setLast(TheName : out Name ; aLast: in String) is begin TheName.MyLast := aLast; end setLast; 

  function lfmi(TheName: in Name) return String is begin return TheName.MyLast & ", " & TheName.myFirst & " " & TheName.MyMiddle(1) & "."; end lfmi;

  procedure read(TheName: out Name) is begin Get(TheName.myFirst); Get(TheName.MyMiddle); Get(TheName.MyLast); end read;



  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

  -- replace this line with the definition of getFullName()
  function getFullName(TheName: in Name) return String is begin return TheName.myFirst & TheName.MyMiddle & TheName.MyLast; end getFullName;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

  -- replace this line with the definition of Put()
  procedure Put(TheName: in Name) is begin Put(getFullName(TheName)); end Put; 


begin
  Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul    Jones   ", "getFullName() failed");

   
   setFirst(aName, "Bobby   ");
   setMiddle(aName, "Billy   ");
   setLast(aName, "Joe     ");
   pragma Assert( lfmi(aName) = "Joe     , Bobby    B.", "lfmi() faild");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

