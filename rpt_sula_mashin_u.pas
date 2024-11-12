unit rpt_sula_mashin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, Buttons, Mask, DB, ADODB, Grids,
  DBGrids, DBGrid_Edit;

type
  Trpt_sula_mashin_f = class(TForm)
    mashin_aq: TADOQuery;
    tarikh2: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    tarikh1: TMaskEdit;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    sula_mashin_aq: TADOQuery;
    Sula_Mashin_db: TfrxDBDataset;
    txtmashin: TLabel;
    sharh: TEdit;
    txtsharh: TLabel;
    mashin: TEdit;
    rpt_sula_mashin: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mashinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_sula_mashin_f: Trpt_sula_mashin_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_sula_mashin_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_sula_mashin_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_sula_mashin_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then sharh.SetFocus;
end;

procedure Trpt_sula_mashin_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_sula_mashin_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_sula_mashin_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_sula_mashin_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_sula_mashin_f.amalClick(Sender: TObject);
var
  str : array [1..4,1..2] of string;
  sss : string;
  c , i : integer;
begin
if (mashin.Text<>'') then
                          begin
                            str[1,2]:=mashin.Text;
                            str[1,1]:='mashin=';
                          end;

if sharh.Text<>''then begin
                        str[2,2]:='%' + sharh.Text + '%';
                        str[2,1]:='sharh LIKE ';
                       end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>=';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<=';
      end;
c:=1; sss:='';
for i:=1 to 4 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then  sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                          else sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')' ;
                                                     c:=c+1;
                                                    end;
                  end;
rpt_sula_mashin.LoadFromFile('sula_mashin.fr3');
//-------------------------------------
sula_mashin_aq.Close;
sula_mashin_aq.SQL.Clear;
sula_mashin_aq.SQL.Add('SELECT * From Sula_Mashin ' + sss + ' Order By Tarikh');
sula_mashin_aq.Open;
//-----------------------------------------------
tarikh_rpt :=rpt_sula_mashin.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if sula_mashin_aq.RecordCount=0
  then
   Application.MessageBox('›«ﬂ Ê—Ì ÃÂ  ‰„«Ì‘ ÅÌœ« ‰‘œ',' ÊÃÂ',0)
    else
      rpt_sula_mashin.ShowReport;
mashin.Text;

end;

procedure Trpt_sula_mashin_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_sula_mashin_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_sula_mashin_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) or (mashin.Text='')
                      then sharh.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Trpt_sula_mashin_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
