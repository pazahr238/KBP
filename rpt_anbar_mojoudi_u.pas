unit rpt_anbar_mojoudi_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, frxClass, frxDBSet, DB, ADODB;

type
  Trpt_anbar_mojoudi_f = class(TForm)
    prog: TProgressBar;
    Timer: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_anbar_mojoudi_f: Trpt_anbar_mojoudi_f;

implementation

{$R *.dfm}

procedure Trpt_anbar_mojoudi_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
