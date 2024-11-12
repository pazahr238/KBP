unit daste_kala_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DB, ADODB;

type
  Tdaste_kala_f = class(TForm)
    Panel1: TPanel;
    txtdaste_kala: TLabel;
    daste_kala: TComboBox;
    daste_kala_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure daste_kalaEnter(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure daste_kalaExit(Sender: TObject);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  daste_kala_f: Tdaste_kala_f;

implementation

{$R *.dfm}

procedure Tdaste_kala_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tdaste_kala_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tdaste_kala_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tdaste_kala_f.FormShow(Sender: TObject);
begin
daste_kala.SetFocus;
end;

procedure Tdaste_kala_f.daste_kalaEnter(Sender: TObject);
var
  i : integer;
begin
      daste_kala.Clear;
      daste_kala_aq.Close;
      daste_kala_aq.SQL.Clear;
      daste_kala_aq.SQL.Add('Select * From daste_kala ');
      daste_kala_aq.Open;
      daste_kala_aq.First;
      for i:=1 to daste_kala_aq.RecordCount do
            begin
               daste_kala.Items.Add(daste_kala_aq['name']);
               daste_kala_aq.Next;
             end;
end;

procedure Tdaste_kala_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               if daste_kala.Text='' then exit;
                               daste_kala_aq.Close;
                               daste_kala_aq.SQL.Clear;
                               daste_kala_aq.SQL.Add('select * from daste_kala ');
                               daste_kala_aq.SQL.Add('where (name=:i0)');
                               daste_kala_aq.Parameters[0].Value:=daste_kala.Text;
                               daste_kala_aq.Open;
                               if daste_kala_aq.RecordCount>0 then begin
                                                                 Application.MessageBox('œ” Â ﬂ«·« »Â «Ì‰ ‰«„ À»  ‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                                                 exit;
                                                                end
                                else begin
                                       daste_kala_aq.Close;
                                       daste_kala_aq.SQL.Clear;
                                       daste_kala_aq.SQL.Add('INSERT INTO daste_kala(name) ');
                                       daste_kala_aq.SQL.Add('values (:i0)');
                                       daste_kala_aq.Parameters[0].Value:=daste_kala.Text;
                                       daste_kala_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
{if amal.Caption=' €ÌÌ—'then begin
                               if daste_kala.Text='' then exit;
                               daste_kala_aq.Close;
                               daste_kala_aq.SQL.Clear;
                               daste_kala_aq.SQL.Add('UPDATE daste_kala ');
                               daste_kala_aq.SQL.Add('SET name=:i0 ');
                               daste_kala_aq.SQL.Add(' where (name=:i1)');
                               daste_kala_aq.Parameters[0].Value:=daste_kala.Text;
                               daste_kala_aq.Parameters[1].Value:=daste_kala.Text;
                               daste_kala_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                               close;
                             end;  }
if amal.Caption='Õ–›' then begin
                              if daste_kala.Text='' then exit;
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       daste_kala_aq.Close;
                                       daste_kala_aq.SQL.Clear;
                                       daste_kala_aq.SQL.Add('DELETE FROM daste_kala');
                                       daste_kala_aq.SQL.Add(' where (name=:i0)');
                                       daste_kala_aq.Parameters[0].Value:= daste_kala.Text;
                                       daste_kala_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
daste_kala.Text:='';
daste_kala.SetFocus;
end;

procedure Tdaste_kala_f.daste_kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if daste_kala.Text='' then
        begin
          Application.MessageBox('·ÿ›« ‰«„ œ” Â ﬂ«·« —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          daste_kala.SetFocus;
         end
end;

procedure Tdaste_kala_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

end.
