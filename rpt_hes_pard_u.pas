unit rpt_hes_pard_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons, Mask;

type
  Trpt_hes_pard_f = class(TForm)
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    rpt_hes_pard_db: TfrxDBDataset;
    main_aq: TADOQuery;
    mashin: TEdit;
    txtmashin: TLabel;
    mashin_aq: TADOQuery;
    rpt_hes_pard: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_hes_pard_f: Trpt_hes_pard_f;
  tarikh_rpt : TfrxMemoView; 

implementation

uses main_u , ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_hes_pard_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hes_pard_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_hes_pard_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hes_pard_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hes_pard_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hes_pard_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hes_pard_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hes_pard_f.amalClick(Sender: TObject);
var
  str  : array [1..3,1..2] of string;
  sss  : string;
  c , i : integer;
begin
if (mashin.Text<>'') then
                         begin
                            str[1,2]:='%' + mashin.text + '%';
                            str[1,1]:='mashin LIKE ';
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
rpt_hes_pard.LoadFromFile('hes_pard.fr3');
main_aq.Close;
main_aq.SQL.Clear;
main_aq.SQL.Add('select * from hes_melk ');
main_aq.SQL.Add(sss);
main_aq.SQL.Add(' order by sanad , tarikh');
main_aq.Open;

//--------------------------------------------------------
tarikh_rpt :=rpt_hes_pard.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if main_aq.RecordCount=0
  then
   Application.MessageBox('”‰œ Å—œ«Œ Ì «Ì À»  ‰‘œÂ «” ',' ÊÃÂ',0)
    else
      rpt_hes_pard.ShowReport;
tarikh1.SetFocus;
end;

procedure Trpt_hes_pard_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_hes_pard_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
