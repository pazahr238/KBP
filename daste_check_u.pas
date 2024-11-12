unit daste_check_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBGrid_Edit, DB, ADODB,
  MonyEdit, Mask;

type
  Tdaste_check_f = class(TForm)
    hesab_aq: TADOQuery;
    hesab_ds: TDataSource;
    hesab: TDBGrid_Edit;
    exitt: TBitBtn;
    amal: TBitBtn;
    txthesab: TLabel;
    tarikh: TMaskEdit;
    txttarikh: TLabel;
    txtaz: TLabel;
    txtta: TLabel;
    az: TEdit;
    ta: TEdit;
    daste_check_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure hesabEnter(Sender: TObject);
    procedure hesabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure azExit(Sender: TObject);
    procedure azKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure taExit(Sender: TObject);
    procedure taKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  daste_check_f: Tdaste_check_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tdaste_check_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tdaste_check_f.FormShow(Sender: TObject);
begin
hesab.Edit_Search.Ctl3D:=false;
hesab.Edit_Search.BiDiMode:=bdRightToLeft;
hesab.Edit_Search.SetFocus;
end;

procedure Tdaste_check_f.hesabEnter(Sender: TObject);
begin
if Not hesab.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tdaste_check_f.hesabDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
hesab.Height:=55;
end;

procedure Tdaste_check_f.hesabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (hesab.Is_Find_Field)
                      then az.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« »«‰ﬂ Ê Õ”«» —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                              hesab.Edit_Search.Clear;
                              hesab.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Tdaste_check_f.azExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if exitt.Focused then exit;
val(az.Text , num , e );
              if (e<>0) or (az.Text='') or (az.Text='0') then
                                              begin
                                                Application.MessageBox('œ” Â çò «“ çÂ ‘„«—Â «Ì ‘—Ê⁄ „Ì ‘Êœø',' ÊÃÂ',mb_ok+MB_ICONINFORMATION);
                                                az.Clear;
                                                az.SetFocus;
                                                exit;
                                              end;
if amal.Caption<>'«÷«›Â' then
    begin
      daste_check_aq.Close;
      daste_check_aq.SQL.Clear;
      daste_check_aq.SQL.Add('select * from daste_check ');
      daste_check_aq.SQL.Add('where (hesab=:i0) and (az=:i1)');
      daste_check_aq.Parameters[0].Value:=hesab.Return_Value;
      daste_check_aq.Parameters[1].Value:=StrToInt64(az.Text);
      daste_check_aq.Open;

      if daste_check_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            ta.Text:=VarToStr(daste_check_aq['ta']);
            tarikh.EditText:=daste_check_aq['tarikh'];
            ShowMessage('‘„«—Â çò ›⁄·Ì «“ «Ì‰ œ” Â çò  '+ VarToStr(daste_check_aq['feli']) + ' „Ì »«‘œ ');
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      az.Clear;
                      az.SetFocus;
                    end;
    end;
end;

procedure Tdaste_check_f.azKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
             if amal.Caption<>'Õ–›' then ta.SetFocus else amal.SetFocus;
end;

procedure Tdaste_check_f.taExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(ta.Text , num , e );
if (e<>0) or (ta.Text='') or (ta.Text='0') then begin
                Application.MessageBox('œ” Â çò »Â çÂ ‘„«—Â «Ì Œ „ „Ì ‘Êœø',' ÊÃÂ',0);
                ta.Clear;
                ta.SetFocus;
              end;
end;
procedure Tdaste_check_f.taKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tdaste_check_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tdaste_check_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tdaste_check_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               daste_check_aq.Close;
                               daste_check_aq.SQL.Clear;
                               daste_check_aq.SQL.Add('select * from daste_check ');
                               daste_check_aq.SQL.Add('where (hesab=:i0) and (az=:i1)');
                               daste_check_aq.Parameters[0].Value:=hesab.Return_Value;
                               daste_check_aq.Parameters[1].Value:=az.Text;
                               daste_check_aq.Open;
                               if daste_check_aq.RecordCount>0 then begin
                                                                  Application.MessageBox('«Ì‰ œ” Â çò ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                  exit;
                                                                 end
                                else begin
                                       daste_check_aq.Close;
                                       daste_check_aq.SQL.Clear;
                                       daste_check_aq.SQL.Add('INSERT INTO daste_check(hesab,az,ta,tarikh,feli) ');
                                       daste_check_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4)');
                                       daste_check_aq.Parameters[0].Value:=hesab.Return_Value;
                                       daste_check_aq.Parameters[1].Value:=strtoint64(az.Text);
                                       daste_check_aq.Parameters[2].Value:=strtoint64(ta.Text);
                                       daste_check_aq.Parameters[3].Value:=tarikh.EditText;
                                       daste_check_aq.Parameters[4].Value:=strtoint64(az.Text);
                                       daste_check_aq.ExecSQL;
                                       Application.MessageBox('Ìò œ” Â çò À»  ‘œ',' ÊÃÂ',0);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               daste_check_aq.Close;
                               daste_check_aq.SQL.Clear;
                               daste_check_aq.SQL.Add('UPDATE daste_check ');
                               daste_check_aq.SQL.Add('SET hesab=:i0 , az=:i1 , ta=:i2 , tarikh=:i3 , feli=:i4 ');
                               daste_check_aq.SQL.Add(' where (hesab=:i5) and (az=:i6)');
                               daste_check_aq.Parameters[0].Value:=hesab.Return_Value;
                               daste_check_aq.Parameters[1].Value:=strtoint64(az.Text);
                               daste_check_aq.Parameters[2].Value:=strtoint64(ta.Text);
                               daste_check_aq.Parameters[3].Value:=tarikh.EditText;
                               daste_check_aq.Parameters[4].Value:=strtoint64(az.Text);
                               daste_check_aq.Parameters[5].Value:=hesab.Return_Value;
                               daste_check_aq.Parameters[6].Value:=strtoint64(az.Text);
                               daste_check_aq.ExecSQL;
                               Application.MessageBox('Ìò œ” Â çò  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       daste_check_aq.Close;
                                       daste_check_aq.SQL.Clear;
                                       daste_check_aq.SQL.Add('DELETE FROM daste_check');
                                       daste_check_aq.SQL.Add(' where (hesab=:i0) and (az=:i1)');
                                       daste_check_aq.Parameters[0].Value:=hesab.Return_Value;
                                       daste_check_aq.Parameters[1].Value:=az.Text;
                                       daste_check_aq.ExecSQL;
                                       Application.MessageBox('Ìò œ” Â çò Õ–› ‘œ',' ÊÃÂ',0);
                                      end;
                            end;
hesab.Edit_Search.Clear;
az.Clear;
ta.Clear;
tarikh.Clear;
hesab.Edit_Search.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////
end;

procedure Tdaste_check_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tdaste_check_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
