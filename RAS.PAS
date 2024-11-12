unit ras;

interface
uses
       sysutils,
       windows;
function   pad(instring:string ; len :integer):string;
function   lpad(instring:string ; len :integer):string;

function   leftstring(instring:string ; len :integer):string;
{function   rightstr(instring:string ; len :integer):string;}
function   replicate(ch:char ; len :integer):string;
function   space(len :integer):string;
function   empty(instring :string):boolean;
function   str2digit(instring :string):longint;
function   Ltrim(s:string):string;
function   Rtrim(s:string):string;
function   ALLtrim(s:string):string;
function medit2date(s:string):string;
function date2medit(s:string):string;
implementation

function   pad(instring:string ;len :integer):string;
begin
     result:=format('%s',[len,instring]);
end;

function   lpad(instring:string ; len :integer):string;
begin
     result:=format('%s',[len,instring]);
end;

function   leftstring(instring:string ; len :integer):string;
begin
     result:=copy(instring,1,len);
end;

function  rightstr(instring:string ;  len :integer):string;
begin
     result:=copy(instring,succ(length(instring))-len,len);
end;

function   replicate(ch:char ; len :integer):string;
begin
      setlength(result,len);
      fillchar(result[1],len,ch);
end;

function   space(len :integer):string;
begin
    replicate(' ',len);
end;

function   empty(instring :string):boolean;
begin
  result:=((length(instring))=0)or(trim(instring)='')
end;
function   str2digit(instring :string):longint;
var
 i:word;
begin
 for i:=1 to (length(instring)) do
    if  not(instring[i] in ['0'..'9']) then
         break;
 result:=strtoint(leftstring(instring,i-1))
end;
function Ltrim(s:string):string;
begin
  while s[1]=' ' do
      delete(s,1,1);
  result:=s;
 end;
function Rtrim(s:string):string;
begin
  while s[length(s)]=' ' do
     delete(s,length(s),1);
  result:=s;
 end;
function ALLtrim(s:string):string;
begin
  LTrim(s);
  Rtrim(S);
end;
function medit2date(s:string):string;
begin
 result:=copy(s,1,2)+'/'+copy(s,3,2)+'/'+copy(s,5,2);
end;


function date2medit(s:string):string;
begin
 result:=copy(s,1,2)+copy(s,4,2)+copy(s,7,2);    
end;
end.
