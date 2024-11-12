unit payaneh_barnameh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, MonyEdit, StdCtrls, DB, ADODB, Buttons;

type
  Tpayaneh_barnameh_f = class(TForm)
    txtkerayeh: TLabel;
    txtnoebar: TLabel;
    txtshomareh: TLabel;
    txttarikh: TLabel;
    noebar: TEdit;
    kerayeh: TMonyEdit;
    shomareh: TEdit;
    tarikh: TMaskEdit;
    txtmashin: TLabel;
    mashin: TEdit;
    txthaghp: TLabel;
    haghp: TMonyEdit;
    txtdaramad: TLabel;
    daramad: TMonyEdit;
    txtmaghsad: TLabel;
    maghsad: TEdit;
    txtmabda: TLabel;
    mabda: TEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    Payaneh_barnameh_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure shomarehExit(Sender: TObject);
    procedure shomarehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mashinExit(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kerayehExit(Sender: TObject);
    procedure kerayehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure haghpExit(Sender: TObject);
    procedure haghpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure daramadExit(Sender: TObject);
    procedure daramadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mabdaExit(Sender: TObject);
    procedure mabdaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure maghsadExit(Sender: TObject);
    procedure maghsadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noebarExit(Sender: TObject);
    procedure noebarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure haghpEnter(Sender: TObject);
    procedure daramadEnter(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  payaneh_barnameh_f: Tpayaneh_barnameh_f;

implementation

uses main_u, Math;

{$R *.dfm}

procedure Tpayaneh_barnameh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tpayaneh_barnameh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tpayaneh_barnameh_f.FormShow(Sender: TObject);
begin
shomareh.SetFocus;
kerayeh.BiDiMode:=bdRightToLeft;
haghp.BiDiMode:=bdRightToLeft;
daramad.BiDiMode:=bdRightToLeft;
end;

procedure Tpayaneh_barnameh_f.shomarehExit(Sender: TObject);
begin
if exitt.Focused then exit;
if amal.Caption<>'«÷«›Â' then
    begin
      payaneh_barnameh_aq.Close;
      payaneh_barnameh_aq.SQL.Clear;
      payaneh_barnameh_aq.SQL.Add('select * from payaneh_barnameh ');
      payaneh_barnameh_aq.SQL.Add('where (shomareh=:i0)');
      payaneh_barnameh_aq.Parameters[0].Value:=shomareh.Text;
      payaneh_barnameh_aq.Open;

      if payaneh_barnameh_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            tarikh.EditText:=payaneh_barnameh_aq['tarikh'];
            mashin.Text:=payaneh_barnameh_aq['mashin'];
            kerayeh.Value:=payaneh_barnameh_aq['kerayeh'];
            haghp.Value:=payaneh_barnameh_aq['haghp'];
            daramad.Value:=payaneh_barnameh_aq['daramad'];
            mabda.Text:=payaneh_barnameh_aq['mabda'];
            maghsad.Text:=payaneh_barnameh_aq['maghsad'];
            noebar.Text:=payaneh_barnameh_aq['noebar'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      shomareh.SetFocus;
                      shomareh.Clear;
                      tarikh.Clear;
                      mashin.Clear;
                      kerayeh.Clear;
                      haghp.Clear;
                      daramad.Clear;
                      mabda.Clear;
                      maghsad.Clear;
                      noebar.Clear;
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              tarikh.EditText:='____/__/__';
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (shomareh.Text='') then begin
                                            Application.MessageBox('·ÿ›« ‘„«—Â »«—‰«„Â —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                            shomareh.Clear;
                                            shomareh.SetFocus;
                                         end;
              end;
end;

procedure Tpayaneh_barnameh_f.shomarehKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then begin
                  if amal.Caption='Õ–›' then amal.SetFocus else tarikh.SetFocus;
                end;
end;

procedure Tpayaneh_barnameh_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tpayaneh_barnameh_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mashin.SetFocus;
end;

procedure Tpayaneh_barnameh_f.mashinExit(Sender: TObject);
begin
if mashin.Text='' then begin
                           Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                           mashin.Clear;
                           mashin.SetFocus;
                        end;
end;

procedure Tpayaneh_barnameh_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then kerayeh.SetFocus;
end;

procedure Tpayaneh_barnameh_f.kerayehExit(Sender: TObject);
begin
if kerayeh.Text='' then begin
                           Application.MessageBox('·ÿ›« „»·€ ò—«ÌÂ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                           kerayeh.Clear;
                           kerayeh.SetFocus;
                        end;
end;

procedure Tpayaneh_barnameh_f.kerayehKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then haghp.SetFocus;
end;

procedure Tpayaneh_barnameh_f.haghpExit(Sender: TObject);
begin
if haghp.Text='' then begin
                         Application.MessageBox('·ÿ›« Õﬁ Å«Ì«‰Â —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                         haghp.Clear;
                         haghp.SetFocus;
                        end;
end;

procedure Tpayaneh_barnameh_f.haghpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then daramad.SetFocus;
end;

procedure Tpayaneh_barnameh_f.daramadExit(Sender: TObject);
begin
if daramad.Text='' then begin
                           Application.MessageBox('·ÿ›« „Ì“«‰ œ—¬„œ —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                           daramad.Clear;
                           daramad.SetFocus;
                         end;
end;

procedure Tpayaneh_barnameh_f.daramadKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then mabda.SetFocus;
end;

procedure Tpayaneh_barnameh_f.mabdaExit(Sender: TObject);
begin
if mabda.Text='' then begin
                          Application.MessageBox('·ÿ›« „»œ« —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                          mabda.Clear;
                          mabda.SetFocus;
                       end;
end;

procedure Tpayaneh_barnameh_f.mabdaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then maghsad.SetFocus;
end;

procedure Tpayaneh_barnameh_f.maghsadExit(Sender: TObject);
begin
if maghsad.Text='' then begin
                           Application.MessageBox('·ÿ›« „ﬁ’œ —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                           maghsad.Clear;
                           maghsad.SetFocus;
                         end;
end;

procedure Tpayaneh_barnameh_f.maghsadKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then noebar.SetFocus;
end;

procedure Tpayaneh_barnameh_f.noebarExit(Sender: TObject);
begin
if noebar.Text='' then begin
                           Application.MessageBox('·ÿ›« ‰Ê⁄ »«— —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                           noebar.Clear;
                           noebar.SetFocus;
                         end;
end;

procedure Tpayaneh_barnameh_f.noebarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tpayaneh_barnameh_f.haghpEnter(Sender: TObject);
begin
haghp.Value:=RoundTo(0.03*kerayeh.Value,0);
end;

procedure Tpayaneh_barnameh_f.daramadEnter(Sender: TObject);
begin
daramad.Value:=RoundTo(0.09*kerayeh.Value,0);
end;

procedure Tpayaneh_barnameh_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               payaneh_barnameh_aq.Close;
                               payaneh_barnameh_aq.SQL.Clear;
                               payaneh_barnameh_aq.SQL.Add('select * from payaneh_barnameh ');
                               payaneh_barnameh_aq.SQL.Add('where (shomareh=:i0)');
                               payaneh_barnameh_aq.Parameters[0].Value:=shomareh.Text;
                               payaneh_barnameh_aq.Open;
                               if payaneh_barnameh_aq.RecordCount>0 then begin
                                                                       Application.MessageBox('«Ì‰ ”‰œ ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                       exit;
                                                                      end
                                else begin
                                       payaneh_barnameh_aq.Close;
                                       payaneh_barnameh_aq.SQL.Clear;
                                       payaneh_barnameh_aq.SQL.Add('INSERT INTO payaneh_barnameh(shomareh,tarikh,mashin,kerayeh,haghp,daramad,mabda,maghsad,noebar)');
                                       payaneh_barnameh_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8)');
                                       payaneh_barnameh_aq.Parameters[0].Value:=shomareh.Text;
                                       payaneh_barnameh_aq.Parameters[1].Value:=tarikh.EditText;
                                       payaneh_barnameh_aq.Parameters[2].Value:=mashin.Text;
                                       payaneh_barnameh_aq.Parameters[3].Value:=kerayeh.value;
                                       payaneh_barnameh_aq.Parameters[4].Value:=haghp.value;
                                       payaneh_barnameh_aq.Parameters[5].Value:=daramad.value;
                                       payaneh_barnameh_aq.Parameters[6].Value:=mabda.Text;
                                       payaneh_barnameh_aq.Parameters[7].Value:=maghsad.Text;
                                       payaneh_barnameh_aq.Parameters[8].Value:=noebar.Text;
                                       payaneh_barnameh_aq.ExecSQL;
                                       Application.MessageBox('Ìò »«—‰«„Â À»  ê—œÌœ',' ÊÃÂ',0);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               payaneh_barnameh_aq.Close;
                               payaneh_barnameh_aq.SQL.Clear;
                               payaneh_barnameh_aq.SQL.Add('UPDATE payaneh_barnameh ');
                               payaneh_barnameh_aq.SQL.Add('SET shomareh=:i0 , tarikh=:i1 , mashin=:i2 , kerayeh=:i3 , haghp=:i4 , daramad=:i5 , mabda=:i6 , maghsad=:i7 , noebar=:i8 ');
                               payaneh_barnameh_aq.SQL.Add(' where (shomareh=:i9)');
                               payaneh_barnameh_aq.Parameters[0].Value:=shomareh.Text;
                               payaneh_barnameh_aq.Parameters[1].Value:=tarikh.EditText;
                               payaneh_barnameh_aq.Parameters[2].Value:=mashin.Text;
                               payaneh_barnameh_aq.Parameters[3].Value:=kerayeh.value;
                               payaneh_barnameh_aq.Parameters[4].Value:=haghp.value;
                               payaneh_barnameh_aq.Parameters[5].Value:=daramad.value;
                               payaneh_barnameh_aq.Parameters[6].Value:=mabda.Text;
                               payaneh_barnameh_aq.Parameters[7].Value:=maghsad.Text;
                               payaneh_barnameh_aq.Parameters[8].Value:=noebar.Text;
                               payaneh_barnameh_aq.Parameters[9].Value:=shomareh.Text;
                               payaneh_barnameh_aq.ExecSQL;
                               Application.MessageBox('Ìò »«—‰«„Â  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               //close;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       payaneh_barnameh_aq.Close;
                                       payaneh_barnameh_aq.SQL.Clear;
                                       payaneh_barnameh_aq.SQL.Add('DELETE FROM payaneh_barnameh');
                                       payaneh_barnameh_aq.SQL.Add(' where (shomareh=:i0)');
                                       payaneh_barnameh_aq.Parameters[0].Value:=shomareh.Text;
                                       payaneh_barnameh_aq.ExecSQL;
                                       Application.MessageBox('Ìò »«—‰«„Â Õ–› ê—œÌœ',' ÊÃÂ',0);
                                      end;
                            end;
shomareh.Clear;
tarikh.Clear;
mashin.Clear;
kerayeh.Clear;
haghp.Clear;
daramad.Clear;
mabda.Clear;
maghsad.Clear;
noebar.Clear;
shomareh.SetFocus;
end;

procedure Tpayaneh_barnameh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
