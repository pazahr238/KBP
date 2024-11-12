unit residpk_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, MonyEdit, Mask, Grids, DBGrids, DBGrid_Edit,
  DB, ADODB, ExtCtrls;

type
  Tresidpk_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    residpk_aq: TADOQuery;
    Panel1: TPanel;
    txtresidpk: TLabel;
    txth_index: TLabel;
    txtbabat: TLabel;
    txtbeh: TLabel;
    txttarikh: TLabel;
    txtsherkat: TLabel;
    txtbank: TLabel;
    txthesab: TLabel;
    txtmablagh_ch: TLabel;
    txtsh_ch: TLabel;
    txtmahal: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    residpk: TEdit;
    babat: TEdit;
    beh: TComboBox;
    tarikh: TMaskEdit;
    hesab: TEdit;
    sh_ch: TEdit;
    mahal: TEdit;
    h_index: TEdit;
    bank: TDBGrid_Edit;
    mablagh_ch: TMonyEdit;
    sherkat: TComboBox;
    sherkat_aq: TADOQuery;
    hesab_ds: TDataSource;
    hesab_aq: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure residpkExit(Sender: TObject);
    procedure residpkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure h_indexExit(Sender: TObject);
    procedure h_indexKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure babatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure behKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hesabExit(Sender: TObject);
    procedure mablagh_chExit(Sender: TObject);
    procedure sh_chExit(Sender: TObject);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sh_chKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablagh_chKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalExit(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bankEnter(Sender: TObject);
    procedure bankDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sherkatExit(Sender: TObject);
    procedure residpkEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  residpk_f: Tresidpk_f;
  last_check : string;
  last_hesab : string;

implementation

uses main_u;

{$R *.dfm}

procedure Tresidpk_f.FormShow(Sender: TObject);
begin
residpk.SetFocus;
beh.ItemIndex:=0;
bank.Edit_Search.BiDiMode:=bdRightToLeft;
bank.Edit_Search.Ctl3D:=false;
mablagh_ch.BiDiMode:=bdRightToLeft;
end;

procedure Tresidpk_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tresidpk_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tresidpk_f.residpkExit(Sender: TObject);
var
 num : int64;
 e : integer;
begin
if exitt.Focused then exit;
val(residpk.Text,num,e);
if amal.Caption<>'«÷«›Â' then
    begin
      residpk_aq.Close;
      residpk_aq.SQL.Clear;
      residpk_aq.SQL.Add('select * from Havaleh_check ');
      residpk_aq.SQL.Add('where (residpk=:i0)');
      if e=0 then residpk_aq.Parameters[0].Value:=strtoint(residpk.Text) else residpk_aq.Parameters[0].Value:=0;
      residpk_aq.Open;

      if residpk_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            h_index.Text:=IntToStr(residpk_aq['h_index']);
            babat.Text:=residpk_aq['babat'];
            beh.ItemIndex:=residpk_aq['beh'];
            tarikh.EditText:=residpk_aq['tarikh'];
            sherkat.Text:=residpk_aq['sherkat'];
            bank.Edit_Search.Text:=residpk_aq['bank'];
            hesab.Text:=IntToStr(residpk_aq['hesab']);
            sh_ch.Text:=IntToStr(residpk_aq['sh_ch']);
            mablagh_ch.Value:=residpk_aq['mablagh_ch'];
            mahal.Text:=residpk_aq['mahal'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      h_index.Clear;
                      babat.Clear;
                      tarikh.Clear;
                      sherkat.Clear;
                      bank.Edit_Search.Clear;
                      hesab.Clear;
                      sh_ch.Clear;
                      mablagh_ch.Clear;
                      residpk.Clear;
                      residpk.SetFocus;
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              tarikh.EditText:='____/__/__';
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (e<>0) or (residpk.Text='') then begin
                                                  Application.MessageBox('·ÿ›« ‘„«—Â —”Ìœ Å—œ«Œ  ﬂ—«ÌÂ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                  residpk.Clear;
                                                  residpk.SetFocus;
                                                end;
              end;
end;
///////////////////////////// end of residpk exit /////////////////////////////////////

procedure Tresidpk_f.residpkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
      begin
          if amal.Caption='Õ–›' then amal.SetFocus else h_index.SetFocus;
       end;
end;

procedure Tresidpk_f.h_indexExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(h_index.Text,num,e);
if (e<>0) or (h_index.Text='') or (h_index.Text='0')
          then
              begin
               Application.MessageBox('·ÿ›« ‘„«—Â ’Ê— Õ”«» —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
               h_index.Clear;
               h_index.SetFocus;
              end;
end;

procedure Tresidpk_f.h_indexKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then babat.SetFocus;
end;

procedure Tresidpk_f.babatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then beh.SetFocus;
end;

procedure Tresidpk_f.behKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tresidpk_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText) and (tarikh.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tresidpk_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sherkat.SetFocus;
end;

procedure Tresidpk_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then bank.Edit_Search.SetFocus;
end;

procedure Tresidpk_f.amalClick(Sender: TObject);
begin
last_check:=sh_ch.Text;
last_hesab:=hesab.Text;
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               residpk_aq.Close;
                               residpk_aq.SQL.Clear;
                               residpk_aq.SQL.Add('select * from Havaleh_check ');
                               residpk_aq.SQL.Add('where (residpk=:i0)');
                               residpk_aq.Parameters[0].Value:=strtoint64(residpk.Text);
                               residpk_aq.Open;
                               if residpk_aq.RecordCount>0
                                then begin
                                       Application.MessageBox('Ìﬂ —”Ìœ Å—œ«Œ  ﬂ—«ÌÂ »« «Ì‰ ‘„«—Â ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                       exit;
                                     end
                                      else
                                       begin
                                        residpk_aq.Close;
                                        residpk_aq.SQL.Clear;
                                        residpk_aq.SQL.Add('INSERT INTO Havaleh_check(residpk,h_index,babat,beh,tarikh,sherkat,bank,hesab,sh_ch,mablagh_ch,mahal)');
                                        residpk_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8,:i9,:i10)');
                                        residpk_aq.Parameters[0].Value:=strtoint64(residpk.Text);
                                        residpk_aq.Parameters[1].Value:=strtoint64(h_index.Text);
                                        residpk_aq.Parameters[2].Value:=babat.Text;
                                        residpk_aq.Parameters[3].Value:=beh.ItemIndex;
                                        residpk_aq.Parameters[4].Value:=tarikh.EditText;
                                        residpk_aq.Parameters[5].Value:=sherkat.Text;
                                        residpk_aq.Parameters[6].Value:=bank.Edit_Search.Text;
                                        residpk_aq.Parameters[7].Value:=StrToInt64(hesab.Text);
                                        residpk_aq.Parameters[8].Value:=strtoint64(sh_ch.Text);
                                        residpk_aq.Parameters[9].Value:=mablagh_ch.Value;
                                        residpk_aq.Parameters[10].Value:=mahal.Text;
                                        residpk_aq.ExecSQL;
                                          if Application.MessageBox('¬Ì« —”Ìœ œÌê—Ì —« Ê«—œ „Ì ‰„«ÌÌœ ø','Å—”‘',MB_YESNO + MB_ICONQUESTION) = mryes
                                            then residpk.SetFocus
                                              else close;
                                       ///////////////chon ye chek keshide shode shomareh cheke feli ye vahed ezafe mishe //////////////
                                        {residpk_aq.Close;
                                        residpk_aq.SQL.Clear;
                                        residpk_aq.SQL.Add('select * from daste_check ');
                                        residpk_aq.SQL.Add('where (' + last_check + '<=ta) and ('+ last_check +'>=az) and (hesab=' + last_hesab + ') ');
                                        residpk_aq.Open;
                                        if residpk_aq.RecordCount>0 then begin
                                                                            residpk_aq.Edit;
                                                                            residpk_aq['feli']:=residpk_aq['feli'] + 1;
                                                                            residpk_aq.Post;
                                                                            main_f.Check_Delete(residpk_aq['feli'],residpk_aq['hesab']);
                                                                          end;}
                                       ///////////////////////////////////////////////////////////////////////////////
                                       end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               residpk_aq.Close;
                               residpk_aq.SQL.Clear;
                               residpk_aq.SQL.Add('UPDATE Havaleh_check ');
                               residpk_aq.SQL.Add('SET residpk=:i0 ,h_index=:i1 ,babat=:i2 ,beh=:i3 ,tarikh=:i4 ,sherkat=:i5 ,bank=:i6 ,hesab=:i7 ,sh_ch=:i8 ,mablagh_ch=:i9 ,mahal=:i10');
                               residpk_aq.SQL.Add(' where (residpk=:i11)');
                                        residpk_aq.Parameters[0].Value:=strtoint64(residpk.Text);
                                        residpk_aq.Parameters[1].Value:=strtoint64(h_index.Text);
                                        residpk_aq.Parameters[2].Value:=babat.Text;
                                        residpk_aq.Parameters[3].Value:=beh.ItemIndex;
                                        residpk_aq.Parameters[4].Value:=tarikh.EditText;
                                        residpk_aq.Parameters[5].Value:=sherkat.Text;
                                        residpk_aq.Parameters[6].Value:=bank.Edit_Search.Text;
                                        residpk_aq.Parameters[7].Value:=strtoint64(hesab.Text);
                                        residpk_aq.Parameters[8].Value:=strtoint64(sh_ch.Text);
                                        residpk_aq.Parameters[9].Value:=mablagh_ch.Value;
                                        residpk_aq.Parameters[10].Value:=mahal.Text;
                                        residpk_aq.Parameters[11].Value:=strtoint64(residpk.Text);
                               residpk_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               residpk.SetFocus;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       residpk_aq.Close;
                                       residpk_aq.SQL.Clear;
                                       residpk_aq.SQL.Add('DELETE FROM Havaleh_check ');
                                       residpk_aq.SQL.Add(' where (residpk=:i0)');
                                       residpk_aq.Parameters[0].Value:=strtoint(residpk.Text);
                                       residpk_aq.ExecSQL;
                                          if Application.MessageBox('¬Ì« —”Ìœ œÌê—Ì —« Õ–› „Ì ‰„«ÌÌœ ø','Å—”‘',MB_YESNO + MB_ICONQUESTION) = mryes
                                            then residpk.SetFocus
                                              else close;
                                      end;
                            end;
residpk.Clear;
h_index.Clear;
babat.Clear;
tarikh.Clear;
sherkat.Text:='';
bank.Edit_Search.Clear;
hesab.Clear;
sh_ch.Clear;
mablagh_ch.Clear;
mahal.Clear;
//------------------------------- end of amal click ---------------------------------
end;

procedure Tresidpk_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (bank.Edit_Search.Text<>'') and (bank.Return_Value<>'0')
                      then begin
                            hesab.SetFocus;
                            hesab.Text:=hesab_aq['shomareh'];
                            end

                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ »«‰ﬂ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              bank.Edit_Search.Clear;
                              bank.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Tresidpk_f.hesabExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(hesab.Text,num,e);
if e<>0 then
        begin
          Application.MessageBox('·ÿ›« ‘„«—Â Õ”«» —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
          hesab.Clear;
          hesab.SetFocus;
         end;
end;

procedure Tresidpk_f.mablagh_chExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(mablagh_ch.Value),num,e);
if (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „»·€ çﬂ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh_ch.Clear;
               mablagh_ch.SetFocus;
              end;
end;

procedure Tresidpk_f.sh_chExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(sh_ch.Text,num,e);
if (sh_ch.Text='') or (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â çﬂ „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               sh_ch.Clear;
               sh_ch.SetFocus;
               //exit;
              end;
{if main_f.Check_Valid(sh_ch.text,hesab.Text)=0 then
                                        begin
                                          sh_ch.Clear;
                                          sh_ch.SetFocus;
                                         end; }
end;

procedure Tresidpk_f.hesabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sh_ch.SetFocus;
end;

procedure Tresidpk_f.sh_chKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh_ch.SetFocus;
end;

procedure Tresidpk_f.mablagh_chKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mahal.SetFocus;
end;

procedure Tresidpk_f.mahalExit(Sender: TObject);
begin
if mahal.Text='' then
        begin
          Application.MessageBox('·ÿ›« „Õ· Ê«—Ì“ —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
          mahal.SetFocus;
         end;
end;

procedure Tresidpk_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tresidpk_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tresidpk_f.bankDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
bank.Height:=55;
end;

procedure Tresidpk_f.sherkatExit(Sender: TObject);
begin
if sherkat.Text='' then begin
                          Application.MessageBox('‰«„ ‘—ò  Ì« ‘„«—Â Õ”«» »«‰òÌ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                          sherkat.Clear;
                          sherkat.SetFocus;
                         end;
end;

procedure Tresidpk_f.residpkEnter(Sender: TObject);
var
  i : integer;
begin
sherkat.Clear;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from sherkat ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['sherkat']);
        sherkat_aq.Next;
       end;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from hesab ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['shomareh']);
        sherkat_aq.Next;
       end;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from kamion ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['mashin']);
        sherkat_aq.Next;
       end;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from person ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['name']);
        sherkat_aq.Next;
       end;
end;

procedure Tresidpk_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
