unit mahal_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  DBCtrls, Mask;

type
  Tmahal_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    sherkat_ds: TDataSource;
    sherkat: TDBGrid_Edit;
    sherkat_aq: TADOQuery;
    txtsherkat: TLabel;
    txtmahal: TLabel;
    txtaddress: TLabel;
    address: TEdit;
    mahal_aq: TADOQuery;
    mahal: TDBGrid_Edit;
    mahal_ds: TDataSource;
    reff: TBitBtn;
    masafat: TEdit;
    txtmasafat: TLabel;
    Label1: TLabel;
    txttarikh: TLabel;
    tarikh: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure addressExit(Sender: TObject);
    procedure addressKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reffClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure sherkatCellClick(Column: TColumn);
    procedure amalClick(Sender: TObject);
    procedure reffEnter(Sender: TObject);
    procedure mahalEnter(Sender: TObject);
    procedure sherkatDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mahalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure masafatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure masafatExit(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mahal_f: Tmahal_f;
  p , q : string;

implementation
uses main_u;

{$R *.dfm}

procedure Tmahal_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Delete from mahal_temp ');
mahal_aq.ExecSQL;
action:=cafree;
end;

procedure Tmahal_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                if (sherkat.Edit_Search.Text='') or (sherkat.Return_Value='0')
                                                 then begin
                                                        Application.MessageBox('·ÿ›« ‰«„ ‘—ﬂ  —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                        sherkat.Edit_Search.Clear;
                                                        sherkat.Edit_Search.SetFocus;
                                                        exit;
                                                       end
                  else begin
                         reff.SetFocus;
                         sherkat.Hide;
                        end;
                end;
end;

procedure Tmahal_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                if (mahal.Edit_Search.Text='') then begin
                                                     Application.MessageBox('·ÿ›« ‰«„ „Õ· —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                     mahal.Edit_Search.Clear;
                                                     mahal.Edit_Search.SetFocus;
                                                     exit;
                                                    end
                  else begin
                        if  (amal.Caption = '«÷«›Â') then
                                                begin
                                                  address.SetFocus;
                                                  mahal.Hide;
                                                 end else begin
                                                          if mahal.Is_Find_Field then
                                                              begin  // set kardane maghadire peida shode dar control ha
                                                                address.Text:=mahal_aq['address'];
                                                                masafat.Text:=mahal_aq['masafat2'];
                                                                tarikh.EditText:=mahal_aq['tarikh2'];
                                                                p:=masafat.Text;
                                                                q:=tarikh.EditText;
                                                                      if amal.Caption=' €ÌÌ—' then
                                                                                                address.SetFocus
                                                                                              else
                                                                                                amal.SetFocus;
                                                                mahal.Hide;
                                                               end else begin
                                                                          Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                                                                          sherkat.Edit_Search.Clear;
                                                                          sherkat.Edit_Search.SetFocus;
                                                                          mahal.Edit_Search.Clear;
                                                                          mahal.Hide;
                                                                          address.Clear;
                                                                          masafat.Clear;
                                                                          tarikh.Clear;
                                                                         end;
                                                          end;
                        end;
                end;

end;

procedure Tmahal_f.FormShow(Sender: TObject);
begin
sherkat.Edit_Search.SetFocus;
sherkat.Edit_Search.Ctl3D:=false;
sherkat.Edit_Search.BiDiMode:=bdRightToLeft;
mahal.Edit_Search.Ctl3D:=false;
mahal.Edit_Search.BiDiMode:=bdRightToLeft;
end;

procedure Tmahal_f.addressExit(Sender: TObject);
begin
if address.Text='' then begin
                           Application.MessageBox('·ÿ›« ¬œ—” —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                           address.SetFocus;
                         end;
end;

procedure Tmahal_f.addressKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then masafat.SetFocus;
end;

procedure Tmahal_f.reffClick(Sender: TObject);
begin
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Delete from mahal_temp ');
mahal_aq.ExecSQL;
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Insert into mahal_temp ');
mahal_aq.SQL.Add('select * from mahal ');
mahal_aq.SQL.Add('where (sherkat=:i0) order by mahal');
mahal_aq.Parameters[0].Value:= sherkat.Edit_Search.Text;
mahal_aq.ExecSQL;
end;

procedure Tmahal_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tmahal_f.sherkatCellClick(Column: TColumn);
begin
sherkat.Hide;
end;

procedure Tmahal_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               mahal_aq.Close;
                               mahal_aq.SQL.Clear;
                               mahal_aq.SQL.Add('select * from mahal');
                               mahal_aq.SQL.Add('where (mahal=:i0) and (sherkat=:i1)');
                               mahal_aq.Parameters[0].Value:=mahal.Edit_Search.Text;
                               mahal_aq.Parameters[1].Value:=sherkat.Edit_Search.Text;
                               mahal_aq.Open;
                               if mahal_aq.RecordCount>0 then begin
                                                               Application.MessageBox('„Õ·Ì »Â «Ì‰ ‰«„ ﬁ»·« À»  ‘œÂ «” ','«Œÿ«—',0);
                                                               exit;
                                                              end
                                else begin
                                       mahal_aq.Close;
                                       mahal_aq.SQL.Clear;
                                       mahal_aq.SQL.Add('INSERT INTO mahal(mahal,sherkat,address,masafat,tarikh,masafat2,tarikh2) ');
                                       mahal_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6)');
                                       mahal_aq.Parameters[0].Value:=mahal.Edit_Search.Text;
                                       mahal_aq.Parameters[1].Value:=sherkat.Edit_Search.Text;
                                       mahal_aq.Parameters[2].Value:=address.Text;
                                       mahal_aq.Parameters[3].Value:=strtoint(masafat.Text);
                                       mahal_aq.Parameters[4].Value:=tarikh.EditText;
                                       mahal_aq.Parameters[5].Value:=strtoint(masafat.Text);
                                       mahal_aq.Parameters[6].Value:=tarikh.EditText;
                                       mahal_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ „Õ·  Œ·ÌÂ À»  ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               mahal_aq.Close;
                               mahal_aq.SQL.Clear;
                               mahal_aq.SQL.Add('UPDATE mahal ');
                               mahal_aq.SQL.Add('SET mahal=:i0 , sherkat=:i1 , address=:i2 , masafat=:i3 , tarikh=:i4 , masafat2=:i5 , tarikh2=:i6 ');
                               mahal_aq.SQL.Add(' where (mahal=:i7) and (sherkat=:i8)');
                               mahal_aq.Parameters[0].Value:=mahal.Edit_Search.Text;
                               mahal_aq.Parameters[1].Value:=sherkat.Edit_Search.Text;
                               mahal_aq.Parameters[2].Value:=address.Text;
                               mahal_aq.Parameters[3].Value:=strtoint(p);
                               mahal_aq.Parameters[4].Value:=q;
                               mahal_aq.Parameters[5].Value:=strtoint(masafat.Text);
                               mahal_aq.Parameters[6].Value:=tarikh.EditText;
                               mahal_aq.Parameters[7].Value:=mahal.Edit_Search.Text;
                               mahal_aq.Parameters[8].Value:=sherkat.Edit_Search.Text;
                               mahal_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               close;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       mahal_aq.Close;
                                       mahal_aq.SQL.Clear;
                                       mahal_aq.SQL.Add('DELETE FROM mahal');
                                       mahal_aq.SQL.Add(' where (mahal=:i0) and (sherkat=:i1)');
                                       mahal_aq.Parameters[0].Value:=mahal.Edit_Search.Text;
                                       mahal_aq.Parameters[1].Value:=sherkat.Edit_Search.Text;
                                       mahal_aq.ExecSQL;
                                      end;
                            end;
mahal.Edit_Search.Clear;
sherkat.Edit_Search.Clear;
address.Clear;
masafat.Clear;
tarikh.Clear;
sherkat.Edit_Search.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////

end;

procedure Tmahal_f.reffEnter(Sender: TObject);
begin
reffClick(sender);
mahal.Edit_Search.SetFocus;
end;

procedure Tmahal_f.mahalEnter(Sender: TObject);
begin
if Not mahal.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tmahal_f.sherkatDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
sherkat.Height:=55;
end;

procedure Tmahal_f.mahalDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
mahal.Height:=55;
end;

procedure Tmahal_f.masafatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tmahal_f.masafatExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(masafat.Text , num , e );
if (e<>0) or (masafat.Text='') or (masafat.Text='0')
              then begin
                     Application.MessageBox('·ÿ›« ›«’·Â  « „Õ·  Œ·ÌÂ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                     masafat.Clear;
                     masafat.SetFocus;
                    end;
end;

procedure Tmahal_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tmahal_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tmahal_f.sherkatEnter(Sender: TObject);
begin
if Not sherkat.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tmahal_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
