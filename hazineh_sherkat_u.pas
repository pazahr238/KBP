unit hazineh_sherkat_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls;

type
  Thazineh_sherkat_f = class(TForm)
    Panel1: TPanel;
    txthazineh_sherkat: TLabel;
    hazineh_sherkat: TComboBox;
    amal: TBitBtn;
    exitt: TBitBtn;
    hazineh_sherkat_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure hazineh_sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hazineh_sherkatExit(Sender: TObject);
    procedure hazineh_sherkatEnter(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hazineh_sherkat_f: Thazineh_sherkat_f;

implementation

{$R *.dfm}

procedure Thazineh_sherkat_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thazineh_sherkat_f.FormShow(Sender: TObject);
begin
hazineh_sherkat.SetFocus;
end;

procedure Thazineh_sherkat_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thazineh_sherkat_f.hazineh_sherkatKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thazineh_sherkat_f.hazineh_sherkatExit(Sender: TObject);
begin
if exitt.Focused then exit;
if hazineh_sherkat.Text='' then
        begin
          Application.MessageBox('·ÿ›« Â“Ì‰Â ‘—ﬂ  —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          hazineh_sherkat.SetFocus;
         end
end;

procedure Thazineh_sherkat_f.hazineh_sherkatEnter(Sender: TObject);
var
  i : integer;
begin
      hazineh_sherkat.Clear;
      hazineh_sherkat_aq.Close;
      hazineh_sherkat_aq.SQL.Clear;
      hazineh_sherkat_aq.SQL.Add('Select * From hazineh_sherkat ');
      hazineh_sherkat_aq.Open;
      hazineh_sherkat_aq.First;
      for i:=1 to hazineh_sherkat_aq.RecordCount do
            begin
               hazineh_sherkat.Items.Add(hazineh_sherkat_aq['name']);
               hazineh_sherkat_aq.Next;
             end;
end;

procedure Thazineh_sherkat_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               if hazineh_sherkat.Text='' then exit;
                               hazineh_sherkat_aq.Close;
                               hazineh_sherkat_aq.SQL.Clear;
                               hazineh_sherkat_aq.SQL.Add('select * from hazineh_sherkat ');
                               hazineh_sherkat_aq.SQL.Add('where (name=:i0)');
                               hazineh_sherkat_aq.Parameters[0].Value:=hazineh_sherkat.Text;
                               hazineh_sherkat_aq.Open;
                               if hazineh_sherkat_aq.RecordCount>0 then begin
                                                                 Application.MessageBox('«Ì‰ Â“Ì‰Â ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                                                 exit;
                                                                end
                                else begin
                                       hazineh_sherkat_aq.Close;
                                       hazineh_sherkat_aq.SQL.Clear;
                                       hazineh_sherkat_aq.SQL.Add('INSERT INTO hazineh_sherkat(name) ');
                                       hazineh_sherkat_aq.SQL.Add('values (:i0)');
                                       hazineh_sherkat_aq.Parameters[0].Value:=hazineh_sherkat.Text;
                                       hazineh_sherkat_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
{if amal.Caption=' €ÌÌ—'then begin
                               if hazineh_sherkat.Text='' then exit;
                               hazineh_sherkat_aq.Close;
                               hazineh_sherkat_aq.SQL.Clear;
                               hazineh_sherkat_aq.SQL.Add('UPDATE hazineh_sherkat ');
                               hazineh_sherkat_aq.SQL.Add('SET name=:i0 ');
                               hazineh_sherkat_aq.SQL.Add(' where (name=:i1)');
                               hazineh_sherkat_aq.Parameters[0].Value:=hazineh_sherkat.Text;
                               hazineh_sherkat_aq.Parameters[1].Value:=hazineh_sherkat.Text;
                               hazineh_sherkat_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                               close;
                             end;  }
if amal.Caption='Õ–›' then begin
                              if hazineh_sherkat.Text='' then exit;
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       hazineh_sherkat_aq.Close;
                                       hazineh_sherkat_aq.SQL.Clear;
                                       hazineh_sherkat_aq.SQL.Add('DELETE FROM hazineh_sherkat');
                                       hazineh_sherkat_aq.SQL.Add(' where (name=:i0)');
                                       hazineh_sherkat_aq.Parameters[0].Value:= hazineh_sherkat.Text;
                                       hazineh_sherkat_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
hazineh_sherkat.Text:='';
hazineh_sherkat.SetFocus;
end;

procedure Thazineh_sherkat_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
