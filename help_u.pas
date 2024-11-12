unit help_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, ValEdit;

type
  Thelp_f = class(TForm)
    exitt: TBitBtn;
    Panel1: TPanel;
    ValueListEditor1: TValueListEditor;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  help_f: Thelp_f;

implementation

{$R *.dfm}

procedure Thelp_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thelp_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thelp_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
