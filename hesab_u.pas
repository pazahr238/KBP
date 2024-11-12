unit hesab_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, DBCtrls, Grids, DBGrids,
  DBGrid_Edit, MonyEdit;

type
  Thesab_f = class(TForm)
    amal: TBitBtn;
    txtshomareh: TLabel;
    txtbank: TLabel;
    txtshobeh: TLabel;
    txtsaheb: TLabel;
    shomareh: TEdit;
    exitt: TBitBtn;
    bank_ds: TDataSource;
    bank_aq: TADOQuery;
    bank: TDBGrid_Edit;
    shobeh: TEdit;
    saheb: TComboBox;
    shomareh_aq: TADOQuery;
    txtman_aval: TLabel;
    man_aval: TMonyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure shomarehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shobehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shomarehExit(Sender: TObject);
    procedure shobehExit(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure sahebKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bankEnter(Sender: TObject);
    procedure man_avalExit(Sender: TObject);
    procedure man_avalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  hesab_f: Thesab_f;
  avalie : string;

implementation
uses main_u;

{$R *.dfm}

procedure Thesab_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Thesab_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thesab_f.FormShow(Sender: TObject);
begin
shomareh.SetFocus;
bank.Edit_Search.BiDiMode:=bdRightToLeft;
bank.Edit_Search.Ctl3D:=false;
man_aval.BiDiMode:=bdRightToLeft;
end;

procedure Thesab_f.shomarehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
            begin
                if amal.Caption='Õ–›' then amal.SetFocus else bank.Edit_Search.SetFocus;
              end;
end;

procedure Thesab_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                if (not bank.Is_Find_Field) then
                                               begin
                                                   Application.MessageBox('·ÿ›« ‰«„ »«‰ﬂ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                   bank.Edit_Search.SetFocus;
                                                   bank.Edit_Search.Clear;
                                                   exit;
                                                end;
                 bank.Hide;
                 shobeh.Text:= bank_aq['shobeh'] ;
                 shobeh.SetFocus;
                end;
end;

procedure Thesab_f.shobehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then saheb.SetFocus;
end;

procedure Thesab_f.amalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 amalClick(sender);
                 shomareh.SetFocus;
                end;
end;

procedure Thesab_f.shomarehExit(Sender: TObject);
var
 shomareh_num , e :integer;
begin
if exitt.Focused then exit;
val(shomareh.Text,shomareh_num,e);
if amal.Caption<>'«÷«›Â' then
    begin
      shomareh_aq.Close;
      shomareh_aq.SQL.Clear;
      shomareh_aq.SQL.Add('select * from hesab ');
      shomareh_aq.SQL.Add('where (shomareh=:i0)');
      if e=0 then shomareh_aq.Parameters[0].Value:=strtoint(shomareh.Text) else shomareh_aq.Parameters[0].Value:=0;
      shomareh_aq.Open;

      if shomareh_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            bank.Edit_Search.Text:= shomareh_aq['bank'];
            shobeh.Text:=shomareh_aq['shobeh'];
            saheb.ItemIndex:=shomareh_aq['saheb'];
            man_aval.Value:=shomareh_aq['man_aval'];
            avalie:=vartostr(man_aval.value);
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      shomareh.SetFocus;
                      shomareh.Clear;
                      bank.Edit_Search.Clear;
                      shobeh.Clear;
                      saheb.Clear;
                      man_aval.Clear;
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (e<>0) or (shomareh.Text='') then begin
                                                     Application.MessageBox('·ÿ›« ‘„«—Â Õ”«» —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                     shomareh.SetFocus;
                                                   end;
              end;
////////////////////// end of shomareh exit PROCEDURE   //////////////////////////////
end;

procedure Thesab_f.shobehExit(Sender: TObject);
begin
if shobeh.Text='' then begin
                           Application.MessageBox('·ÿ›« ﬂœ ‘⁄»Â —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                           shobeh.SetFocus;
                          end;
end;

procedure Thesab_f.amalClick(Sender: TObject);
var
  sanavie : string;
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               shomareh_aq.Close;
                               shomareh_aq.SQL.Clear;
                               shomareh_aq.SQL.Add('select * from hesab ');
                               shomareh_aq.SQL.Add('where (shomareh=:i0)');
                               shomareh_aq.Parameters[0].Value:=shomareh.Text;
                               shomareh_aq.Open;
                               if shomareh_aq.RecordCount>0 then begin
                                                                  Application.MessageBox('«Ì‰ ‘„«—Â Õ”«» ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                  exit;
                                                                 end
                                else begin
                                       shomareh_aq.Close;
                                       shomareh_aq.SQL.Clear;
                                       shomareh_aq.SQL.Add('INSERT INTO HESAB(shomareh,bank,shobeh,saheb,man_aval) ');
                                       shomareh_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4)');
                                       shomareh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                                       shomareh_aq.Parameters[1].Value:=bank.Edit_Search.Text;
                                       shomareh_aq.Parameters[2].Value:=shobeh.Text;
                                       shomareh_aq.Parameters[3].Value:=saheb.ItemIndex;
                                       shomareh_aq.Parameters[4].Value:=man_aval.Value;
                                       shomareh_aq.ExecSQL;
                                       //----------update meghdare etebare bank ba tavajoh be mande avalie ------
                                       shomareh_aq.Close;
                                       shomareh_aq.SQL.Clear;
                                       shomareh_aq.SQL.Add('Select * From Etebar ');
                                       shomareh_aq.Open;
                                       shomareh_aq.Edit;
                                       shomareh_aq['bank']:=shomareh_aq['bank'] + man_aval.value;
                                       shomareh_aq.Post;
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               sanavie:=vartostr(man_aval.Value);
                               shomareh_aq.Close;
                               shomareh_aq.SQL.Clear;
                               shomareh_aq.SQL.Add('UPDATE Hesab ');
                               shomareh_aq.SQL.Add('SET shomareh=:i0 , bank=:i1 , shobeh=:i2 , saheb=:i3 , man_aval=:i4');
                               shomareh_aq.SQL.Add(' where (shomareh=:i5)');
                               shomareh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                               shomareh_aq.Parameters[1].Value:=bank.Edit_Search.Text;
                               shomareh_aq.Parameters[2].Value:=shobeh.text;
                               shomareh_aq.Parameters[3].Value:=saheb.ItemIndex;
                               shomareh_aq.Parameters[4].Value:=man_aval.Value;
                               shomareh_aq.Parameters[5].Value:=strtoint(shomareh.Text);
                               shomareh_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               //----------update meghdare etebare bank ba tavajoh be mande avalie ------
                               shomareh_aq.Close;
                               shomareh_aq.SQL.Clear;
                               shomareh_aq.SQL.Add('Select * From Etebar ');
                               shomareh_aq.Open;
                               shomareh_aq.Edit;
                               shomareh_aq['bank']:=shomareh_aq['bank'] + strtoint(sanavie) - strtoint(avalie);
                               shomareh_aq.Post;
                               close;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       shomareh_aq.Close;
                                       shomareh_aq.SQL.Clear;
                                       shomareh_aq.SQL.Add('DELETE FROM Hesab');
                                       shomareh_aq.SQL.Add(' where (shomareh=:i0)');
                                       shomareh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                                       shomareh_aq.ExecSQL;
                                       //----------update meghdare etebare bank ba tavajoh be mande avalie ------
                                       shomareh_aq.Close;
                                       shomareh_aq.SQL.Clear;
                                       shomareh_aq.SQL.Add('Select * From Etebar ');
                                       shomareh_aq.Open;
                                       shomareh_aq.Edit;
                                       shomareh_aq['bank']:=shomareh_aq['bank'] - man_aval.Value;
                                       shomareh_aq.Post;
                                      end;
                            end;
shomareh.Clear;
bank.Edit_Search.Clear;
shobeh.Clear;
saheb.Clear;
man_aval.Clear;
shomareh.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////
end;

procedure Thesab_f.sahebKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then man_aval.SetFocus;
end;

procedure Thesab_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Thesab_f.man_avalExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(man_aval.Value), num, e);
if (e<>0) then
             begin
               Application.MessageBox('·ÿ›« „«‰œÂ «Ê·ÌÂ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               man_aval.Clear;
               man_aval.SetFocus;
              end;
end;

procedure Thesab_f.man_avalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thesab_f.bankDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
bank.Height:=55;
end;

procedure Thesab_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
