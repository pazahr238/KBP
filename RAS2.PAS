unit RAS2;

interface
uses sysutils,ras;
type
   fdate=record
         year:word;
         mon :byte;
         day :byte;
   end;
   Function Short_Year:Integer;
   Function long_date_format:string;
   Function Long_year:integer;
   Function mon:integer;
   Function day:integer;
   function nowstr:string;
   function now2fdat:fdate;
   function date2text(d:fdate):string;
   function date2day(d:fdate):longint;
   function M_kab(const year:word):word;
   function SH_kab(const year :word):word;
   function ME2SH(D:FDATE):FDATE;
   function str2date(str:string):fdate;
   function Mon_day(const mm : Byte ; yy :word):byte;
   function Day_year(D:fdate;sta:boolean):word;
   function shdofw(d:fdate):byte;
   function mon_str(mm :byte):string;
   function shdofwstr(d :fdate):string;
   function date2str(d:fdate):string;
   function defdates( d1,d2 :fdate):longint;
   function datetest(d:fdate):boolean;
   
implementation

CONST
   ARDMON: array[1..96] of byte =(20,19,19,19,20,20,21,21,21,21,20,20,
                                  19,18,20,20,21,21,22,22,22,22,21,21,
                                  20,19,20,20,21,21,22,22,22,22,21,21,
                                  20,19,20,20,21,21,22,22,22,22,21,21,
                                  11,12,11,13,12,12,11,11,11,10,11,11,
                                  12,13,11,12,11,11,10,10,10, 9,10,10,
                                  11,12,10,12,11,11,10,10,10, 9,10,10,
                                  11,12,11,12,11,11,10,10,10, 9,10,10);

{**********************************************}
function M_kab(const year:word):word;
begin
    if (year mod 100)=0 then
       if  (year mod 4)=0 then
             M_kab:=366
       else
             M_kab:=365
    else
         if  (year mod 4)=0 then
             M_kab:=366
         else
             M_kab:=365
end;
{**********************************************}
function SH_kab(const year :word):word;
begin
if year=(((year + 16)div 33 )* 33 - 15) then
   Sh_kab:=365
else
   if (((year-((year + 15)div 33)-17)) mod 4)=0 then
       Sh_kab:=366
   else
       Sh_kab:=365
end;
{**********************************************}
function Mon_day(const mm : Byte ; yy :word):byte;
begin
if mm <7 then
    Mon_day:=31
else
    if mm < 12 then
         Mon_day:=30
     else
         Mon_day:=(SH_kab(yy)- 336);
end;
{**********************************************}
function Day_year(D:fdate;sta:boolean):word;
var
  n :word;
begin
  if d.mon <7 then
      n:=(d.mon -1)*31+d.day
  else
      n:=186+(d.mon -7)*30+d.day;
  if sta then
      Day_year:=n
  else
      Day_year:=SH_kab(d.year)-n;
end;
{**********************************************}
function defdates( d1,d2 :fdate):longint;
var
  i      :word;
  temp   :fdate;
  day    :longint;
  test   :boolean;
begin
 day:=0;
 test:=false;
 if  ((d1.year=d2.year)and (d1.mon=d2.mon)and(d1.day=d2.day)) then
   defdates:=0
 else
  begin
   if ((d1.year <d2.year)or((d1.year=d2.year) and (d1.mon<d2.mon))or ((d1.year=d2.year) and (d1.mon=d2.mon)and (d1.day < d2.day))) then
    begin
      temp:=d1;
      d1:=d2;
      d2:=temp;
      test:=true;
    end;
   if d1.day < d2.day then
    begin
     if d1.mon=1 then
       begin
          d1.mon:=13;
          dec(d1.year);
       end;
     dec(d1.mon);
     day:=mon_day(d1.mon,d1.year);
    end;
    day:=day+d1.day-d2.day;
    if d1.mon <d2.mon  then
       for i:=d1.mon to d2.mon-1 do
           day:=day-mon_day(i,d1.year)
    else if d1.mon >d2.mon then
        for i:=d2.mon to d1.mon-1 do
           day:=day+mon_day(i,d1.year);
    if d2.year <d1.year then
      for i:=d2.year to d1.year-1 do
        day:=day+sh_kab(i);
   if test then
        defdates:=day* (-1);
  end;{else}
end;
{**********************************************}

{**********************************************}
function shdofw(d:fdate):byte;
var
 day  :longint;
begin
    day:=date2day(d);

    shdofw:=day mod 7;
end;
{**********************************************}
function mon_str(mm :byte):string;
begin
 case mm of
  1:  mon_str:='ÝÑæÑÏíä';
  2:  mon_str:='ÇÑÏíÈåÔÊ';
  3:  mon_str:='ÎÜÜÑÏÇÏ';
  4:  mon_str:='ÊÜÜíÜÜÜÑ';
  5:  mon_str:='ãÜÜÑÏÇÏ';
  6:  mon_str:='ÔÜåÜÑíæÑ';
  7:  mon_str:='ãÜÜåÜÜÑ';
  8:  mon_str:='ÂÈÜÜÇä';
  9:  mon_str:='ÂÐÑ';
 10: mon_str:='Ïí';
 11:  mon_str:='ÈÜåÜãÜä';
 12:  mon_str:='ÇÓÜÝÜäÏ';
 end;
end;
{**********************************************}
function shdofwstr(d :fdate):string;
begin
case  shdofw(d)of
  0:    shdofwstr:='ÔÜäÜÈÜå';
  1:    shdofwstr:='íÜßÔÜäÈå';
  2:    shdofwstr:='ÏæÔäÈå';
  3:    shdofwstr:='Óå ÔäÈå';
  4:    shdofwstr:='åÇÑÔäÈå';
  5:    shdofwstr:='äÌ ÔäÈå';
  6:    shdofwstr:='ÌÜãÜÚÜå';
 end;
end;
{**********************************************}

function sumday( d:fdate ;dd:integer):fdate;
begin
while dd <0 do
 begin
    dec(d.year);
    dd:=dd+sh_kab(d.year);
 end;
if dd > day_year(d,false)   then
   begin
     dd:=dd- day_year(d,false);
     dec(dd);
     inc(d.year);
     d.mon:=1;
     d.day:=1;
   end;
while dd >= sh_kab(d.year) do
 begin
   dd:=dd-sh_kab(d.year);
   inc(d.year);
 end;
if dd > (mon_day(d.mon,d.year)-d.day) then
 begin
   dd:=dd - mon_day(d.mon,d.year)- d.day -1;
   inc(d.mon);
   d.day:=1;
 end;
while dd >= mon_day(d.mon,d.year) do
 begin
   dd:=dd - mon_day(d.mon,d.year);
   inc(d.mon)
 end;
 d.day:=d.day+dd;
 sumday:=d;
end;
{**********************************************}
function ME2SH(D:FDATE):FDATE;
 VAR
    SH_D :FDATE;
    I    :BYTE;
    LS   :BOOLEAN;

begin
 if m_kab(d.year) =366 then
   if sh_kab(d.year-622)=366 then
      i:=3
   else
      i:=0
 else
   if sh_kab(d.year-622)=366 then
      i:=1
   else
      i:=2;
 if d.day <= ardmon[i * 12 +d.mon] then
   begin
      sh_d.day:=ardmon[48+i*12+d.mon]+d.day-1;
      sh_d.mon:=(d.mon+9)mod 12;
      ls:=false;
   end
 else
   begin
      sh_d.day:=d.day-ardmon[i*12+d.mon];
      sh_d.mon:=(d.mon+10)mod 12;
      ls:=true;
   end;
 if ((d.mon >3) or ((d.mon=3) and ls)) then
    sh_d.year:=d.year-621
 else
    sh_d.year:=d.year-622;
 if sh_d.mon=0 then
   sh_d.mon:=12;
 me2sh:=sh_d;
end;
{**********************************************}
function str2date(str:string):fdate;
var
 stryear,strmon,strday :string[4];
 pos1,pos2,code        :integer;
begin
  pos1:=pos('/',str);
  if pos1>0 then
    begin
     stryear:=copy(str,1,pos1-1);
     val(stryear,result.year,code);
     if code=0 then
       begin
         str[pos1]:='-';
         pos2:=pos('/',str);
         if pos2>0 then
          begin
            strmon:=copy(str,pos1+1,pos2-pos1-1);
            strday:=copy(str,pos2+1,2);
            val(strmon,result.mon,code);
            if code=0 then
                 val(strday,result.day,code);
           end;
       end;
    end;
end;
{**********************************************}
function date2str( d:fdate):string;
var
   stryear,strmon,strday :string[4];
begin
   stryear:=inttostr(d.year);
   strmon :=inttostr(d.mon);
   strday :=inttostr(d.day);
   result:=concat(stryear,'/',strmon,'/',strday);
end;
{**********************************************}
function date2day(d:fdate):longint;
var
   day       :longint;
begin
 day:= d.year*366-(d.year mod 33);
 if d.mon <7 then
    day:=day+(d.mon-1)*31+d.day
 else
    day:=186+day+(d.mon-7)*30+d.day;
    date2day:=day;
end;
{**********************************************}
function date2text(d:fdate):string;
var
   stryear,strday :string[4];
  begin
   stryear:=inttostr(d.year);
   strday :=inttostr(d.day);
   result:=concat(shdofwstr(d),' ',strday,' ',mon_str(d.mon),' ',stryear);
end;
{**********************************************}
function datetest(d:fdate):boolean;
begin
 result:=false;
 if (d.mon >0)and(d.mon <13)and(d.day >0)and(d.day <= mon_day(d.mon,d.year)) then
       result:=true;
end;
{**********************************************}
function now2fdat:fdate;
var
   t1:fdate;
   dates :string[25];
    begin
    dates:=FormatDateTime('yyyy/mm/dd ', Now);
    //dates:=DateTimeToStr(Now);
    t1.year:=str2digit(copy(dates,1,4));
    t1.mon:=str2digit(copy(dates,6,2));
    t1.day:=str2digit(copy(dates ,9,2));
    result:=me2sh(t1);
end;
//********************************
function nowstr:string;
begin
result:=date2text(now2fdat);
end;
Function day:integer;
var   d:fdate;
begin
d:=now2fdat;
Result:=d.day;
end;
//**************************************
Function mon:integer;
var   d:fdate;
begin
d:=now2fdat;
Result :=d.mon;
end;
//*******************************
Function long_year:integer;
var   d:fdate;
begin
d:=now2fdat;
Result:=d.year;
end;
//*******************************
Function Short_Year:Integer;
var
    d:fdate;
    y:word;
Begin
d:=now2fdat;
y:=d.year;

while y>=100 do
   y:=y-100;

Result:=y;
end;
//***************************************
function long_date_format:string;
var
   d:fdate;
//   day,mon,year:integer;
   d_s,m_s:string;
//******************
begin
d:=now2fdat;

if d.day < 10then
   begin
     d_s:='0'+inttostr(d.day);
   end
else
   d_s:=inttostr(d.day);

if d.mon < 10then
   begin
     m_s:='0'+inttostr(d.mon);
   end
else
   m_s:=inttostr(d.mon);

Result:=inttostr(d.year)+'/'+m_s+'/'+d_s;
end;

end.
