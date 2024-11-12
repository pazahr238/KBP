unit setting_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, MonyEdit, DB, ADODB, ExtCtrls,
  filectrl, SelectDirectoryDialog;

type
  Tsetting_f = class(TForm)
    Panel1: TPanel;
    txtgazoil: TLabel;
    Label1: TLabel;
    txthafari: TLabel;
    gazoil: TMonyEdit;
    amal: TBitBtn;
    exitt: TBitBtn;
    hafari: TEdit;
    setting_aq: TADOQuery;
    sqlserver_path: TEdit;
    sqlserver_pathtxt: TLabel;
    btn_path: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gazoilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hafariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_pathClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  setting_f: Tsetting_f;

implementation

{$R *.dfm}

procedure Tsetting_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tsetting_f.exittClick(Sender: TObject);
begin
Close;
end;

procedure Tsetting_f.FormShow(Sender: TObject);
begin
gazoil.BiDiMode:=bdRightToLeft;
hafari.BiDiMode:=bdRightToLeft;
gazoil.Value:=setting_aq['gazoil'];
hafari.Text:=setting_aq['hafari'];
sqlserver_path.Text:=setting_aq['sqlserver_path'];
end;

procedure Tsetting_f.gazoilKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then hafari.SetFocus;
end;

procedure Tsetting_f.amalClick(Sender: TObject);
begin
setting_aq.Open;
setting_aq.Edit;
setting_aq['gazoil']:=gazoil.Value;
setting_aq['hafari']:=hafari.Text;
setting_aq['sqlserver_path']:=sqlserver_path.Text;
setting_aq.Post;
Application.MessageBox(' €ÌÌ—«  «⁄„«· ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
close;
end;

procedure Tsetting_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tsetting_f.hafariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tsetting_f.btn_pathClick(Sender: TObject);
var
  Dir: string;
begin
if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate,
                           sdPrompt], 0) then
    sqlserver_path.Text := Dir;
end;

end.
