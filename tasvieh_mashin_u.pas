unit tasvieh_mashin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, Grids, DBGrids, DBGrid_Edit, DB,
  ADODB, Mask, MonyEdit;

type
  Ttasvieh_mashin_f = class(TForm)
    Page_Tasvieh: TPageControl;
    Tab_Sandoogh: TTabSheet;
    Tab_Bank: TTabSheet;
    amal: TBitBtn;
    exitt: TBitBtn;
    txttarikh: TLabel;
    txtshomareh: TLabel;
    txtmablagh: TLabel;
    tarikh: TMaskEdit;
    person_aq: TADOQuery;
    person_ds: TDataSource;
    shomareh: TEdit;
    bank_ds: TDataSource;
    bank_aq: TADOQuery;
    bank: TDBGrid_Edit;
    txtbank: TLabel;
    name: TDBGrid_Edit;
    txtname: TLabel;
    tasvieh_aq: TADOQuery;
    name1: TDBGrid_Edit;
    txtname1: TLabel;
    txtbabat: TLabel;
    babat: TEdit;
    tarikh1: TMaskEdit;
    txttarikh1: TLabel;
    txtsanad: TLabel;
    sanad: TEdit;
    txtmablagh1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    mablagh: TMonyEdit;
    mablagh1: TMonyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bankEnter(Sender: TObject);
    procedure nameEnter(Sender: TObject);
    procedure bankDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure nameDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shomarehExit(Sender: TObject);
    procedure mablaghExit(Sender: TObject);
    procedure shomarehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure Page_TasviehChange(Sender: TObject);
    procedure name1Enter(Sender: TObject);
    procedure name1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure name1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure babatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure babatExit(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablagh1Exit(Sender: TObject);
    procedure mablagh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tasvieh_mashin_f: Ttasvieh_mashin_f;

implementation

uses main_u , rpt_hes_esti_u , rpt_hogh_melk_u , ras2 ;

{$R *.dfm}

procedure Ttasvieh_mashin_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Ttasvieh_mashin_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Ttasvieh_mashin_f.FormShow(Sender: TObject);
begin
mablagh.BiDiMode:=bdRightToLeft;
mablagh1.BiDiMode:=bdRightToLeft;

bank.Edit_Search.BiDiMode:=bdRightToLeft;
bank.Edit_Search.Ctl3D:=false;
name.Edit_Search.BiDiMode:=bdRightToLeft;
name.Edit_Search.Ctl3D:=False;
name1.Edit_Search.BiDiMode:=bdRightToLeft;
name1.Edit_Search.Ctl3D:=False;

name.Edit_Search.Text:=current_mashin;
mablagh.Text:=current_hazineh;
tarikh.EditText:=long_date_format;

name1.Edit_Search.Text:=current_mashin;
mablagh1.Text:=current_hazineh;
tarikh1.EditText:=long_date_format;
bank.Edit_Search.Left:=38;
Page_TasviehChange(tasvieh_mashin_f); //baraye ejraye setfocuse lazem dar controle avale har Tab page -----
end;

procedure Ttasvieh_mashin_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Ttasvieh_mashin_f.nameEnter(Sender: TObject);
begin
if not name.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Ttasvieh_mashin_f.bankDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
bank.Height:=55;
bank.Edit_Search.Left:=38;
end;

procedure Ttasvieh_mashin_f.nameDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
name.Height:=55;
end;

procedure Ttasvieh_mashin_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (Not name.Is_Find_Field)
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              name.Edit_Search.Clear;
                              name.Edit_Search.SetFocus;
                             end
                              else bank.Edit_Search.SetFocus;
                  end;
end;

procedure Ttasvieh_mashin_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (Not bank.Is_Find_Field)
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ »«‰ﬂ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              bank.Edit_Search.Clear;
                              bank.Edit_Search.SetFocus;
                             end
                              else tarikh.SetFocus;
                  end;
end;

procedure Ttasvieh_mashin_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Ttasvieh_mashin_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shomareh.SetFocus;
end;

procedure Ttasvieh_mashin_f.shomarehExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(shomareh.Text,num,e);
if (e<>0) or (shomareh.Text='') then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â çﬂ „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               shomareh.Clear;
               shomareh.SetFocus;
              end;
end;

procedure Ttasvieh_mashin_f.mablaghExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(mablagh.Value) ,num,e);
if (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „»·€ çﬂ  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh.Clear;
               mablagh.SetFocus;
              end;
end;

procedure Ttasvieh_mashin_f.shomarehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then  mablagh.SetFocus
end;

procedure Ttasvieh_mashin_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Ttasvieh_mashin_f.amalClick(Sender: TObject);
begin
if Tab_Bank.Showing then begin
                           tasvieh_aq.Close;
                           tasvieh_aq.SQL.Clear;
                           tasvieh_aq.SQL.Add('SELECT * FROM CHECKS ');
                           tasvieh_aq.SQL.Add('WHERE shomareh=:i0 ');
                           tasvieh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                           tasvieh_aq.Open;
                           if tasvieh_aq.RecordCount>0 then begin
                                                              Application.MessageBox('„‘Œ’«  çﬂ »« «Ì‰ ‘„«—Â ﬁ»·« À»  ‘œÂ «” . ·ÿ›« œﬁ  ‰„«ÌÌœ',' ÊÃÂ',0);
                                                              exit;
                                                             end;
                           tasvieh_aq.Close;
                           tasvieh_aq.SQL.Clear;
                           tasvieh_aq.SQL.Add('INSERT INTO CHECKS(shomareh,bank,shobeh,hesab,tarikh,mablagh,name) ');
                           tasvieh_aq.SQL.Add('VALUES (:i0,:i1,:i2,:i3,:i4,:i5,:i6) ');
                           tasvieh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                           tasvieh_aq.Parameters[1].Value:=bank.Edit_Search.Text;
                           tasvieh_aq.Parameters[2].Value:=bank_aq['shobeh'];
                           tasvieh_aq.Parameters[3].Value:=bank_aq['shomareh'];
                           tasvieh_aq.Parameters[4].Value:=tarikh.EditText;
                           tasvieh_aq.Parameters[5].Value:=mablagh.Value;
                           tasvieh_aq.Parameters[6].Value:=name.Return_Value;
                           tasvieh_aq.ExecSQL;
                          end;
if Tab_Sandoogh.Showing then begin
                           tasvieh_aq.Close;
                           tasvieh_aq.SQL.Clear;
                           tasvieh_aq.SQL.Add('SELECT * FROM HAZINEH ');
                           tasvieh_aq.SQL.Add('WHERE sanad=:i0 ');
                           tasvieh_aq.Parameters[0].Value:=strtoint(sanad.Text);
                           tasvieh_aq.Open;
                           if tasvieh_aq.RecordCount>0 then begin
                                                              Application.MessageBox('Å—œ«Œ  »« «Ì‰ ‘„«—Â ”‰œ ﬁ»·« «‰Ã«„ ‘œÂ «” . ·ÿ›« œﬁ  ‰„«ÌÌœ',' ÊÃÂ',0);
                                                              exit;
                                                             end;
                           tasvieh_aq.Close;
                           tasvieh_aq.SQL.Clear;
                           tasvieh_aq.SQL.Add('INSERT INTO HAZINEH(sanad,tarikh,mablagh,babat,name) ');
                           tasvieh_aq.SQL.Add('VALUES (:i0,:i1,:i2,:i3,:i4) ');                                             
                           tasvieh_aq.Parameters[0].Value:=strtoint(sanad.Text);
                           tasvieh_aq.Parameters[1].Value:=tarikh1.EditText;
                           tasvieh_aq.Parameters[2].Value:=mablagh1.Value;
                           tasvieh_aq.Parameters[3].Value:=babat.Text;
                           tasvieh_aq.Parameters[4].Value:=name1.Return_Value;
                           tasvieh_aq.ExecSQL;
                              end;
Application.MessageBox('⁄„·Ì«   ”ÊÌÂ Õ”«» «‰Ã«„ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
close;
end;

procedure Ttasvieh_mashin_f.Page_TasviehChange(Sender: TObject);
begin
if Tab_Bank.Showing then bank.Edit_Search.SetFocus;
if Tab_Sandoogh.Showing then babat.SetFocus;
end;

procedure Ttasvieh_mashin_f.name1Enter(Sender: TObject);
begin
if not name1.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Ttasvieh_mashin_f.name1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
name1.Height:=55;
end;

procedure Ttasvieh_mashin_f.name1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (Not name1.Is_Find_Field)
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              name1.Edit_Search.Clear;
                              name1.Edit_Search.SetFocus;
                             end
                              else babat.SetFocus;
                  end;
end;

procedure Ttasvieh_mashin_f.babatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Ttasvieh_mashin_f.babatExit(Sender: TObject);
begin
if babat.Text='' then begin
                        Application.MessageBox('„»·€ Å—œ«Œ Ì «“ ’‰œÊﬁ »«»  çÌ”  ø',' ÊÃÂ',0);
                        babat.SetFocus;
                       end;
end;

procedure Ttasvieh_mashin_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Ttasvieh_mashin_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sanad.SetFocus;
end;

procedure Ttasvieh_mashin_f.sanadExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(sanad.Text,num,e);
if (e<>0) or (sanad.Text='') then
              begin
               Application.MessageBox('·ÿ›« ‘„«—Â ”‰œ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
               sanad.Clear;
               sanad.SetFocus;
              end;
end;

procedure Ttasvieh_mashin_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh1.SetFocus;
end;

procedure Ttasvieh_mashin_f.mablagh1Exit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(mablagh1.Value) ,num,e);
if (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „Ì“«‰ „»·€ Å—œ«Œ Ì „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh1.Clear;
               mablagh1.SetFocus;
              end;
end;

procedure Ttasvieh_mashin_f.mablagh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Ttasvieh_mashin_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
