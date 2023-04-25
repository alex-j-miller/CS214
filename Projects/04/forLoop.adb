with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure forLoop is

    Num, answer, i, n : Float;

begin
    Put("Num: ");
    Get(num);
    num := Float(num);
    answer := 1.0;


    for i in 2 .. Integer(num) loop
        answer := answer * Float(i);
    end loop;

    New_Line;
    Put(answer);

end forLoop;