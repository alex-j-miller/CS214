with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure switchAda is

    grade : Integer;
    c : Character;

    function letterGrade(a: in Integer) return Character is
    begin
        case a is
            when 10 => return'A';
            when 9 => return 'A';
            when 8 => return 'B';
            when 7 => return 'C';
            when 6 => return 'D';
            when others => return 'F';
        end case;
    end letterGrade;

begin
    Put("enter num: ");
    grade := Integer'Value(Get_Line);
    Put(letterGrade(grade));
end switchAda;