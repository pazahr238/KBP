unit taviz_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  ExtCtrls;

type
  Ttaviz_f = class(TForm)
    exitt: TBitBtn;
    amal: TBitBtn;
    taviz_aq: TADOQuery;
    Panel1: TPanel;
    txtmashin: TLabel;
    txtkala: TLabel;
    txtmasafat: TLabel;
    txtmeghdar: TLabel;
    masafat: TEdit;
    meghdar: TEdit;
    mashin: TEdit;
    mashin_aq: TADOQuery;
    kala_aq: TADOQuery;
    daste_kala: TComboBox;
    kala: TComboBox;
    txtdaste_kala: TLabel;
    daste_kala_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure masafatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure masafatExit(Sender: TObject);
    procedure meghdarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meghdarExit(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure daste_kalaEnter(Sender: TObject);
    procedure kalaEnter(Sender: TObject);
    procedure daste_kalaExit(Sender: TObject);
    procedure kalaExit(Sender: TObject);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  taviz_f: Ttaviz_f;

implementation
uses main_u;

{$R *.dfm}

procedure Ttaviz_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Ttaviz_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Ttaviz_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Ttaviz_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then daste_kala.SetFocus
end;

procedure Ttaviz_f.masafatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then meghdar.SetFocus;
end;

procedure Ttaviz_f.masafatExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(masafat.Text,num,e);
if (masafat.Text='') or (e<>0) then
        begin
          Application.MessageBox('·ÿ›« „Ì“«‰ „”«›  ÃÂ   ⁄ÊÌ÷ ﬂ«·« —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
          masafat.Clear;
          masafat.SetFocus;
         end;
end;

procedure Ttaviz_f.meghdarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Ttaviz_f.meghdarExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(meghdar.Text,num,e);
if (meghdar.Text='') or (e<>0) or (meghdar.Text='0') then
        begin
          Application.MessageBox('·ÿ›« „ﬁœ«—  ⁄ÊÌ÷Ì —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
          meghdar.Clear;
          meghdar.SetFocus;
         end;
end;

procedure Ttaviz_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               taviz_aq.Close;
                               taviz_aq.SQL.Clear;
                               taviz_aq.SQL.Add('select * from Taviz ');
                               taviz_aq.SQL.Add('where (mashin=:i0) and (kala=:i1)');
                               taviz_aq.Parameters[0].Value:=mashin.Text;
                               taviz_aq.Parameters[1].Value:=kala.Text;
                               taviz_aq.Open;
                               if taviz_aq.RecordCount>0 then begin
                                                                Application.MessageBox('«Ì‰ ﬂ«·« »—«Ì „«‘Ì‰ ﬁ»·« À»  ‘œÂ «” ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                                                                exit;
                                                               end
                                else begin
                                       taviz_aq.Close;
                                       taviz_aq.SQL.Clear;
                                       taviz_aq.SQL.Add('INSERT INTO Taviz(mashin,daste_kala,kala,masafat,meghdar,dafe)');
                                       taviz_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5)');
                                       taviz_aq.Parameters[0].Value:=mashin.Text;
                                       taviz_aq.Parameters[1].Value:=daste_kala.Text;
                                       taviz_aq.Parameters[2].Value:=kala.Text;
                                       taviz_aq.Parameters[3].Value:=masafat.Text;
                                       taviz_aq.Parameters[4].Value:=meghdar.Text;
                                       taviz_aq.Parameters[5].Value:=0;
                                       taviz_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               taviz_aq.Close;
                               taviz_aq.SQL.Clear;
                               taviz_aq.SQL.Add('select * from Taviz ');
                               taviz_aq.SQL.Add('where (mashin=:i0) and (kala=:i1)');
                               taviz_aq.Parameters[0].Value:=mashin.Text;
                               taviz_aq.Parameters[1].Value:=kala.Text;
                               taviz_aq.Open;
                               if taviz_aq.RecordCount=0 then begin
                                                                Application.MessageBox('«Ì‰ ò«·« »—«Ì „«‘Ì‰ Â‰Ê“ À»  ‰‘œÂ «” ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                                                                exit;
                                                               end
                                else begin
                                       taviz_aq.Close;
                                       taviz_aq.SQL.Clear;
                                       taviz_aq.SQL.Add('Update Taviz ');
                                       taviz_aq.SQL.Add('Set mashin=:i0,daste_kala=:i1,kala=:i2,masafat=:i3,meghdar=:i4,dafe=:i5 ');
                                       taviz_aq.SQL.Add('where (mashin=:i6) and (kala=:i7)');
                                       taviz_aq.Parameters[0].Value:=mashin.Text;
                                       taviz_aq.Parameters[1].Value:=daste_kala.Text;
                                       taviz_aq.Parameters[2].Value:=kala.Text;
                                       taviz_aq.Parameters[3].Value:=masafat.Text;
                                       taviz_aq.Parameters[4].Value:=meghdar.Text;
                                       taviz_aq.Parameters[5].Value:=0;
                                       taviz_aq.Parameters[6].Value:=mashin.Text;
                                       taviz_aq.Parameters[7].Value:=kala.Text;
                                       taviz_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                                     end;
                               close;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       taviz_aq.Close;
                                       taviz_aq.SQL.Clear;
                                       taviz_aq.SQL.Add('DELETE FROM Taviz');
                                       taviz_aq.SQL.Add(' where (mashin=:i0) and (kala=:i1)');
                                       taviz_aq.Parameters[0].Value:=mashin.Text;
                                       taviz_aq.Parameters[1].Value:=kala.Text;
                                       taviz_aq.ExecSQL;
                                      end;
                            end;
mashin.SetFocus;
mashin.Clear;
daste_kala.Text:='';
kala.Text:='';
masafat.Clear;
meghdar.Clear;
end;

procedure Ttaviz_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion_melki where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) and (mashin.Text<>'')
                      then daste_kala.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Ttaviz_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Ttaviz_f.daste_kalaEnter(Sender: TObject);
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

procedure Ttaviz_f.kalaEnter(Sender: TObject);
var
  i : integer;
begin
kala.Clear;
kala_aq.Close;
kala_aq.SQL.Clear;
kala_aq.SQL.Add('select * from taviz ');
kala_aq.SQL.Add('where daste_kala=' + chr(39) + daste_kala.Text + chr(39));
kala_aq.Open;
for i:=1 to kala_aq.RecordCount do
      begin
        kala.Items.Add(kala_aq['kala']);
        kala_aq.Next;
       end;
end;

procedure Ttaviz_f.daste_kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if daste_kala.Text='' then begin
                             Application.MessageBox('·ÿ›« œ” Â ﬂ«·« —«  ⁄ÌÌ‰ ﬂ‰Ìœ','«Œÿ«—',0);
                             daste_kala.SetFocus;
                            end;
end;

procedure Ttaviz_f.kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if daste_kala.Text='' then begin
                             Application.MessageBox('·ÿ›« ﬂ«·« —«  ⁄ÌÌ‰ ﬂ‰Ìœ','«Œÿ«—',0);
                             kala.SetFocus;
                            end;
end;

procedure Ttaviz_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then kala.SetFocus;
end;

procedure Ttaviz_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                  if (kala.Text<>'')
                    then begin
                           if amal.Caption<>'«÷«›Â' then
                              begin
                                taviz_aq.Close;
                                taviz_aq.SQL.Clear;
                                taviz_aq.SQL.Add('Select * From Taviz ');
                                taviz_aq.SQL.Add('Where (mashin=:i0) and (kala=:i1)');
                                taviz_aq.Parameters[0].Value:=mashin.Text;
                                taviz_aq.Parameters[1].Value:=kala.Text;
                                taviz_aq.Open;
                                  if taviz_aq.RecordCount>0 then
                                        begin
                                          taviz_aq.First;
                                          masafat.Text:=taviz_aq['masafat'];
                                          meghdar.Text:=taviz_aq['meghdar'];
                                                if amal.Caption=' €ÌÌ—' then
                                                     masafat.SetFocus
                                                        else
                                                          amal.SetFocus;
                                         end else begin
                                                    Application.MessageBox('ç‰Ì‰ ﬂ«·«ÌÌ ﬁ»·« À»  ‰‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                                    kala.Text:='';
                                                    kala.SetFocus;
                                                   end;
                                end
                                  else
                                       masafat.SetFocus;
                          end
                      else begin
                              Application.MessageBox('·ÿ›« ‰«„ ﬂ«·« —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              kala.SetFocus;
                              kala.Text:='';
                            end;
                end;

end;

end.
