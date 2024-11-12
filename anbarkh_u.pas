unit anbarkh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  MonyEdit, ExtCtrls;

type
  Tanbarkh_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    anbarkh_aq: TADOQuery;
    Panel1: TPanel;
    txtkala: TLabel;
    txtmeghdar: TLabel;
    Label3: TLabel;
    txttarikh: TLabel;
    txtsanad: TLabel;
    txtgh_vahed: TLabel;
    Label1: TLabel;
    sanad: TEdit;
    meghdar: TEdit;
    tarikh: TMaskEdit;
    gh_vahed: TMonyEdit;
    kala_aq: TADOQuery;
    kala: TComboBox;
    daste_kala: TComboBox;
    txtdaste_kala: TLabel;
    daste_kala_aq: TADOQuery;
    txtmashin: TLabel;
    mashin: TEdit;
    kamion_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meghdarExit(Sender: TObject);
    procedure meghdarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure gh_vahedExit(Sender: TObject);
    procedure gh_vahedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure daste_kalaExit(Sender: TObject);
    procedure daste_kalaEnter(Sender: TObject);
    procedure kalaExit(Sender: TObject);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  anbarkh_f: Tanbarkh_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tanbarkh_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tanbarkh_f.exittClick(Sender: TObject);
begin
close;
{
if (key=13) then begin
                   if kala.Edit_Search.Text<>''
                      then begin
                             meghdar.SetFocus;
                             if (amal.Caption='«÷«›Â') and (kala.Is_Find_Field) then
                                 gh_vahed.Value:=kala_aq['gh_vahed'];
                            end
                        else begin
                              Application.MessageBox('«Ì‰ ﬂ«·« Â‰Ê“ À»  ‰‘œÂ «” . »Â ﬁ”„  «ÿ·«⁄«  Å«ÌÂù >  ⁄ÊÌ÷ ﬂ«·« > «÷«›Â „—«Ã⁄Â ‰„«ÌÌœ','«Œÿ«—',0);
                              kala.Edit_Search.Clear;
                              kala.Edit_Search.SetFocus;
                             end;
                  end;
}
end;

procedure Tanbarkh_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then daste_kala.SetFocus;
end;

procedure Tanbarkh_f.sanadExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
if exitt.Focused then exit;

val(sanad.Text,num,e);
if e<>0 then begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â ”‰œ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
               sanad.Clear;
               sanad.SetFocus;
               exit;
              end;

end;

procedure Tanbarkh_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
kamion_aq.Close;
kamion_aq.SQL.Clear;
kamion_aq.SQL.Add('select * from kamion where (mashin=:i0)');
kamion_aq.Parameters[0].Value:=mashin.Text;
kamion_aq.open;
kamion_aq.First;
if (kamion_aq.RecordCount>0) and (mashin.Text<>'')
        then meghdar.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Tanbarkh_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then meghdar.SetFocus;
end;

procedure Tanbarkh_f.meghdarExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(meghdar.Text,num,e);
if (meghdar.Text='') or (e<>0) or (meghdar.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „ﬁœ«— „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
      meghdar.Clear;
      meghdar.SetFocus;
     end;
end;

procedure Tanbarkh_f.meghdarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tanbarkh_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tanbarkh_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then gh_vahed.SetFocus;
end;

procedure Tanbarkh_f.FormShow(Sender: TObject);
begin
sanad.SetFocus;
gh_vahed.BiDiMode:=bdRightToLeft;
end;

procedure Tanbarkh_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               anbarkh_aq.Close;
                               anbarkh_aq.SQL.Clear;
                               anbarkh_aq.SQL.Add('select * from anbarkh ');
                               anbarkh_aq.SQL.Add('where (sanad=:i0) and (kala=:i1)');
                               anbarkh_aq.Parameters[0].Value:=sanad.Text;
                               anbarkh_aq.Parameters[1].Value:=kala.Text;
                               anbarkh_aq.Open;
                               if anbarkh_aq.RecordCount>0 then begin
                                                                  Application.MessageBox('«Ì‰ ﬂ«·« œ— ”‰œ ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                                                  sanad.SetFocus;
                                                                  exit;
                                                                 end
                                else begin
                                       anbarkh_aq.Close;
                                       anbarkh_aq.SQL.Clear;
                                       anbarkh_aq.SQL.Add('INSERT INTO anbarkh(sanad,daste_kala,kala,meghdar,tarikh,kamion,gh_vahed) ');
                                       anbarkh_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6)');
                                       anbarkh_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                       anbarkh_aq.Parameters[1].Value:=daste_kala.Text;
                                       anbarkh_aq.Parameters[2].Value:=kala.Text;
                                       anbarkh_aq.Parameters[3].Value:=StrToInt64(meghdar.Text);
                                       anbarkh_aq.Parameters[4].Value:=tarikh.EditText;
                                       anbarkh_aq.Parameters[5].Value:=mashin.Text;
                                       anbarkh_aq.Parameters[6].Value:=gh_vahed.Value;
                                       anbarkh_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ À»  ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               anbarkh_aq.Close;
                               anbarkh_aq.SQL.Clear;
                               anbarkh_aq.SQL.Add('UPDATE anbarkh ');
                               anbarkh_aq.SQL.Add('SET sanad=:i0 , daste_kala=:i1 , kala=:i2 , meghdar=:i3 , tarikh=:i4 , kamion=:i5 , gh_vahed=:i6 ');
                               anbarkh_aq.SQL.Add(' where (sanad=:i7) and (kala=:i8)');
                               anbarkh_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                               anbarkh_aq.Parameters[1].Value:=daste_kala.Text;
                               anbarkh_aq.Parameters[2].Value:=kala.Text;
                               anbarkh_aq.Parameters[3].Value:=StrToInt64(meghdar.Text);
                               anbarkh_aq.Parameters[4].Value:=tarikh.EditText;
                               anbarkh_aq.Parameters[5].Value:=mashin.Text;
                               anbarkh_aq.Parameters[6].Value:=gh_vahed.Value;
                               anbarkh_aq.Parameters[7].Value:=StrToInt64(sanad.Text);
                               anbarkh_aq.Parameters[8].Value:=kala.Text;                               
                               anbarkh_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       anbarkh_aq.Close;
                                       anbarkh_aq.SQL.Clear;
                                       anbarkh_aq.SQL.Add('DELETE FROM anbarkh');
                                       anbarkh_aq.SQL.Add(' where (sanad=:i0) and (kala=:i1)');
                                       anbarkh_aq.Parameters[0].Value:=strtoint64(sanad.Text);
                                       anbarkh_aq.Parameters[1].Value:=kala.Text;
                                       anbarkh_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
sanad.Clear;
mashin.Clear;
daste_kala.Text:='';
kala.Text:='';
meghdar.Clear;
tarikh.Clear;
gh_vahed.Clear;
sanad.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////
end;

procedure Tanbarkh_f.gh_vahedExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(vartostr(gh_vahed.Value),num,e);
if (e<>0) or (gh_vahed.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« ﬁÌ„  Ê«Õœ —« ’ÕÌÕ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
      gh_vahed.Clear;
      gh_vahed.SetFocus;
     end;
end;

procedure Tanbarkh_f.gh_vahedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tanbarkh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tanbarkh_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kala.SetFocus;
end;

procedure Tanbarkh_f.daste_kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if daste_kala.Text='' then
              begin
                Application.MessageBox('·ÿ›« œ” Â ﬂ«·« —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                daste_kala.SetFocus;
               end;
end;

procedure Tanbarkh_f.daste_kalaEnter(Sender: TObject);
var
   i : integer;
begin
daste_kala.Clear;
daste_kala_aq.Close;
daste_kala_aq.SQL.Clear;
daste_kala_aq.SQL.Add('select * from daste_kala ');
daste_kala_aq.Open;
for i:=1 to daste_kala_aq.RecordCount do
      begin
        daste_kala.Items.Add(daste_kala_aq['name']);
        daste_kala_aq.Next;
       end;
end;

procedure Tanbarkh_f.kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if kala.Text='' then
              begin
                Application.MessageBox('·ÿ›« ‰«„ ﬂ«·« —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                kala.SetFocus;
                exit;
               end;
               
if amal.Caption<>'«÷«›Â' then
    begin
      anbarkh_aq.Close;
      anbarkh_aq.SQL.Clear;
      anbarkh_aq.SQL.Add('select * from anbarkh ');
      anbarkh_aq.SQL.Add('where (sanad=:i0) and (kala=:i1)');
      anbarkh_aq.Parameters[0].Value:=sanad.Text;
      anbarkh_aq.Parameters[1].Value:=kala.Text;
      anbarkh_aq.Open;

      if anbarkh_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            //daste_kala.Text:=anbarkh_aq['daste_kala'];
            //kala.Text:=anbarkh_aq['kala'];
            mashin.Text:=anbarkh_aq['kamion'];
            meghdar.Text:=inttostr(anbarkh_aq['meghdar']);
            tarikh.EditText:=anbarkh_aq['tarikh'];
            gh_vahed.Value:=anbarkh_aq['gh_vahed'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                      sanad.SetFocus;
                      sanad.Clear;
                      mashin.Clear;
                      daste_kala.Text:='';
                      kala.Text:='';
                      meghdar.Clear;
                      tarikh.Clear;
                    end;
    end
        else begin
                 anbarkh_aq.Close;
                 anbarkh_aq.SQL.Clear;
                 anbarkh_aq.SQL.Add('select * from anbarv ');
                 anbarkh_aq.SQL.Add('where (kala=:i0) order by tarikh');
                 anbarkh_aq.Parameters[0].Value:=kala.Text;
                 anbarkh_aq.Open;
                 anbarkh_aq.Last;
                 if anbarkh_aq.RecordCount>0
                      then gh_vahed.Value:=anbarkh_aq['gh_vahed'];
              end;

end;

procedure Tanbarkh_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if amal.Caption='Õ–›' then amal.SetFocus
                        else mashin.SetFocus;
                end;
end;

procedure Tanbarkh_f.kalaEnter(Sender: TObject);
var
  i : integer;
begin
kala.Clear;
kala_aq.Close;
kala_aq.SQL.Clear;
kala_aq.SQL.Add('select distinct kala from anbarv ');
kala_aq.SQL.Add('where daste_kala=' + chr(39) + daste_kala.Text + chr(39));
kala_aq.Open;
for i:=1 to kala_aq.RecordCount do
      begin
        kala.Items.Add(kala_aq['kala']);
        kala_aq.Next;
       end;
end;

end.
