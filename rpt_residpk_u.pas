unit rpt_residpk_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_residpk_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    Label1: TLabel;
    txtsherkat: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    sherkat: TComboBox;
    rpt_residpk: TfrxReport;
    rpt_residpk_db: TfrxDBDataset;
    main_aq: TADOQuery;
    sherkat_aq: TADOQuery;
    procedure exittClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatEnter(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_residpk_f: Trpt_residpk_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_residpk_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_residpk_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_residpk_f.FormShow(Sender: TObject);
begin
sherkat.SetFocus;
end;

procedure Trpt_residpk_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_residpk_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_residpk_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_residpk_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_residpk_f.amalClick(Sender: TObject);
var
  str  : array [1..3,1..2] of string;
  sss  : string;
  c , i : integer;
begin
if sherkat.Text<>''
  then begin
         str[1,2]:='%' + sherkat.text + '%';
         str[1,1]:='sherkat LIKE ';
        end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[2,2]:=tarikh1.EditText;
       str[2,1]:='tarikh>=';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh2.EditText;
       str[3,1]:='tarikh<=';
      end;
c:=1; sss:='';
for i:=1 to 3 do begin
                   if str[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                              sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
rpt_residpk.LoadFromFile('residpk.fr3');
main_aq.Close;
main_aq.SQL.Clear;
main_aq.SQL.Add('select * from havaleh_check ');
main_aq.SQL.Add(sss);
main_aq.SQL.Add(' order by residpk , tarikh ');
main_aq.Open;
//------------------------------------------
tarikh_rpt :=rpt_residpk.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if main_aq.RecordCount=0
  then
   Application.MessageBox('—”Ìœ Å—œ«Œ  ò—«ÌÂ «Ì À»  ‰‘œÂ «” ',' ÊÃÂ',0)
    else
      rpt_residpk.ShowReport;
sherkat.SetFocus;
end;

procedure Trpt_residpk_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Trpt_residpk_f.sherkatEnter(Sender: TObject);
var
  i:integer;
begin
sherkat.Clear;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from sherkat ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['sherkat']);
        sherkat_aq.Next;
       end;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from hesab ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['shomareh']);
        sherkat_aq.Next;
       end;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from kamion ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['mashin']);
        sherkat_aq.Next;
       end;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from person ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['name']);
        sherkat_aq.Next;
       end;
end;

procedure Trpt_residpk_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

end.
