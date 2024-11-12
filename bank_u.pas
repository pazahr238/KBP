unit bank_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DBGrid_Edit;

type
  Tbank_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    bank: TDBGrid_Edit;
    bank_ds: TDataSource;
    bank_aq: TADOQuery;
    shobeh: TEdit;
    txtbank: TLabel;
    txtshobeh: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shobehExit(Sender: TObject);
    procedure shobehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure bankEnter(Sender: TObject);
    procedure bankDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bank_f: Tbank_f;

implementation
uses main_u;

{$R *.dfm}

procedure Tbank_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tbank_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tbank_f.FormShow(Sender: TObject);
begin
bank.Edit_Search.SetFocus;
bank.Edit_Search.Ctl3D:=false;
bank.Edit_Search.BiDiMode:=bdRightToLeft;
end;

procedure Tbank_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if amal.Caption='«÷«›Â' then begin
                                                  if bank.Edit_Search.Text=''
                                                        then begin
                                                               application.MessageBox('·ÿ›« ‰«„ »«‰ﬂ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                                                               bank.Edit_Search.SetFocus;
                                                              end
                                                                else begin
                                                                        shobeh.SetFocus;
                                                                        bank.Hide;
                                                                      end
                                                 end
                        else  //else of amal.Caption='«÷«›Â'
                             begin
                               if bank.Is_Find_Field
                                  then begin
                                          shobeh.SetFocus;
                                          shobeh.Text:=bank_aq['shobeh'];
                                        end
                                     else begin
                                            Application.MessageBox('·ÿ›« ‰«„ »«‰ﬂ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                                            bank.Edit_Search.SetFocus;
                                            bank.Edit_Search.Clear;
                                           end;
                              end;
                  end;
end;

procedure Tbank_f.shobehExit(Sender: TObject);
begin
if shobeh.Text='' then begin
                           Application.MessageBox('·ÿ›« ﬂœ ‘⁄»Â —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                           shobeh.SetFocus;
                          end;
end;

procedure Tbank_f.shobehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tbank_f.amalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 amalClick(sender);
                 bank.Edit_Search.SetFocus;
                end;
end;

procedure Tbank_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               bank_aq.Close;
                               bank_aq.SQL.Clear;
                               bank_aq.SQL.Add('select * from bank ');
                               bank_aq.SQL.Add('where (bank=:i0) and (shobeh=:i1)');
                               bank_aq.Parameters[0].Value:=bank.Edit_Search.Text;
                               bank_aq.Parameters[1].Value:=shobeh.Text;
                               bank_aq.Open;
                               if bank_aq.RecordCount>0 then
                                  Application.MessageBox('»«‰ﬂÌ »« ç‰Ì‰ ‘⁄»Â «Ì ﬁ»·« À»  ‘œÂ «” ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION)
                                 else begin
                                       bank_aq.Close;
                                       bank_aq.SQL.Clear;
                                       bank_aq.SQL.Add('INSERT INTO BANK(bank,shobeh) ');
                                       bank_aq.SQL.Add('values (:i0,:i1)');
                                       bank_aq.Parameters[0].Value:=bank.Edit_Search.Text;
                                       bank_aq.Parameters[1].Value:=shobeh.Text;
                                       bank_aq.ExecSQL;
                                      end;
                              end;
{if amal.Caption=' €ÌÌ—'then begin
                               bank_aq.Close;
                               bank_aq.SQL.Clear;
                               bank_aq.SQL.Add('UPDATE Bank ');
                               bank_aq.SQL.Add('SET bank=:i0 , shobeh=:i1 ');
                               bank_aq.SQL.Add(' where (bank=:i2) and (shobeh=:i3)');
                               bank_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                               bank_aq.Parameters[1].Value:=bank.Edit_Search.Text;
                               bank_aq.Parameters[2].Value:=shobeh.text;
                               bank_aq.Parameters[3].Value:=saheb.ItemIndex;
                               bank_aq.Parameters[4].Value:=strtoint(shomareh.Text);
                               bank_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               close;
                             end; }

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       bank_aq.Close;
                                       bank_aq.SQL.Clear;
                                       bank_aq.SQL.Add('DELETE FROM Bank');
                                       bank_aq.SQL.Add(' where (Bank=:i0) and (shobeh=:i1)');
                                       bank_aq.Parameters[0].Value:=bank.edit_search.Text;
                                       bank_aq.Parameters[1].Value:=shobeh.Text;
                                       bank_aq.ExecSQL;
                                      end;
                            end;
bank.Edit_Search.Clear;
shobeh.Clear;
bank.Edit_Search.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////
end;

procedure Tbank_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tbank_f.bankDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
bank.Height:=55;
end;

procedure Tbank_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.


