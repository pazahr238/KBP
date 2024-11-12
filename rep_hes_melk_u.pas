unit rep_hes_melk_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ADODB, Buttons, Mask;

type
  Trep_hes_melk_f = class(TForm)
    txtmashin: TLabel;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    rpt_karmashin: TfrxReport;
    main_aq: TADOQuery;
    Main_karmashin_db: TfrxDBDataset;
    mashin: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rep_hes_melk_f: Trep_hes_melk_f;

implementation

{$R *.dfm}

procedure Trep_hes_melk_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trep_hes_melk_f.exittClick(Sender: TObject);
begin
close;
end;

end.
