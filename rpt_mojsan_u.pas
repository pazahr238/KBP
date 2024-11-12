unit rpt_mojsan_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_mojsan_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    rpt_etebar_sandoogh: TfrxReport;
    etebar_sandoogh_db: TfrxDBDataset;
    etebar_sandoogh_aq: TADOQuery;
    hazineh_db: TfrxDBDataset;
    hazineh_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
    procedure exittClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_mojsan_f: Trpt_mojsan_f;
  tarikh_rpt : TfrxMemoView; 

implementation
uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_mojsan_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_mojsan_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_mojsan_f.FormShow(Sender: TObject);
begin
tarikh1.SetFocus;
end;

procedure Trpt_mojsan_f.amalClick(Sender: TObject);
var
  str , str2 : array [1..2,1..2] of string;
  sss , sss2 , datetext , strtarikh : string;
  c , i : integer;
  mandeh , m1 , m2 , m11 , m22 : variant;
begin
if main_f.sal.Text='85' then strtarikh:='1385/05/01'
    else strtarikh:='13' + main_f.sal.Text + '/01/01';
if tarikh1.EditText<>'____/__/__'
 then begin
       str[1,2]:=tarikh1.EditText;
       str[1,1]:='tarikh>=';
       str2[1,2]:=strtarikh;
       str2[1,1]:='tarikh>=';
       str2[2,2]:=tarikh1.Text;
       str2[2,1]:='tarikh<';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[2,2]:=tarikh2.EditText;
       str[2,1]:='tarikh<=';
      end;
c:=1; sss:='';
for i:=1 to 2 do begin
                   if str[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                              sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss2:='';
for i:=1 to 2 do begin
                   if str2[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss2:=sss2 + ' where (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')'
                                                          else
                                                              sss2:=sss2+ ' and (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;

rpt_etebar_sandoogh.LoadFromFile('Etebar_Sandoogh.fr3');

///////////////////////////////////////////// Mohasebeye Mandeh //////////////////////////////
if (tarikh1.EditText>strtarikh) and (tarikh1.EditText<>'____/__/__')
    then
      begin
hazineh_aq.Close;
hazineh_aq.SQL.Clear;
hazineh_aq.SQL.Add('Select Sum(mablagh) - Sum(mablagh2) AS man From (');

hazineh_aq.SQL.Add('SELECT     sanad, tarikh, bank AS name, mablagh AS mablagh2, 0 AS mablagh, chek AS babat FROM   Tankhah_vrd ');
hazineh_aq.SQL.Add(sss2);
hazineh_aq.SQL.Add(' UNION ');
hazineh_aq.SQL.Add('SELECT     sanad, tarikh, name, 0 AS mablagh2, mablagh, babat FROM  Hazineh ');
hazineh_aq.SQL.Add(sss2);

hazineh_aq.SQL.Add(') Hazineh ');

hazineh_aq.Open;

if VarIsNull(hazineh_aq['man']) then mandeh:=0
    else mandeh:=hazineh_aq['man'];
datetext:='„«‰œÂ «“  «—ÌŒ ' + strtarikh + '  «  «—ÌŒ ' + tarikh1.text;
       end;

m1:=0;m2:=0;  m11:=0;m22:=0;
if mandeh>0 then m1:=mandeh
    else m2:=-mandeh;
hazineh_aq.Close;
hazineh_aq.SQL.Clear;
hazineh_aq.SQL.Add('Select sandoogh from etebar ');
hazineh_aq.Open;
hazineh_aq.First;
m11:=0;m22:=0;
if hazineh_aq['sandoogh']<0 then m11:=-hazineh_aq['sandoogh']
    else m22:=hazineh_aq['sandoogh'];
///////////////////////////////////////////// End of Mohasebeye Mandeh ///////////////////////

etebar_sandoogh_aq.Close;
hazineh_aq.Close;
hazineh_aq.SQL.Clear;
hazineh_aq.SQL.Add('SELECT   0 as sanad , ' + chr(39) + chr(39) + ' as tarikh , ' + chr(39) + chr(39) + ' as name , ' + varToStr(m1) + ' as mablagh , ' + varToStr(m2) + ' as mablagh2 , ' + chr(39) + datetext + chr(39) + ' as babat FROM Hesab ');
hazineh_aq.SQL.Add(' UNION ');
hazineh_aq.SQL.Add('SELECT   0 as sanad , ' + chr(39) + chr(39) + ' as tarikh , ' + chr(39) + chr(39) + ' as name , ' + varToStr(m11) + ' as mablagh , ' + varToStr(m22) + ' as mablagh2  , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as babat FROM Hesab ');
hazineh_aq.SQL.Add(' UNION ');
hazineh_aq.SQL.Add('SELECT     sanad, tarikh, bank AS name, mablagh AS mablagh2, 0 AS mablagh, chek AS babat FROM   Tankhah_vrd ');
hazineh_aq.SQL.Add(sss);
hazineh_aq.SQL.Add(' UNION ');
hazineh_aq.SQL.Add('(SELECT     sanad, tarikh, name, 0 AS mablagh2, mablagh, babat FROM  Hazineh ');
hazineh_aq.SQL.Add(sss);
hazineh_aq.SQL.Add(') order by tarikh');

hazineh_aq.Open;
hazineh_aq.First;
etebar_sandoogh_aq.Open;
//------------------------------------------------------
tarikh_rpt :=rpt_etebar_sandoogh.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if (etebar_sandoogh_aq.RecordCount=0) or (etebar_sandoogh_aq['sandoogh']=0)
    then
      Application.MessageBox('„ÊÃÊœÌ «Ê·ÌÂ ’‰œÊﬁ ’›— «”  . ·ÿ›« «“ „‰ÊÌ «ÿ·«⁄«  Å«ÌÂ „ﬁœ«— «Ê·ÌÂ ’‰œÊﬁ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0)
    else
  rpt_etebar_sandoogh.ShowReport;
end;

procedure Trpt_mojsan_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_mojsan_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
//ShowMessage(IntToStr(key));
end;

procedure Trpt_mojsan_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_mojsan_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_mojsan_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
