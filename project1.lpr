program project1;

uses
crt;
var
 sVowels: string;
     sConson: string;

 f:text;
   rep:char;
   passwordnumber,passwordtext:string;
   numberpassword,longpassword,j:integer;

function GenerateRandomWord(CONST Len: Integer;sVowels,sConson:string; StartWithVowel:boolean): string;
    VAR
     i: Integer;
     B: Boolean;
  begin
    B:= StartWithVowel;
    SetLength(Result, Len);
    for i:= 1 to len DO
     begin
      if B
      then Result[i]:= sVowels[Random(Length(sVowels)) + 1]
      else Result[i]:= sConson[Random(Length(sConson)) + 1];
      B:= NOT B;
     end;
  end;
procedure rootname1 (k:string;x:integer);
begin
textcolor(x);
write(k);
end;

procedure rootname (k:string;x:integer);
begin
textcolor(x);
writeln(k);
end;
procedure readz(var passwordtext,passwordnumber:string;var longpassword,numberpassword:integer);
begin


rootname('         _|_|_|_|_|    _|_|    _|      _|    _|_|    ',11);
rootname('               _|    _|    _|  _|_|  _|_|  _|    _|  ',12);
rootname('             _|      _|    _|  _|  _|  _|  _|_|_|_|  ',13);
rootname('           _|        _|    _|  _|      _|  _|    _|  ',14);
rootname('         _|_|_|_|_|    _|_|    _|      _|  _|    _|  ',15);
writeln;
rootname('         Powerful tools to Generate password liste',3);
writeln;
rootname('============================ ZOMA v1 ==========================================',8);
writeln;


rootname1('root@zOma:~#~[',2);rootname1('Password Type Text : ',14);
readln(passwordtext);
writeln;
rootname1('root@zOma:~#~[',2);rootname1('Password Type Number : ',14);
readln(passwordnumber);
writeln;
rootname1('root@zOma:~#~[',2);rootname1('Length Of The Passsword : ',14);
readln(longpassword);
writeln;
rootname1('root@zOma:~#~[',2);rootname1('Number Of Paswword : ',14);
readln(numberpassword);
end;

begin
assign(f,'random.txt');
rewrite(f);
j:=0;
Randomize;
readz(passwordtext,passwordnumber,longpassword,numberpassword);
repeat
writeln(f,GenerateRandomWord(longpassword,passwordtext,passwordnumber,false));
j:=j+1
until j=numberpassword;
ReadKey;
close(f);
end.

