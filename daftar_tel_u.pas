unit daftar_tel_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, ExtCtrls,
  DBGrid_Edit;

type
  Tdaftar_tel_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    txtname: TLabel;
    txtlast: TLabel;
    txttel: TLabel;
    txtmobile: TLabel;
    txtfax: TLabel;
    name: TEdit;
    last: TEdit;
    tel: TEdit;
    mobile: TEdit;
    fax: TEdit;
    daftar_tel_ds: TDataSource;
    daftar_tel_aq: TADOQuery;
    daftar_tel_list: TDBGrid;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lastKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure telKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mobileKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure faxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  daftar_tel_f: Tdaftar_tel_f;

implementation
uses main_u;

{$R *.dfm}

procedure Tdaftar_tel_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tdaftar_tel_f.amalClick(Sender: TObject);
begin
if name.Text='' then begin
                        Application.MessageBox('·ÿ›« ‰«„ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                        name.Clear;
                        name.SetFocus;
                        exit;
                      end;
if last.Text='' then begin
                        Application.MessageBox('·ÿ›« ‰«„ Œ«‰Ê«œêÌ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                        last.Clear;
                        last.SetFocus;
                        exit;
                      end;
if tel.Text='' then begin
                        Application.MessageBox('·ÿ›« ‘„«—Â  ·›‰ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                        tel.Clear;
                        tel.SetFocus;
                        exit;
                      end;

if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               daftar_tel_aq.Close;
                               daftar_tel_aq.SQL.Clear;
                               daftar_tel_aq.SQL.Add('select * from Daftar_tel ');
                               daftar_tel_aq.SQL.Add('where (name=:i0) and (last=:i1) and (tel=:i2)');
                               daftar_tel_aq.Parameters[0].Value:=name.Text;
                               daftar_tel_aq.Parameters[1].Value:=last.Text;
                               daftar_tel_aq.Parameters[2].Value:=tel.Text;
                               daftar_tel_aq.Open;
                               if daftar_tel_aq.RecordCount>0 then begin
                                                                Application.MessageBox('«Ì‰ „‘Œ’«  ﬁ»·« À»  ‘œÂ «” ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                                                                exit;
                                                               end
                                else begin
                                       daftar_tel_aq.Append;
                                       daftar_tel_aq['name']:=name.Text;
                                       daftar_tel_aq['last']:=last.Text;
                                       daftar_tel_aq['tel']:=tel.Text;
                                       daftar_tel_aq['mobile']:=mobile.Text;
                                       daftar_tel_aq['fax']:=fax.Text;
                                       daftar_tel_aq.Post;
                                       daftar_tel_aq.Close;
                                       daftar_tel_aq.SQL.Clear;
                                       daftar_tel_aq.SQL.Add('Select * From daftar_tel');
                                       daftar_tel_aq.Open;
                                       Application.MessageBox('Ìﬂ „Ê—œ «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       daftar_tel_aq.Close;
                                       daftar_tel_aq.SQL.Clear;
                                       daftar_tel_aq.SQL.Add('DELETE FROM Daftar_tel');
                                       daftar_tel_aq.SQL.Add(' where (name=:i0) and (last=:i1) and (tel=:i2)');
                                       daftar_tel_aq.Parameters[0].Value:=name.Text;
                                       daftar_tel_aq.Parameters[1].Value:=last.Text;
                                       daftar_tel_aq.Parameters[2].Value:=tel.Text;
                                       daftar_tel_aq.ExecSQL;
                                       daftar_tel_aq.Close;
                                       daftar_tel_aq.SQL.Clear;
                                       daftar_tel_aq.SQL.Add('Select * From daftar_tel');
                                       daftar_tel_aq.Open;
                                      end;
                            end;
name.Clear;
last.Clear;
tel.Clear;
mobile.Clear;
fax.Clear;
name.SetFocus;
end;

procedure Tdaftar_tel_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tdaftar_tel_f.FormShow(Sender: TObject);
begin
name.SetFocus;
end;

procedure Tdaftar_tel_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then last.SetFocus;
end;

procedure Tdaftar_tel_f.lastKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tel.SetFocus;
end;

procedure Tdaftar_tel_f.telKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mobile.SetFocus;
end;

procedure Tdaftar_tel_f.mobileKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then fax.SetFocus;
end;

procedure Tdaftar_tel_f.faxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tdaftar_tel_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
