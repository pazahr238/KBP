unit rpt_payaneh_barnameh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, StdCtrls, Buttons, Mask;

type
  Trpt_payaneh_barnameh_f = class(TForm)
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    main_payaneh_barnameh_aq: TADOQuery;
    payaneh_barnameh_db: TfrxDBDataset;
    rpt_payaneh_barnameh: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_payaneh_barnameh_f: Trpt_payaneh_barnameh_f;
  tarikh_rpt : TfrxMemoView; 

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_payaneh_barnameh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_payaneh_barnameh_f.FormShow(Sender: TObject);
begin
tarikh1.SetFocus;
end;

procedure Trpt_payaneh_barnameh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_payaneh_barnameh_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('���� ����� ����� ���� ����� ���� ������','����',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_payaneh_barnameh_f.tarikh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_payaneh_barnameh_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('���� ����� ����� ���� ����� ���� ������','����',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_payaneh_barnameh_f.tarikh2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_payaneh_barnameh_f.amalClick(Sender: TObject);
var
  str  : array [1..2,1..2] of string;
  sss  : string;
  c , i : integer;
begin
if tarikh1.EditText<>'____/__/__'
 then begin
       str[1,2]:=tarikh1.EditText;
       str[1,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[2,2]:=tarikh2.EditText;
       str[2,1]:='tarikh<';
      end;
c:=1; sss:='';
for i:=1 to 2 do begin
                   if str[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                              sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
rpt_payaneh_barnameh.LoadFromFile('payaneh_barnameh.fr3');
//-------------------------------------
main_payaneh_barnameh_aq.Close;
main_payaneh_barnameh_aq.SQL.Clear;
main_payaneh_barnameh_aq.SQL.Add('SELECT shomareh ,  tarikh , mashin , mabda , maghsad , noebar , kerayeh , daramad  FROM  payaneh_barnameh ');
main_payaneh_barnameh_aq.SQL.Add(sss);
main_payaneh_barnameh_aq.SQL.Add(' order by tarikh');

main_payaneh_barnameh_aq.Open;
//ShowMessage(main_aq.SQL.Text);
//-------------------------------------
tarikh_rpt :=rpt_payaneh_barnameh.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if main_payaneh_barnameh_aq.RecordCount=0
  then
   Application.MessageBox('������� �� ���� ���','����',0)
    else
      rpt_payaneh_barnameh.ShowReport;
tarikh1.SetFocus;
end;

procedure Trpt_payaneh_barnameh_f.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
