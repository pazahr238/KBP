unit tankhah_vrd_search_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, DBGrid_Edit, Mask, Grids,
  DBGrids, StdCtrls, Buttons, MonyEdit, ExtCtrls;

type
  Ttankhah_vrd_search_f = class(TForm)
    sanad_aq: TADOQuery;
    bank_ds: TDataSource;
    bank_aq: TADOQuery;
    sanad_ds: TDataSource;
    Tankhah_vrd_db: TfrxDBDataset;
    rpt_tankhah_vrd: TfrxReport;
    txtmablagh: TLabel;
    txthesab: TLabel;
    txtsanad: TLabel;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    txtbank: TLabel;
    txtshobeh: TLabel;
    txtchek: TLabel;
    shobeh: TEdit;
    hesab: TEdit;
    sanad: TEdit;
    amal: TBitBtn;
    exitt: TBitBtn;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    rep_tankhah_vrd: TBitBtn;
    chek: TEdit;
    bank: TDBGrid_Edit;
    mablagh: TMonyEdit;
    Label1: TLabel;
    txttedad: TLabel;
    hazineh_list: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bankEnter(Sender: TObject);
    procedure bankDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shobehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure rep_tankhah_vrdClick(Sender: TObject);
    procedure chekKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tankhah_vrd_search_f: Ttankhah_vrd_search_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Ttankhah_vrd_search_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Ttankhah_vrd_search_f.FormShow(Sender: TObject);
begin
sanad.SetFocus;
bank.Edit_Search.Ctl3D:=false;
bank.Edit_Search.BiDiMode:=bdRightToLeft;
mablagh.BiDiMode:=bdRightToLeft;
end;

procedure Ttankhah_vrd_search_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Ttankhah_vrd_search_f.bankDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
bank.Height:=55;
end;

procedure Ttankhah_vrd_search_f.sanadKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Ttankhah_vrd_search_f.tarikh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Ttankhah_vrd_search_f.tarikh2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then mablagh.SetFocus;
end;

procedure Ttankhah_vrd_search_f.mablaghKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then hesab.SetFocus;
end;

procedure Ttankhah_vrd_search_f.hesabKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then bank.Edit_Search.SetFocus;
end;

procedure Ttankhah_vrd_search_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shobeh.SetFocus;
end;

procedure Ttankhah_vrd_search_f.shobehKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then chek.SetFocus;
end;

procedure Ttankhah_vrd_search_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Ttankhah_vrd_search_f.amalClick(Sender: TObject);
var
  str : array [1..8,1..2] of string;
  sss : string;
  c , i , e: integer;
  num : int64;
begin

val(sanad.Text,num,e);
if (sanad.Text<>'') and (sanad.text<>'0') and (e=0)
       then begin
              str[1,2]:=sanad.Text;
              str[1,1]:='sanad=';
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

val(mablagh.Text, num, e);
if (mablagh.Text<>'') and (mablagh.text<>'0') and (e=0)
                        then
                          begin
                            str[4,2]:= vartostr(mablagh.Value);
                            str[4,1]:='mablagh=';
                          end;

val(hesab.Text, num, e);
if (hesab.Text<>'') and (hesab.text<>'0') and (e=0)
                        then
                          begin
                            str[5,2]:= hesab.text;
                            str[5,1]:='hesab=';
                          end;

if (bank.Is_Find_Field) then
                          begin
                            str[6,2]:=bank.Edit_Search.text;
                            str[6,1]:='bank=';
                          end;

if shobeh.Text<>'' then begin
                          str[7,2]:=shobeh.Text;
                          str[7,1]:='shobeh=';
                        end;
if chek.Text<>'' then begin
                          str[8,2]:=chek.Text;
                          str[8,1]:='chek=';
                        end;
c:=1; sss:='';
for i:=1 to 8 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then begin
                                                                   if (str[i,1]='tarikh<=') or (str[i,1]='tarikh>=') or (str[i,1]='bank=') or (str[i,1]='shobeh=') or (str[i,1]='chek=') then
                                                                        sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                                    else
                                                                        sss:=sss + ' where (' + str[i,1] + str[i,2] + ')';
                                                                  end
                                                          else begin
                                                                   if (str[i,1]='tarikh<=') or (str[i,1]='tarikh>=') or (str[i,1]='bank=') or (str[i,1]='shobeh=') or (str[i,1]='chek=') then
                                                                        sss:=sss + ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                                   else
                                                                        sss:=sss + ' and (' + str[i,1] + str[i,2] + ')' ;
                                                                end;
                                                     c:=c+1;
                                                    end;
                  end;
sanad_aq.Close;
sanad_aq.SQL.Clear;
sanad_aq.SQL.Add('select * from Tankhah_vrd ' + sss + ' order by tarikh');
sanad_aq.Open;
txttedad.Caption:=IntToStr(sanad_aq.recordcount);
end;

procedure Ttankhah_vrd_search_f.tarikh1Exit(Sender: TObject);
begin
if (Not main_f.check_date(tarikh1.EditText)) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Ttankhah_vrd_search_f.tarikh2Exit(Sender: TObject);
begin
if (Not main_f.check_date(tarikh2.EditText)) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Ttankhah_vrd_search_f.rep_tankhah_vrdClick(Sender: TObject);
begin
rpt_tankhah_vrd.LoadFromFile('tankhah_vrd.fr3');
sanad_aq.Open;
//-----------------------------------------------------
tarikh_rpt :=rpt_tankhah_vrd.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if sanad_aq.RecordCount=0
  then Application.MessageBox('”‰œÌ »« „‘Œ’«  ŒÊ«” Â ‘œÂ ÅÌœ« ‰‘œ',' ÊÃÂ',0)
     else
      rpt_tankhah_vrd.ShowReport;
sanad_aq.Close;
end;

procedure Ttankhah_vrd_search_f.chekKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Ttankhah_vrd_search_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
