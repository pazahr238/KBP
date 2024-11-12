unit payaneh_mandeh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Mask, MonyEdit;

type
  Tpayaneh_mandeh_f = class(TForm)
    txtmablagh: TLabel;
    txtsharh: TLabel;
    txtsanad: TLabel;
    txttarikh: TLabel;
    sharh: TEdit;
    mablagh: TMonyEdit;
    sanad: TEdit;
    tarikh: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    Payaneh_mandeh_aq: TADOQuery;
    procedure exittClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhExit(Sender: TObject);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghExit(Sender: TObject);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  payaneh_mandeh_f: Tpayaneh_mandeh_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tpayaneh_mandeh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tpayaneh_mandeh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tpayaneh_mandeh_f.FormShow(Sender: TObject);
begin
sanad.SetFocus;
mablagh.BiDiMode:=bdRightToLeft;
mablagh.Ctl3D:=false;
end;

procedure Tpayaneh_mandeh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tpayaneh_mandeh_f.sanadExit(Sender: TObject);
begin
if exitt.Focused then exit;
if amal.Caption<>'«÷«›Â' then
    begin
      payaneh_mandeh_aq.Close;
      payaneh_mandeh_aq.SQL.Clear;
      payaneh_mandeh_aq.SQL.Add('select * from payaneh_mandeh ');
      payaneh_mandeh_aq.SQL.Add('where (sanad=:i0)');
      payaneh_mandeh_aq.Parameters[0].Value:=sanad.Text;
      payaneh_mandeh_aq.Open;

      if payaneh_mandeh_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            tarikh.EditText:=payaneh_mandeh_aq['tarikh'];
            sharh.Text:=payaneh_mandeh_aq['sharh'];
            mablagh.Value:=payaneh_mandeh_aq['mablagh'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                      sanad.SetFocus;
                      sanad.Clear;
                      tarikh.Clear;
                      sharh.Clear;
                      mablagh.Clear;
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              tarikh.EditText:='____/__/__';
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (sanad.Text='') then begin
                                          Application.MessageBox('·ÿ›« ‘„«—Â ”‰œ —« Ê«—œ ﬂ‰Ìœ',' ÊÃÂ',0);
                                          sanad.Clear;
                                          sanad.SetFocus;
                                       end;
              end;
end;

procedure Tpayaneh_mandeh_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                  if amal.Caption='Õ–›' then amal.SetFocus else tarikh.SetFocus;
                end;
end;

procedure Tpayaneh_mandeh_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tpayaneh_mandeh_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sharh.SetFocus;
end;

procedure Tpayaneh_mandeh_f.sharhExit(Sender: TObject);
begin
if sharh.Text='' then begin
                         Application.MessageBox('·ÿ›« ‘—Õ ”‰œ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                         sharh.Clear;
                         sharh.SetFocus;
                       end;
end;

procedure Tpayaneh_mandeh_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh.SetFocus;
end;

procedure Tpayaneh_mandeh_f.mablaghExit(Sender: TObject);
begin
if (mablagh.Text='0') then begin
                              Application.MessageBox('·ÿ›« „»·€ —« Ê«—œ ﬂ‰Ìœ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                              mablagh.SetFocus;
                            end;
end;

procedure Tpayaneh_mandeh_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tpayaneh_mandeh_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               payaneh_mandeh_aq.Close;
                               payaneh_mandeh_aq.SQL.Clear;
                               payaneh_mandeh_aq.SQL.Add('select * from payaneh_mandeh ');
                               payaneh_mandeh_aq.SQL.Add('where (sanad=:i0)');
                               payaneh_mandeh_aq.Parameters[0].Value:=sanad.Text;
                               payaneh_mandeh_aq.Open;
                               if payaneh_mandeh_aq.RecordCount>0 then begin
                                                                       Application.MessageBox('«Ì‰ ”‰œ ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                       exit;
                                                                      end
                                else begin
                                       payaneh_mandeh_aq.Close;
                                       payaneh_mandeh_aq.SQL.Clear;
                                       payaneh_mandeh_aq.SQL.Add('INSERT INTO payaneh_mandeh(SANAD,TARIKH,SHARH,MABLAGH)');
                                       payaneh_mandeh_aq.SQL.Add('values (:i0,:i1,:i2,:i3)');
                                       payaneh_mandeh_aq.Parameters[0].Value:=sanad.Text;
                                       payaneh_mandeh_aq.Parameters[1].Value:=tarikh.EditText;
                                       payaneh_mandeh_aq.Parameters[2].Value:=sharh.Text;
                                       payaneh_mandeh_aq.Parameters[3].Value:=mablagh.value;
                                       payaneh_mandeh_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ”‰œ À»  ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               payaneh_mandeh_aq.Close;
                               payaneh_mandeh_aq.SQL.Clear;
                               payaneh_mandeh_aq.SQL.Add('UPDATE payaneh_mandeh ');
                               payaneh_mandeh_aq.SQL.Add('SET sanad=:i0 , tarikh=:i1 , sharh=:i2 , mablagh=:i3 ');
                               payaneh_mandeh_aq.SQL.Add(' where (sanad=:i4)');
                               payaneh_mandeh_aq.Parameters[0].Value:=sanad.Text;
                               payaneh_mandeh_aq.Parameters[1].Value:=tarikh.EditText;
                               payaneh_mandeh_aq.Parameters[2].Value:=sharh.Text;
                               payaneh_mandeh_aq.Parameters[3].Value:=mablagh.value;
                               payaneh_mandeh_aq.Parameters[4].Value:=sanad.Text;
                               payaneh_mandeh_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ ”‰œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                               //close;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       payaneh_mandeh_aq.Close;
                                       payaneh_mandeh_aq.SQL.Clear;
                                       payaneh_mandeh_aq.SQL.Add('DELETE FROM payaneh_mandeh');
                                       payaneh_mandeh_aq.SQL.Add(' where (sanad=:i0)');
                                       payaneh_mandeh_aq.Parameters[0].Value:=sanad.Text;
                                       payaneh_mandeh_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ”‰œ Õ–› ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
tarikh.Clear;
mablagh.Clear;
sharh.Clear;
sanad.Clear;
sanad.SetFocus;

end;

end.
