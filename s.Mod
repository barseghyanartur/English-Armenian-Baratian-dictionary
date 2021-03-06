MODULE s;

 TYPE string* = POINTER TO ARRAY OF CHAR;
       uchar* = ARRAY 4 OF CHAR;
 shortstring* = ARRAY 255 OF CHAR;
  longstring* = ARRAY 8192 OF CHAR;

  VAR
    emptyUchar* : uchar;

 PROCEDURE StripNull*(VAR str : uchar): string;
 VAR 
   pchar : string;
   i, j : INTEGER;
 BEGIN
   i := 0;
   REPEAT
     INC(i)
   UNTIL str[i] = 0X;
   NEW(pchar, i+1);
   j := 0;
   REPEAT
     pchar^[j] := str[j];
     INC(j)
   UNTIL j = i;
   RETURN pchar
END StripNull;

BEGIN
emptyUchar[0] := 0X;
emptyUchar[1] := 0X;
emptyUchar[2] := 0X;
emptyUchar[3] := 0X;
END s.
