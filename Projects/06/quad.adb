-- Alex Miller
-- 3/13

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Numerics; use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

-- with Ada.Numerics.Generic_Complex_Elementary_Functions.Sqrt; use Ada.Numerics.Generic_Complex_Elementary_Functions;

procedure quad(A : String; B : String; C : String) is
   Root, Arg, A_Float, B_Float, C_Float : Float;
begin
   Get(C_Float);
   Get(A_Float);
   Get(B_Float);

   -- Calculate discriminant
    Arg := B_Float**2 - 4.0*A_Float*C_Float;

   -- Calculate root
   Root := (-B_Float + (Sqrt(Arg)) / (2.0*A_Float));

   Put(Root);
end quad;