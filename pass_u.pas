unit pass_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  Tpass_f = class(TForm)
    txtpass: TLabel;
    pass: TEdit;
    pass_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pass_f: Tpass_f;

implementation
    uses main_u ; 
{$R *.dfm}

end.
