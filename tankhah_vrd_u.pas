unit tankhah_vrd_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DBGrid_Edit, Mask,
  MonyEdit;

type
  Ttankhah_vrd_f = class(TForm)
    txtmablagh: TLabel;
    txthesab: TLabel;
    txtsanad: TLabel;
    txttarikh: TLabel;
    txtbank: TLabel;
    hesab: TEdit;
    mablagh: TMonyEdit;
    sanad: TEdit;
    tarikh: TMaskEdit;
    bank: TDBGrid_Edit;
    bank_ds: TDataSource;
    bank_aq: TADOQuery;
    sanad_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
    txtshobeh: TLabel;
    shobeh: TEdit;
    hesab_aq: TADOQuery;
    chek: TEdit;
    txtchek: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bankDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure exittClick(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure bankEnter(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghEnter(Sender: TObject);
    procedure mablaghExit(Sender: TObject);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hesabExit(Sender: TObject);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shobehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shobehExit(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure chekKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chekExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tankhah_vrd_f : Ttankhah_vrd_f;
  mablagh_avalie : int64;

implementation

uses main_u;

{$R *.dfm}

procedure Ttankhah_vrd_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Ttankhah_vrd_f.FormShow(Sender: TObject);
begin
sanad.SetFocus;
bank.Edit_Search.Ctl3D:=false;
bank.BiDiMode:=bdRightToLeft;
mablagh.BiDiMode:=bdRightToLeft;
end;

procedure Ttankhah_vrd_f.bankDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
bank.Height:=55;
end;

procedure Ttankhah_vrd_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Ttankhah_vrd_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
              begin
                if amal.Caption='Õ–›' then amal.SetFocus else tarikh.SetFocus;
               end;
end;

procedure Ttankhah_vrd_f.sanadExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if exitt.Focused then exit;
val(sanad.Text,num,e);
if amal.Caption<>'«÷«›Â' then
    begin
      sanad_aq.Close;
      sanad_aq.SQL.Clear;
      sanad_aq.SQL.Add('select * from Tankhah_vrd ');
      sanad_aq.SQL.Add('where (sanad=:i0)');
      if e=0 then sanad_aq.Parameters[0].Value:=strtoint(sanad.Text) else sanad_aq.Parameters[0].Value:=0;
      sanad_aq.Open;

      if sanad_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            tarikh.EditText:=sanad_aq['tarikh'];
            mablagh.Value:=sanad_aq['mablagh'];
            mablagh_avalie:=sanad_aq['mablagh'];
            hesab.Text:=sanad_aq['hesab'];
            bank.Edit_Search.Text:=sanad_aq['bank'];
            shobeh.Text:=sanad_aq['shobeh'];
            chek.Text:=sanad_aq['chek'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      sanad.SetFocus;
                      sanad.Clear;
                      tarikh.Clear;
                      mablagh.Clear;
                      shobeh.Clear;
                      bank.Edit_Search.Clear;
                      hesab.Clear;
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              tarikh.EditText:='____/__/__';
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (e<>0) or (sanad.Text='') then begin
                                                  Application.MessageBox('·ÿ›« ‘„«—Â ”‰œ —« Ê«—œ ﬂ‰Ìœ',' ÊÃÂ',0);
                                                  sanad.Clear;
                                                  sanad.SetFocus;
                                                end;
              end;
end;

procedure Ttankhah_vrd_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Ttankhah_vrd_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Ttankhah_vrd_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh.SetFocus;
end;

procedure Ttankhah_vrd_f.mablaghEnter(Sender: TObject);
begin
if amal.Caption<>'«÷«›Â' then mablagh.Value:=sanad_aq['mablagh'];
end;

procedure Ttankhah_vrd_f.mablaghExit(Sender: TObject);
begin
if (mablagh.Text='0') then begin
                              Application.MessageBox('·ÿ›« „»·€ —« Ê«—œ ﬂ‰Ìœ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                              mablagh.SetFocus;
                            end;
end;

procedure Ttankhah_vrd_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then bank.Edit_Search.SetFocus;
end;

procedure Ttankhah_vrd_f.hesabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shobeh.SetFocus;
end;

procedure Ttankhah_vrd_f.hesabExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(hesab.Text , num , e);
if (hesab.Text='') or (e<>0)
                 then begin
                         Application.MessageBox('·ÿ›« ‘„«—Â Õ”«» —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                         hesab.Clear;
                         hesab.SetFocus;
                       end
                        else begin
                               hesab_aq.Close;
                               hesab_aq.SQL.Clear;
                               hesab_aq.SQL.Add('select * from Hesab ');
                               hesab_aq.SQL.Add('where (shomareh=:i0)');
                               hesab_aq.Parameters[0].Value:=strtoint(hesab.Text);
                               hesab_aq.Open;
                               if hesab_aq.RecordCount>0
                                    then begin
                                           bank.Edit_Search.Text:=hesab_aq['bank'];
                                           shobeh.Text:=hesab_aq['shobeh'];
                                          end
                                            else begin
                                                   Application.MessageBox('«Ì‰ ‘„«—Â Õ”«» ﬁ»·« À»  ‰‘œÂ «” ',' ÊÃÂ',0);
                                                   hesab.Clear;
                                                   hesab.SetFocus;
                                                  end;
                              end;
end;

procedure Ttankhah_vrd_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if bank.Is_Find_Field
                      then begin
                              hesab.SetFocus;
                              hesab.Text:=bank_aq['shomareh'];
                              shobeh.Text:=bank_aq['shobeh'];
                            end
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ »«‰ﬂ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                              bank.Edit_Search.Clear;
                              bank.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Ttankhah_vrd_f.shobehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then chek.SetFocus;
end;

procedure Ttankhah_vrd_f.shobehExit(Sender: TObject);
begin
if shobeh.Text='' then begin
                          Application.MessageBox('·ÿ›« ‰«„ ‘⁄»Â —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                          shobeh.Clear;
                          shobeh.SetFocus;
                        end;
end;

procedure Ttankhah_vrd_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               sanad_aq.Close;
                               sanad_aq.SQL.Clear;
                               sanad_aq.SQL.Add('select * from Tankhah_vrd ');
                               sanad_aq.SQL.Add('where (sanad=:i0)');
                               sanad_aq.Parameters[0].Value:=sanad.Text;
                               sanad_aq.Open;
                               if sanad_aq.RecordCount>0 then begin
                                                                Application.MessageBox('«Ì‰ ”‰œ ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                exit;
                                                               end
                                else begin
                                       sanad_aq.Close;
                                       sanad_aq.SQL.Clear;
                                       sanad_aq.SQL.Add('INSERT INTO Tankhah_vrd(SANAD,TARIKH,MABLAGH,BANK,SHOBEH,HESAB,CHEK)');
                                       sanad_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6)');
                                       sanad_aq.Parameters[0].Value:=strtoint(sanad.Text);
                                       sanad_aq.Parameters[1].Value:=tarikh.EditText;
                                       sanad_aq.Parameters[2].Value:=mablagh.value;
                                       sanad_aq.Parameters[3].Value:=bank.Edit_Search.Text;
                                       sanad_aq.Parameters[4].Value:=shobeh.Text;
                                       sanad_aq.Parameters[5].Value:=strtoint(hesab.Text);
                                       sanad_aq.Parameters[6].Value:=chek.Text;
                                       sanad_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ »Â  ‰ŒÊ«Â «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                       //------- update jadvale etebar ------------------
                                       {sanad_aq.Close;
                                       sanad_aq.SQL.Clear;
                                       sanad_aq.SQL.Add('Select * From Etebar');
                                       sanad_aq.Open;
                                       sanad_aq.Edit;
                                       sanad_aq['bank']:=sanad_aq['bank'] - mablagh.Value;
                                       sanad_aq['sandoogh']:=sanad_aq['sandoogh'] + mablagh.Value;
                                       sanad_aq.Post;}
                                       ///////////////chon ye chek keshide shode shomareh cheke feli ye vahed ezafe mishe //////////////
                                       sanad_aq.Close;
                                       sanad_aq.SQL.Clear;
                                       sanad_aq.SQL.Add('select * from daste_check ');
                                       sanad_aq.SQL.Add('where (' + chek.Text + '<=ta) and ('+ chek.Text +'>=az) and (hesab=' + hesab.Text + ') ');
                                       sanad_aq.Open;
                                       if sanad_aq.RecordCount>0 then begin
                                                                         sanad_aq.Edit;
                                                                         sanad_aq['feli']:=sanad_aq['feli'] + 1;
                                                                         sanad_aq.Post;
                                                                         main_f.Check_Delete(sanad_aq['feli'],sanad_aq['hesab']);
                                                                       end;
                                       ///////////////////////////////////////////////////////////////////////////////
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               sanad_aq.Close;
                               sanad_aq.SQL.Clear;
                               sanad_aq.SQL.Add('UPDATE Tankhah_vrd ');
                               sanad_aq.SQL.Add('SET sanad=:i0 , tarikh=:i1 , mablagh=:i2 , bank=:i3 , shobeh=:i4 , hesab=:i5 , chek=:i6 ');
                               sanad_aq.SQL.Add(' where (sanad=:i7)');
                               sanad_aq.Parameters[0].Value:=strtoint(sanad.Text);
                               sanad_aq.Parameters[1].Value:=tarikh.EditText;
                               sanad_aq.Parameters[2].Value:=mablagh.value;
                               sanad_aq.Parameters[3].Value:=bank.Edit_Search.Text;
                               sanad_aq.Parameters[4].Value:=shobeh.Text;
                               sanad_aq.Parameters[5].Value:=strtoint(hesab.Text);
                               sanad_aq.Parameters[6].Value:=chek.Text;
                               sanad_aq.Parameters[7].Value:=strtoint(sanad.Text);
                               sanad_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               //------- update jadvale etebar ------------------
                               {sanad_aq.Close;
                               sanad_aq.SQL.Clear;
                               sanad_aq.SQL.Add('Select * From Etebar');
                               sanad_aq.Open;
                               sanad_aq.Edit;
                               sanad_aq['bank']:=sanad_aq['bank'] - (mablagh.Value - mablagh_avalie);
                               sanad_aq['sandoogh']:=sanad_aq['sandoogh'] + (mablagh.Value - mablagh_avalie);
                               sanad_aq.Post;
                               close; // bastane form  }
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       sanad_aq.Close;
                                       sanad_aq.SQL.Clear;
                                       sanad_aq.SQL.Add('DELETE FROM Tankhah_vrd');
                                       sanad_aq.SQL.Add(' where (sanad=:i0)');
                                       sanad_aq.Parameters[0].Value:=strtoint(sanad.Text);
                                       sanad_aq.ExecSQL;
                                       //------- update jadvale etebar ------------------
                                       {hesab_aq.Close;
                                       hesab_aq.SQL.Clear;
                                       hesab_aq.SQL.Add('Select * From Etebar');
                                       hesab_aq.Open;
                                       hesab_aq.Edit;
                                       hesab_aq['bank']:=hesab_aq['bank'] + mablagh_avalie;
                                       hesab_aq['sandoogh']:=hesab_aq['sandoogh'] - mablagh_avalie;
                                       hesab_aq.Post;   }
                                      end;
                            end;
sanad.SetFocus;
sanad.Clear;
tarikh.Clear;
mablagh.Clear;
bank.Edit_Search.Clear;
shobeh.Clear;
hesab.Clear;
chek.Clear;

end;

procedure Ttankhah_vrd_f.chekKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Ttankhah_vrd_f.chekExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
if (exitt.Focused) then exit;
val(chek.Text , num , e);
if (chek.Text='') or (e<>0) or (chek.Text='0')
               then begin
                        Application.MessageBox('·ÿ›« ‘„«—Â çﬂ —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                        chek.Clear;
                        chek.SetFocus;
                        exit
                     end;
if main_f.Check_Valid(chek.text,hesab.Text)=0 then
                                        begin
                                          chek.Clear;
                                          chek.SetFocus;
                                         end;
end;

procedure Ttankhah_vrd_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
