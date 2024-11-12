unit rpt_hazineh_sherkat_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, frxClass, frxDBSet, Buttons, Mask, Grids,
  DBGrids, ExtCtrls;

type
  Trpt_hazineh_sherkat_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtsharh: TLabel;
    sharh: TComboBox;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    rpt_hazineh_sherkat: TfrxReport;
    hazineh_sherkat_db: TfrxDBDataset;
    hazineh_sherkat_aq: TADOQuery;
    exitt: TBitBtn;
    amal: TBitBtn;
    sharh_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_hazineh_sherkat_f: Trpt_hazineh_sherkat_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_hazineh_sherkat_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hazineh_sherkat_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hazineh_sherkat_f.FormShow(Sender: TObject);
begin
sharh.SetFocus;
end;

procedure Trpt_hazineh_sherkat_f.sharhKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_hazineh_sherkat_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hazineh_sherkat_f.tarikh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hazineh_sherkat_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hazineh_sherkat_f.tarikh2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hazineh_sherkat_f.amalClick(Sender: TObject);
var
  str , str2 : array [1..4,1..2] of string;
  sss , sss2 : string;
  c , i : integer;
begin
str[1,2]:='Â“Ì‰Â Â«Ì ‘—ﬂ ';
str[1,1]:='name=';
str2[1,2]:='Â“Ì‰Â Â«Ì ‘—ò ';
str2[1,1]:='mashin=';

if (sharh.Text<>'') then
                         begin
                            str[2,2]:= '%' + sharh.text + '%' ;
                            str[2,1]:='babat LIKE ';
                            str2[2,2]:='%' + sharh.text + '%';
                            str2[2,1]:='sharh LIKE ';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>=';
       str2[3,2]:=tarikh1.EditText;
       str2[3,1]:='tarikh>=';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<=';
       str2[4,2]:=tarikh2.EditText;
       str2[4,1]:='tarikh<=';
      end;
c:=1; sss:='';
for i:=1 to 4 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                               else sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss2:='';
for i:=1 to 4 do begin
                   if str2[i,2]='' then continue else begin
                                                     if c=1 then sss2:=sss2 + ' where (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')'
                                                               else sss2:=sss2 + ' and (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;

rpt_hazineh_sherkat.LoadFromFile('hazineh_sherkat.fr3');
//-------------------------------------
hazineh_sherkat_aq.Close;
hazineh_sherkat_aq.SQL.Clear;
hazineh_sherkat_aq.SQL.Add('SELECT     sanad, tarikh, sharh, mablagh AS bedehkar , az AS mahal, chek AS p2, hesab AS p3, mashin as name FROM         hes_melk ');
hazineh_sherkat_aq.SQL.Add(sss2);
hazineh_sherkat_aq.SQL.Add(' UNION ');

hazineh_sherkat_aq.SQL.Add('(SELECT     sanad, tarikh, babat as sharh, mablagh AS bedehkar , ' + chr(39) + '’‰œÊﬁ' + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3, name FROM         hazineh ');
//hazineh_sherkat_aq.SQL.Add(' where (name=' + chr(39) + 'Â“Ì‰Â Â«Ì ‘—ﬂ ' + chr(39)+ ') and (babat=' + chr(39) + 'ﬁ»÷  ·›‰' + chr(39) + ')');
hazineh_sherkat_aq.SQL.Add(sss);
hazineh_sherkat_aq.SQL.Add(') order by tarikh');

hazineh_sherkat_aq.Open;
//-------------------------------------
tarikh_rpt :=rpt_hazineh_sherkat.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if hazineh_sherkat_aq.RecordCount=0
  then
    Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP)
     else
      rpt_hazineh_sherkat.ShowReport;
sharh.SetFocus;
end;

procedure Trpt_hazineh_sherkat_f.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Trpt_hazineh_sherkat_f.sharhEnter(Sender: TObject);
var
  i : integer;
begin
      sharh.Clear;
      sharh_aq.Close;
      sharh_aq.SQL.Clear;
      sharh_aq.SQL.Add('Select * From hazineh_sherkat ');
      sharh_aq.Open;
      sharh_aq.First;
      for i:=1 to sharh_aq.RecordCount do
            begin
               sharh.Items.Add(sharh_aq['name']);
               sharh_aq.Next;
             end;
end;

end.
