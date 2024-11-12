unit Date_Assis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

Function Long_Year(StrDate:String):Integer;
Function Short_Year(StrDate:String):Integer;
Function Mon(StrDate:String):Integer;
Function Day(StrDate:String):Integer;

Function Difference(BiginDate,EndDate:String):Integer;

////*******************************************////
////*******************************************////
{
   Return Difrence Between two Date If Two Date IS Valid And Date2 >= Date1
   Return -3 If Date 2 Is InValid     //First Priority
   Return -2 if Date 1 Is Invalid     //Second PrioRity
   Return -1 If Date 2 < Date 1       //Third Priority
}
////*******************************************////
////*******************************************////

Function Str_Long_Year(StrDate:String):String;
Function Str_Short_Year(StrDate:String):String;
Function Str_Mon(StrDate:String):String;
Function Str_Day(StrDate:String):String;
Function DayFromFirst(Long_Date:String):Integer;
//------------------------------------------------------------
Function IsValidDate(StrDate:String):Byte;
////*******************************************////
////*******************************************////
{
   Return 0 Is Valid Date
   Return 1 If Unvalid Year    //First Priority
   Return 2 if Unvalid Mon     //Second PrioRity
   Return 3 If UnValid Day     //Third Priority
}
////*******************************************////
////*******************************************////

Function IsNumber(S:String):Boolean;
Function IsValidDateMsg(StrDate:String):String;
Function Mon2Str(Mon:byte):string;

//------------------------------------------------------------
implementation
uses DateUtils;

Function Long_Year(StrDate:String):Integer;
begin
Result:=strtoint(copy(StrDate,1,4));
end;
//---------------------------------------------------

Function Str_Long_Year(StrDate:String):String;
begin
Result:=copy(StrDate,1,4);
end;
//---------------------------------------------------

Function Short_Year(StrDate:String):Integer;
begin
Result:=strtoint(copy(StrDate,3,2));
end;
//---------------------------------------------------

Function Str_Short_Year(StrDate:String):String;
begin
Result:=copy(StrDate,3,2);
end;
//---------------------------------------------------

Function Mon(StrDate:String):Integer;
begin
Result:=strtoint(copy(StrDate,6,2));
end;
//---------------------------------------------------

Function Str_Mon(StrDate:String):String;
begin
Result:=copy(StrDate,6,2);
end;
//---------------------------------------------------

Function Day(StrDate:String):Integer;
begin
Result:=strtoint(copy(StrDate,9,2));
end;
//---------------------------------------------------

Function Str_Day(StrDate:String):String;
begin
Result:=copy(StrDate,9,2);
end;

//---------------------------------------------

Function DayFromFirst(Long_Date:String):Integer;
Var
   M,D: Byte;
   Res: Integer;
begin
M:=mon(Long_Date);
D:=Day(Long_Date);

if M<= 6 then
   begin//mon<=6
      Res:=(M-1)*31+D;
   end
Else If ((M>6) And (M<12))then
       begin// 6<mon<12
          Res:=6*31+(M-6-1)*30+D;
       end
    Else
       Begin//mon = 12
          Res:=6*31+5*30+D;
       End;
Result:=Res;
end;

//---------------------------------------------------

Function Difference(BiginDate,EndDate:String):Integer;
////*******************************************////
////*******************************************////
{
   Return Difrence Between two Date If Two Date IS Valid And Date2 >= Date1
   Return -3 If Date 2 Is InValid     //First Priority
   Return -2 if Date 1 Is Invalid     //Second PrioRity
   Return -1 If Date 2 < Date 1       //Third Priority
}
////*******************************************////
////*******************************************////
Var
   First,Sec,Res,y: Integer;
begin

First:=DayFromFirst(BiginDate);
Sec:=DayFromFirst(EndDate);

y:=Long_Year(EndDate)-Long_Year(BiginDate);

Res:=Sec-First+(y*365);

If Res<0 then
   Begin
      Showmessage(' «—ÌŒ «Ê· »«Ìœ ﬂÊçﬂ — «“  «—ÌŒ œÊ„ »«‘œ');
      Res:=-1;
   end;

If IsValidDate(BiginDate) <> 0 then
   begin
      ShowMessage(' «—ÌŒ «Ê· „⁄ »— ‰Ì” ');
      Res:=-2;
   end;

If IsValidDate(EndDate) <> 0 then
   begin
      ShowMessage(' «—ÌŒ œÊ„ „⁄ »— ‰Ì” ');
      Res:=-3;
   end;

Result:=Res;
end;

//------------------------------------------------

Function IsNumber(S:String):Boolean;
Var
   i,Cou:Integer;
   Key,Sw: Boolean;
   Temp: String[255];
Begin
Temp:=S;
Key:=True;
Cou:=Length(Temp);

While((Cou>0) and (key)) do
   Begin
      Sw:=False;
      For i:= 0 To 9 Do
         Begin
            If Temp[Cou] = IntToStr(i) then
               Begin
                  Sw:=True;
                  Break;
               End;
         End;
      Cou:=Cou-1;
      If Not Sw Then
         Begin
            Key:=False;
            Break;
         End;
   End;

Result:=Key;
End;

//-----------------------------------------------------------
Function IsValidDate(StrDate:String):Byte;
////*******************************************////
////*******************************************////
{
   Return 0 Is Valid Date
   Return 1 If Unvalid Year    //First Priority
   Return 2 if Unvalid Mon     //Second PrioRity
   Return 3 If UnValid Day     //Third Priority
}
////*******************************************////
////*******************************************////
Var
   Res: Byte;
   y: String[4];
   m,d: String[2];
Begin
Res:=0;

Y:=Str_Long_Year(StrDate);
M:=Str_Mon(StrDate);
D:=Str_Day(StrDate);

if Not IsNumber(Y) then
   Begin
      Res:=1;
   End
Else  If ((Not IsNumber(M)) Or (((StrToInt(M)<1) Or (StrToInt(M)>12))))then
         Begin
            Res:=2;
         End
      Else   If Not IsNumber(D) Then
                Begin
                   Res:=3;
                End
             Else
                Begin
                   If ((StrToInt(M)<7) and (StrToInt(D)>31)) then
                       Begin
                          Res:=3;
                       End;
                   If ((StrToInt(M)>6) And (StrToInt(M)<=12) And (StrToInt(D)>30))then
                      Begin
                           Res:=3;
                      End;
                   //mon 12 is bedon control
                End;


Result:=Res;
End;

//------------------------------------------------
Function IsValidDateMsg(StrDate:String):String;
Var
   Ans: Byte;
   Res:string;
Begin
Ans:= IsValidDate(StrDate);

Res:='DateIsValid';

if Ans=1 then
   begin
      Res:='”«· „⁄ »— ‰Ì” ';
   end;
//***********
If Ans=2 then
   begin
      Res:=' „«Â „⁄ »— ‰Ì” ';
   end;
//***********
If Ans=3 then
   begin
      Res:='—Ê“  „⁄ »— ‰Ì” ';
   end;
//***********

Result:=Res;
End;

//-------------------------------------------------
Function Mon2Str(Mon:byte):string;
var
   res:string;
begin
case Mon of
   1: res:='›—Ê—œÌ‰';
   2: res:='«—œÌ»Â‘ ';
   3: res:='Œ—œ«œ';
   4: res:=' Ì—';
   5: res:='„—œ«œ';
   6: res:='‘Â—ÌÊ—';
   7: res:='„Â—';
   8: res:='¬»«‰';
   9: res:='¬–—';
   10:res:='œÌ';
   11:res:='»Â„‰';
   12:res:='«”›‰œ';
else
end;//of case
Result:=res;
end;
//-------------------------------------------------
end.
