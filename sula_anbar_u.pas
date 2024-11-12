unit sula_anbar_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, DBGrid_Edit, Mask, StdCtrls, Buttons,
  MonyEdit;

type
  Tsula_anbar_f = class(TForm)
    txtkala: TLabel;
    txtmeghdar: TLabel;
    txttarikh: TLabel;
    Label3: TLabel;
    txtgh_vahed: TLabel;
    txtgh_kol: TLabel;
    txtmahal: TLabel;
    amal: TBitBtn;
    exitt: TBitBtn;
    meghdar: TEdit;
    mahal: TEdit;
    tarikh: TMaskEdit;
    kala: TDBGrid_Edit;
    kala_aq: TADOQuery;
    kala_ds: TDataSource;
    sula_anbar_aq: TADOQuery;
    gh_vahed: TMonyEdit;
    gh_kol: TMonyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure kalaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure kalaEnter(Sender: TObject);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meghdarExit(Sender: TObject);
    procedure meghdarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gh_vahedExit(Sender: TObject);
    procedure gh_vahedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gh_kolExit(Sender: TObject);
    procedure gh_kolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalExit(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure gh_kolEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sula_anbar_f: Tsula_anbar_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tsula_anbar_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tsula_anbar_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tsula_anbar_f.kalaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
kala.Height:=55;
end;

procedure Tsula_anbar_f.kalaEnter(Sender: TObject);
begin
if Not kala.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tsula_anbar_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if kala.Is_Find_Field
                      then meghdar.SetFocus
                        else begin
                              Application.MessageBox('«Ì‰ ﬂ«·« Â‰Ê“ À»  ‰‘œÂ «” . »Â ﬁ”„  «ÿ·«⁄«  Å«ÌÂù >  ⁄ÊÌ÷ ﬂ«·« > «÷«›Â „—«Ã⁄Â ‰„«ÌÌœ','«Œÿ«—',0);
                              kala.Edit_Search.Clear;
                              kala.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Tsula_anbar_f.meghdarExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(meghdar.Text,num,e);
if (meghdar.Text='') or (e<>0) or (meghdar.Text='0') then
        begin
          Application.MessageBox('·ÿ›«  ⁄œ«œ Ì« ÕÃ„ ﬂ«·« —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
          meghdar.Clear;
          meghdar.SetFocus;
         end;
end;

procedure Tsula_anbar_f.meghdarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then gh_vahed.SetFocus;
end;

procedure Tsula_anbar_f.gh_vahedExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(gh_vahed.Value) ,num,e);
if (e<>0) or (gh_vahed.Text='0') then
        begin
          Application.MessageBox('·ÿ›« ﬁÌ„  Ê«Õœ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
          gh_vahed.Clear;
          gh_vahed.SetFocus;
         end;
end;

procedure Tsula_anbar_f.gh_vahedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then gh_kol.SetFocus;
end;

procedure Tsula_anbar_f.gh_kolExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(gh_kol.Value) ,num,e);
if (e<>0) or (gh_kol.Text='0') then
        begin
          Application.MessageBox('·ÿ›« ﬁÌ„  ﬂ· —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
          gh_kol.Clear;
          gh_kol.SetFocus;
         end;
end;

procedure Tsula_anbar_f.gh_kolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tsula_anbar_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tsula_anbar_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mahal.SetFocus;
end;

procedure Tsula_anbar_f.mahalExit(Sender: TObject);
begin
if mahal.Text='' then begin
                        Application.MessageBox('·ÿ›« „Õ· Œ—Ìœ Ì« ¬œ—” —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                        mahal.Clear;
                        mahal.SetFocus;
                       end;
end;

procedure Tsula_anbar_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tsula_anbar_f.FormShow(Sender: TObject);
begin
kala.Edit_Search.SetFocus;
kala.Edit_Search.BiDiMode:=bdRightToLeft;
kala.Edit_Search.Ctl3D:=false;
gh_vahed.BiDiMode:=bdRightToLeft;
gh_kol.BiDiMode:=bdRightToLeft;
end;

procedure Tsula_anbar_f.amalClick(Sender: TObject);
var
  fund : boolean;
begin
if amal.Caption='Ã” ÃÊ' then begin
                                sula_anbar_aq.Close;
                                sula_anbar_aq.SQL.Clear;
                                sula_anbar_aq.SQL.Add('select * from sula_anbar ');
                                sula_anbar_aq.SQL.Add('where (kala=:i0) and (meghdar=:i1) and (gh_vahed=:i2) and (tarikh=:i3) and (mahal=:i4)');
                                sula_anbar_aq.Parameters[0].Value:=kala.Edit_Search.Text;
                                sula_anbar_aq.Parameters[1].Value:=strtoint(meghdar.Text);
                                sula_anbar_aq.Parameters[2].Value:=gh_vahed.Value;
                                sula_anbar_aq.Parameters[3].Value:=tarikh.Text;
                                sula_anbar_aq.Parameters[4].Value:=mahal.Text;
                                sula_anbar_aq.Open;
                                if sula_anbar_aq.RecordCount>0 then fund:=true else fund:=false;
                                if fund then begin
                                               amal.Caption:=' €ÌÌ—';
                                               kala.Edit_Search.SetFocus;
                                               exit;
                                              end
                                                else Application.MessageBox('„Ê—œÌ »—«Ì  €ÌÌ— Ì«›  ‰‘œ',' ÊÃÂ',0);
                              end;
if amal.Caption='«÷«›Â' then begin
                                sula_anbar_aq.Close;
                                sula_anbar_aq.SQL.Clear;
                                sula_anbar_aq.SQL.Add('select * from sula_anbar ');
                                sula_anbar_aq.SQL.Add('where (kala=:i0) and (meghdar=:i1) and (gh_vahed=:i2) and (tarikh=:i3) and (mahal=:i4)');
                                sula_anbar_aq.Parameters[0].Value:=kala.Edit_Search.Text;
                                sula_anbar_aq.Parameters[1].Value:=strtoint(meghdar.Text);
                                sula_anbar_aq.Parameters[2].Value:=gh_vahed.Value;
                                sula_anbar_aq.Parameters[3].Value:=tarikh.Text;
                                sula_anbar_aq.Parameters[4].Value:=mahal.Text;
                                sula_anbar_aq.Open;
                                if sula_anbar_aq.RecordCount>0 then fund:=true else fund:=false;
                               if fund then begin
                                              Application.MessageBox('ﬂ«·«ÌÌ »« «Ì‰ „‘Œ’«  ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                              exit;
                                             end
                                else begin
                                       sula_anbar_aq.Close;
                                       sula_anbar_aq.SQL.Clear;
                                       sula_anbar_aq.SQL.Add('INSERT INTO Sula_Anbar(kala,meghdar,gh_vahed,gh_kol,tarikh,mahal)');
                                       sula_anbar_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5)');
                                       sula_anbar_aq.Parameters[0].Value:=kala.Edit_Search.Text;
                                       sula_anbar_aq.Parameters[1].Value:=strtoint(meghdar.Text);
                                       sula_anbar_aq.Parameters[2].Value:=gh_vahed.Value;
                                       sula_anbar_aq.Parameters[3].Value:=gh_kol.Value;
                                       sula_anbar_aq.Parameters[4].Value:=tarikh.EditText;
                                       sula_anbar_aq.Parameters[5].Value:=mahal.Text;
                                       sula_anbar_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ›«ﬂ Ê— À»  ê—œÌœ',' ÊÃÂ',0);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               //sula_anbar_aq.Close;
                               //sula_anbar_aq.Open;
                               sula_anbar_aq.Edit;
                               sula_anbar_aq['kala']:=kala.Edit_Search.Text;
                               sula_anbar_aq['meghdar']:= strtoint(meghdar.Text);
                               sula_anbar_aq['gh_vahed']:= gh_vahed.Value;
                               sula_anbar_aq['gh_kol']:= gh_kol.Value;
                               sula_anbar_aq['tarikh']:=tarikh.EditText;
                               sula_anbar_aq['mahal']:= mahal.Text;
                               sula_anbar_aq.Post;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               amal.Caption:='Ã” ÃÊ';
                             end;
if amal.Caption='Õ–›' then begin
                                sula_anbar_aq.Close;
                                sula_anbar_aq.SQL.Clear;
                                sula_anbar_aq.SQL.Add('select * from sula_anbar ');
                                sula_anbar_aq.SQL.Add('where (kala=:i0) and (meghdar=:i1) and (gh_vahed=:i2) and (tarikh=:i3) and (mahal=:i4)');
                                sula_anbar_aq.Parameters[0].Value:=kala.Edit_Search.Text;
                                sula_anbar_aq.Parameters[1].Value:=strtoint(meghdar.Text);
                                sula_anbar_aq.Parameters[2].Value:=gh_vahed.Value;
                                sula_anbar_aq.Parameters[3].Value:=tarikh.Text;
                                sula_anbar_aq.Parameters[4].Value:=mahal.Text;
                                sula_anbar_aq.Open;
                                if sula_anbar_aq.RecordCount>0 then fund:=true else fund:=false;
                              if not fund then begin
                                                 Application.MessageBox('ﬂ«·«ÌÌ »« «Ì‰ „‘Œ’«  Â‰Ê“ À»  ‰‘œÂ «” ',' ÊÃÂ',0);
                                                 exit
                                                end
                              else
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       sula_anbar_aq.Close;
                                       sula_anbar_aq.SQL.Clear;
                                       sula_anbar_aq.SQL.Add('DELETE FROM sula_anbar');
                                       sula_anbar_aq.SQL.Add(' where (kala=:i0) and (meghdar=:i1) and (gh_vahed=:i2) and (tarikh=:i3) and (mahal=:i4)');
                                       sula_anbar_aq.Parameters[0].Value:=kala.Edit_Search.Text;
                                       sula_anbar_aq.Parameters[1].Value:=strtoint(meghdar.Text);
                                       sula_anbar_aq.Parameters[2].Value:=gh_vahed.Value;
                                       sula_anbar_aq.Parameters[3].Value:=tarikh.Text;
                                       sula_anbar_aq.Parameters[4].Value:=mahal.Text;
                                       sula_anbar_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ›«ﬂ Ê— Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                      end;
                            end;
kala.Edit_Search.SetFocus;
kala.Edit_Search.Clear;
meghdar.Clear;
gh_vahed.Clear;
gh_kol.Clear;
tarikh.Clear;

end;

procedure Tsula_anbar_f.gh_kolEnter(Sender: TObject);
begin
gh_kol.Value:=gh_vahed.Value * strtoint(meghdar.Text);
end;

procedure Tsula_anbar_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
