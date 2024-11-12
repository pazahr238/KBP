unit megh_aval_sandoogh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, MonyEdit;

type
  Tmegh_aval_sandoogh_f = class(TForm)
    amal: TBitBtn;
    txtmeghdar: TLabel;
    exitt: TBitBtn;
    etebar_aq: TADOQuery;
    meghdar: TMonyEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure meghdarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meghdarExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meghdarEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  megh_aval_sandoogh_f: Tmegh_aval_sandoogh_f;

implementation
uses main_u;

{$R *.dfm}

procedure Tmegh_aval_sandoogh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tmegh_aval_sandoogh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tmegh_aval_sandoogh_f.amalClick(Sender: TObject);
begin
etebar_aq.Open;
etebar_aq.Edit;
etebar_aq['sandoogh']:=meghdar.Value;
etebar_aq.Post;
etebar_aq.Close;
Application.MessageBox('„ﬁœ«— «Ê·ÌÂ ’‰œÊﬁ „‘Œ’ ‘œ',' ÊÃÂ',Mb_ok + MB_ICONINFORMATION);
close;
end;

procedure Tmegh_aval_sandoogh_f.meghdarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tmegh_aval_sandoogh_f.meghdarExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(meghdar.Value), num , e);
if (e<>0) then
              begin
                Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »Â ⁄‰Ê«‰ „ﬁœ«— «Ê·ÌÂ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                meghdar.Clear;
                meghdar.SetFocus;
               end;
end;

procedure Tmegh_aval_sandoogh_f.FormShow(Sender: TObject);
begin
meghdar.SetFocus;
meghdar.BiDiMode:=bdRightToLeft;
end;

procedure Tmegh_aval_sandoogh_f.meghdarEnter(Sender: TObject);
begin
etebar_aq.Open;
etebar_aq.First;
meghdar.Value:=etebar_aq['sandoogh'];
etebar_aq.Close;
end;

procedure Tmegh_aval_sandoogh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
