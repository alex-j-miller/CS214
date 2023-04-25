Script started on 2023-03-13 19:53:29-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="182" LINES="10"]
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ cat name_tester.adb
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
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ make name_tester 
gnatmake name_tester -gnata
x86_64-linux-gnu-gcc-7 -c -gnata name_tester.adb
x86_64-linux-gnu-gnatbind-7 -x name_tester.ali
x86_64-linux-gnu-gnatlink-7 name_tester.ali
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ ./ name[K[K[K[K[K[K/name_tester 
John    Paul    Jones   
All tests passed!
]0;ajm94@gold18: ~/Desktop/CS 214/Labs/08[01;32majm94@gold18[00m:[01;34m~/Desktop/CS 214/Labs/08[00m$ exit

Script done on 2023-03-13 19:54:07-04:00 [COMMAND_EXIT_CODE="0"]
