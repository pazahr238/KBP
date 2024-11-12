unit rpt_anbarv_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_anbarv_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtkala: TLabel;
    txtdaste_kala: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    daste_kala: TComboBox;
    rpt_anbarv_db: TfrxDBDataset;
    main_aq: TADOQuery;
    daste_kala_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
    kala: TComboBox;
    kala_aq: TADOQuery;
    rpt_anbarv: TfrxReport;
    procedure exittClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure daste_kalaEnter(Sender: TObject);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaEnter(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_anbarv_f: Trpt_anbarv_f;
  kala_rpt , tarikh_rpt : TfrxMemoView;

implementation
  uses main_u , date_assis , ras , ras2;
{$R *.dfm}

procedure Trpt_anbarv_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_anbarv_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_anbarv_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Trpt_anbarv_f.FormShow(Sender: TObject);
begin
daste_kala.SetFocus
end;

procedure Trpt_anbarv_f.daste_kalaEnter(Sender: TObject);
var
  i : integer;
begin
daste_kala.Clear;
daste_kala_aq.Close;
daste_kala_aq.SQL.Clear;
daste_kala_aq.SQL.Add('select * from daste_kala ');
daste_kala_aq.Open;
for i:=1 to daste_kala_aq.RecordCount do
      begin
        daste_kala.Items.Add(daste_kala_aq['name']);
        daste_kala_aq.Next;
       end;
end;

procedure Trpt_anbarv_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kala.SetFocus;
end;

procedure Trpt_anbarv_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_anbarv_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_anbarv_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_anbarv_f.kalaEnter(Sender: TObject);
var
  i : integer;
begin
kala.Clear;
kala_aq.Close;
kala_aq.SQL.Clear;
kala_aq.SQL.Add('select * from anbarv ');
kala_aq.SQL.Add('where daste_kala=' + chr(39) + daste_kala.Text + chr(39));
kala_aq.Open;
for i:=1 to kala_aq.RecordCount do
      begin
        kala.Items.Add(kala_aq['kala']);
        kala_aq.Next;
       end;
end;

procedure Trpt_anbarv_f.amalClick(Sender: TObject);
var
  str : array [1..4,1..2] of string;
  c , i : integer;
  sss : string;
begin
if (daste_kala.Text<>'') then
                         begin
                            str[1,2]:=daste_kala.Text;
                            str[1,1]:='daste_kala';
                          end;
if (kala.Text<>'') then
                         begin
                            str[2,2]:=kala.Text;
                            str[2,1]:='kala';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<';
      end;

c:=1; sss:='';
for i:=1 to 4 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then
                                                             sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                              sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
rpt_anbarv.LoadFromFile('anbarv.fr3');
main_aq.Close;
main_aq.SQL.Clear;
main_aq.SQL.Add('SELECT * FROM AnbarV ');
main_aq.SQL.Add(sss);
main_aq.Open;
//-----------------------------------------------------------------------------------
tarikh_rpt :=rpt_anbarv.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

kala_rpt :=rpt_anbarv.FindObject('Memo_kala') as TfrxMemoView;
if kala.Text='' then kala_rpt.Text:='( ﬂ·ÌÂ ﬂ«·«Â«Ì „ÊÃÊœ )'
    else kala_rpt.Text := kala.Text;

if main_aq.RecordCount=0
  then begin
          Application.MessageBox('ﬂ«·«ÌÌ œ— «‰»«— ÊÃÊœ ‰œ«—œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          daste_kala.Text:='';
          daste_kala.SetFocus;
        end
         else
          rpt_anbarv.ShowReport;
end;

procedure Trpt_anbarv_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_anbarv_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

end.
