unit vam_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, DBGrid_Edit, Buttons, Mask,
  MonyEdit;

type
  Tvam_f = class(TForm)
    name: TDBGrid_Edit;
    person_ds: TDataSource;
    txtname: TLabel;
    babat: TEdit;
    txtbabat: TLabel;
    txtkol: TLabel;
    amal: TBitBtn;
    exitt: TBitBtn;
    txtghest: TLabel;
    tarikh: TMaskEdit;
    txttarikh: TLabel;
    person_aq: TADOQuery;
    vam_aq: TADOQuery;
    kol: TMonyEdit;
    ghest: TMonyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure nameDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure nameEnter(Sender: TObject);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure babatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kolExit(Sender: TObject);
    procedure ghestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ghestExit(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  vam_f: Tvam_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tvam_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tvam_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tvam_f.nameDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
name.Height:=55;
end;

procedure Tvam_f.FormShow(Sender: TObject);
begin
name.Edit_Search.SetFocus;
name.Edit_Search.Ctl3D:=false;
name.Edit_Search.BiDiMode:=bdRightToLeft;
kol.BiDiMode:=bdRightToLeft;
ghest.BiDiMode:=bdRightToLeft;
end;

procedure Tvam_f.nameEnter(Sender: TObject);
begin
if Not name.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tvam_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                  if (name.Edit_Search.Text<>'') and (name.Is_Find_Field)
                    then babat.SetFocus
                      else begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                              name.Edit_Search.SetFocus;
                              name.Edit_Search.Clear;
                            end;
                end;
end;

procedure Tvam_f.babatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kol.SetFocus;
end;

procedure Tvam_f.kolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ghest.SetFocus;
end;

procedure Tvam_f.kolExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(kol.Value),num,e);
if (e<>0) or (kol.Text='0') then
        begin
          Application.MessageBox('·ÿ›« „Ì“«‰ ﬂ· Ê«„ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
          kol.Clear;
          kol.SetFocus;
         end;
end;

procedure Tvam_f.ghestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tvam_f.ghestExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(ghest.Value) ,num,e);
if (e<>0) or (ghest.Text='0') then
        begin
          Application.MessageBox('·ÿ›« „Ì“«‰ Â— ﬁ”ÿ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
          ghest.Clear;
          ghest.SetFocus;
         end;
end;

procedure Tvam_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tvam_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then amal.SetFocus;
end;

procedure Tvam_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               vam_aq.Close;
                               vam_aq.SQL.Clear;
                               vam_aq.SQL.Add('select * from Vam ');
                               vam_aq.SQL.Add('where (name=:i0) and (kol=:i1) and (tarikh=:i2)');
                               vam_aq.Parameters[0].Value:=name.Return_Value;
                               vam_aq.Parameters[1].Value:=kol.Value;
                               vam_aq.Parameters[2].Value:=tarikh.EditText;
                               vam_aq.Open;
                               if vam_aq.RecordCount>0 then begin
                                                               Application.MessageBox('«Ì‰ Ê«„ ﬁ»·« »—«Ì ‘Œ’ ‰«„»—œÂ À»  ‘œÂ «” ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                                                               name.Edit_Search.Clear;
                                                               name.Edit_Search.SetFocus;
                                                               exit;
                                                              end
                                else begin
                                       vam_aq.Close;
                                       vam_aq.SQL.Clear;
                                       vam_aq.SQL.Add('INSERT INTO Vam(babat,name,kol,ghest,remain,tarikh)');
                                       vam_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5)');
                                       vam_aq.Parameters[0].Value:=babat.Text;
                                       vam_aq.Parameters[1].Value:=name.Return_Value;
                                       vam_aq.Parameters[2].Value:=kol.Value;
                                       vam_aq.Parameters[3].Value:=ghest.Value;
                                       vam_aq.Parameters[4].Value:=kol.Value;
                                       vam_aq.Parameters[5].Value:=tarikh.EditText;
                                       vam_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;

if amal.Caption='Õ–›' then begin
                               vam_aq.Close;
                               vam_aq.SQL.Clear;
                               vam_aq.SQL.Add('select * from Vam ');
                               vam_aq.SQL.Add('where (name=:i0) and (kol=:i1) and (tarikh=:i2)');
                               vam_aq.Parameters[0].Value:=name.Return_Value;
                               vam_aq.Parameters[1].Value:=kol.Value;
                               vam_aq.Parameters[2].Value:=tarikh.EditText;
                               vam_aq.Open;
                               if vam_aq.RecordCount=0 then begin
                                                               Application.MessageBox('Ê«„Ì »« «Ì‰ „‘Œ’«  »—«Ì Õ–› ÊÃÊœ ‰œ«—œ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                                                               name.Edit_Search.SetFocus;
                                                               exit;
                                                             end
                                else
                                  if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                    then begin
                                           vam_aq.Close;
                                           vam_aq.SQL.Clear;
                                           vam_aq.SQL.Add('DELETE FROM Vam ');
                                           vam_aq.SQL.Add('where (name=:i0) and (kol=:i1) and (tarikh=:i2)');
                                           vam_aq.Parameters[0].Value:=name.Return_Value;
                                           vam_aq.Parameters[1].Value:=kol.Value;
                                           vam_aq.Parameters[2].Value:=tarikh.EditText;
                                           vam_aq.ExecSQL;
                                           Application.MessageBox('Ìﬂ „Ê—œ Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                          end;
                            end;
name.Edit_Search.SetFocus;
name.Edit_Search.Clear;
babat.Clear;
kol.Clear;
ghest.Clear;
tarikh.Clear;

end;

procedure Tvam_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
