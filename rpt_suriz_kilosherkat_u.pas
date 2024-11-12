unit rpt_suriz_kilosherkat_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, Buttons, DB, ADODB, Grids,
  DBGrids, DBGrid_Edit, ExtCtrls;

type
  Trpt_suriz_kilosherkat_f = class(TForm)
    Panel1: TPanel;
    txtsherkat: TLabel;
    sherkat_aq: TADOQuery;
    main_aq: TADOQuery;
    Main_sherkat_db: TfrxDBDataset;
    amal: TBitBtn;
    exitt: TBitBtn;
    sherkat: TComboBox;
    rpt_suriz_kilosherkat: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure amalClick(Sender: TObject);
    procedure sherkatDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_suriz_kilosherkat_f: Trpt_suriz_kilosherkat_f;
  tarikh_rpt : TfrxMemoView;

implementation
       uses ras, ras2 , date_assis ;
{$R *.dfm}

procedure Trpt_suriz_kilosherkat_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_suriz_kilosherkat_f.amalClick(Sender: TObject);
begin
          rpt_suriz_kilosherkat.LoadFromFile('suriz_kilosherkat.fr3');
          Main_aq.Close;
          Main_aq.SQL.Clear;
          Main_aq.SQL.Add('Select * FROM mahal where sherkat=:i0 ORDER BY mahal');
          main_aq.Parameters[0].Value:=sherkat.Text;
          Main_aq.Open;
          //---------------------------------
          tarikh_rpt :=rpt_suriz_kilosherkat.FindObject('Memo_tarikh') as TfrxMemoView;
          tarikh_rpt.Text := long_date_format;

          if main_aq.RecordCount=0
            then
             Application.MessageBox('„Õ·  Œ·ÌÂ «Ì »Â ‰«„ «Ì‰ ‘—ﬂ  À»  ‰‘œÂ «” ',' ÊÃÂ',0)
              else
                  rpt_suriz_kilosherkat.ShowReport;
          sherkat.SetFocus;
end;

procedure Trpt_suriz_kilosherkat_f.sherkatDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
sherkat.Height:=45;
end;

procedure Trpt_suriz_kilosherkat_f.sherkatKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=13) then begin
                   if (sherkat.Text='')
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘—ﬂ  —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              sherkat.SetFocus;
                             end
                              else amal.SetFocus;
                  end;
end;

procedure Trpt_suriz_kilosherkat_f.sherkatEnter(Sender: TObject);
var
  i:integer;
begin
sherkat.Clear;
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from sherkat order by sherkat');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['sherkat']);
        sherkat_aq.Next;
       end;
end;

procedure Trpt_suriz_kilosherkat_f.FormShow(Sender: TObject);
begin
sherkat.SetFocus;
sherkat.BiDiMode:=bdRightToLeft;
end;

procedure Trpt_suriz_kilosherkat_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_suriz_kilosherkat_f.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
