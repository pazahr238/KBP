unit rpt_anbarkh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_anbarkh_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtkala: TLabel;
    txtdaste_kala: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    daste_kala: TComboBox;
    kala: TComboBox;
    amal: TBitBtn;
    exitt: TBitBtn;
    rpt_anbarkh_db: TfrxDBDataset;
    main_aq: TADOQuery;
    daste_kala_aq: TADOQuery;
    kala_aq: TADOQuery;
    mashin_aq: TADOQuery;
    mashin: TEdit;
    txtmashin: TLabel;
    rpt_anbarkh: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure daste_kalaEnter(Sender: TObject);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaEnter(Sender: TObject);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mashinExit(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_anbarkh_f: Trpt_anbarkh_f;
  kala_rpt , tarikh_rpt : TfrxMemoView;

implementation
    uses main_u , date_assis , ras , ras2 ;
{$R *.dfm}

procedure Trpt_anbarkh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_anbarkh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_anbarkh_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_anbarkh_f.daste_kalaEnter(Sender: TObject);
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

procedure Trpt_anbarkh_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kala.SetFocus;
end;

procedure Trpt_anbarkh_f.kalaEnter(Sender: TObject);
var
  i : integer;
begin
kala.Clear;
kala_aq.Close;
kala_aq.SQL.Clear;
kala_aq.SQL.Add('select * from anbarkh ');
kala_aq.SQL.Add('where daste_kala=' + chr(39) + daste_kala.Text + chr(39));
kala_aq.Open;
for i:=1 to kala_aq.RecordCount do
      begin
        kala.Items.Add(kala_aq['kala']);
        kala_aq.Next;
       end;
end;

procedure Trpt_anbarkh_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_anbarkh_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_anbarkh_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_anbarkh_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_anbarkh_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_anbarkh_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) or (mashin.Text='')
                      then daste_kala.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Trpt_anbarkh_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then daste_kala.SetFocus;
end;

procedure Trpt_anbarkh_f.amalClick(Sender: TObject);
var
  str : array [1..5,1..2] of string;
  c , i : integer;
  sss : string;
begin
if (mashin.Text<>'') then
                         begin
                            str[1,2]:=mashin.Text;
                            str[1,1]:='kamion';
                          end;
if (daste_kala.Text<>'') then
                         begin
                            str[2,2]:=daste_kala.Text;
                            str[2,1]:='daste_kala';
                          end;
if (kala.Text<>'') then
                         begin
                            str[3,2]:=kala.Text;
                            str[3,1]:='kala';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh1.EditText;
       str[4,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[5,2]:=tarikh2.EditText;
       str[5,1]:='tarikh<';
      end;

c:=1; sss:='';
for i:=1 to 5 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then
                                                             sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                              sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
rpt_anbarkh.LoadFromFile('anbarkh.fr3');
main_aq.Close;
main_aq.SQL.Clear;
main_aq.SQL.Add('SELECT * FROM AnbarKH ');
main_aq.SQL.Add(sss);
main_aq.Open;
//-----------------------------------------------------------------------------------
tarikh_rpt :=rpt_anbarkh.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

kala_rpt :=rpt_anbarkh.FindObject('Memo_kala') as TfrxMemoView;
if kala.Text='' then kala_rpt.Text:='( ﬂ·ÌÂ ﬂ«·«Â«Ì „’—›Ì )'
    else kala_rpt.Text := kala.Text;

if main_aq.RecordCount=0
  then begin
          Application.MessageBox('ﬂ«·«ÌÌ »—«Ì „«‘Ì‰ „Ê—œ ‰Ÿ— «“ «‰»«— Œ«—Ã ‰‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          daste_kala.Text:='';
          daste_kala.SetFocus;
        end
         else
          rpt_anbarkh.ShowReport;
end;

end.
