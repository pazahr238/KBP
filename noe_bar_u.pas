unit noe_bar_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls;

type
  Tnoe_bar_f = class(TForm)
    Panel1: TPanel;
    txtnoe_bar: TLabel;
    noe_bar: TComboBox;
    amal: TBitBtn;
    exitt: TBitBtn;
    noe_bar_aq: TADOQuery;
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noe_barEnter(Sender: TObject);
    procedure noe_barExit(Sender: TObject);
    procedure noe_barKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  noe_bar_f: Tnoe_bar_f;

implementation

{$R *.dfm}

procedure Tnoe_bar_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tnoe_bar_f.amalClick(Sender: TObject);
begin
if amal.Caption='�����' then begin
                               if noe_bar.Text='' then exit;
                               noe_bar_aq.Close;
                               noe_bar_aq.SQL.Clear;
                               noe_bar_aq.SQL.Add('select * from noe_bar ');
                               noe_bar_aq.SQL.Add('where (name=:i0)');
                               noe_bar_aq.Parameters[0].Value:=noe_bar.Text;
                               noe_bar_aq.Open;
                               if noe_bar_aq.RecordCount>0 then begin
                                                                 Application.MessageBox('��� ��� ��� ���� ��� ��� ���','����',MB_OK+MB_ICONSTOP);
                                                                 exit;
                                                                end
                                else begin
                                       noe_bar_aq.Close;
                                       noe_bar_aq.SQL.Clear;
                                       noe_bar_aq.SQL.Add('INSERT INTO noe_bar(name) ');
                                       noe_bar_aq.SQL.Add('values (:i0)');
                                       noe_bar_aq.Parameters[0].Value:=noe_bar.Text;
                                       noe_bar_aq.ExecSQL;
                                       Application.MessageBox('� ���� ������ ��','����',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
{if amal.Caption='�����'then begin
                               if noe_bar.Text='' then exit;
                               noe_bar_aq.Close;
                               noe_bar_aq.SQL.Clear;
                               noe_bar_aq.SQL.Add('UPDATE noe_bar ');
                               noe_bar_aq.SQL.Add('SET name=:i0 ');
                               noe_bar_aq.SQL.Add(' where (name=:i1)');
                               noe_bar_aq.Parameters[0].Value:=noe_bar.Text;
                               noe_bar_aq.Parameters[1].Value:=noe_bar.Text;
                               noe_bar_aq.ExecSQL;
                               Application.MessageBox('�� ���� ����� ����','����',MB_OK+MB_ICONEXCLAMATION);
                               close;
                             end;  }
if amal.Caption='���' then begin
                              if noe_bar.Text='' then exit;
                              if Application.MessageBox('��� �� ��� ��� ���� ������� ����� �','�����',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       noe_bar_aq.Close;
                                       noe_bar_aq.SQL.Clear;
                                       noe_bar_aq.SQL.Add('DELETE FROM noe_bar');
                                       noe_bar_aq.SQL.Add(' where (name=:i0)');
                                       noe_bar_aq.Parameters[0].Value:= noe_bar.Text;
                                       noe_bar_aq.ExecSQL;
                                       Application.MessageBox('� ���� ��� ��','����',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
noe_bar.Text:='';
noe_bar.SetFocus;
end;

procedure Tnoe_bar_f.FormShow(Sender: TObject);
begin
noe_bar.SetFocus;
end;

procedure Tnoe_bar_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tnoe_bar_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tnoe_bar_f.noe_barEnter(Sender: TObject);
var
  i : integer;
begin
      noe_bar.Clear;
      noe_bar_aq.Close;
      noe_bar_aq.SQL.Clear;
      noe_bar_aq.SQL.Add('Select * From noe_bar order by name');
      noe_bar_aq.Open;
      noe_bar_aq.First;
      for i:=1 to noe_bar_aq.RecordCount do
            begin
               noe_bar.Items.Add(noe_bar_aq['name']);
               noe_bar_aq.Next;
             end;
end;

procedure Tnoe_bar_f.noe_barExit(Sender: TObject);
begin
if exitt.Focused then exit;
if noe_bar.Text='' then
        begin
          Application.MessageBox('���� ��� ��� �� ����� ������','����',MB_OK+MB_ICONSTOP);
          noe_bar.SetFocus;
         end
end;

procedure Tnoe_bar_f.noe_barKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

end.
