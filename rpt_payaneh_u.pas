unit rpt_payaneh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, frxClass, frxDBSet;

type
  Trpt_payaneh_f = class(TForm)
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    exitt: TBitBtn;
    amal: TBitBtn;
    Main_payaneh_db: TfrxDBDataset;
    main_aq: TADOQuery;
    rpt_payaneh: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_payaneh_f: Trpt_payaneh_f;
  tarikh_rpt : TfrxMemoView; 

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_payaneh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_payaneh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_payaneh_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_payaneh_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_payaneh_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_payaneh_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_payaneh_f.FormShow(Sender: TObject);
begin
tarikh1.SetFocus;
end;

procedure Trpt_payaneh_f.amalClick(Sender: TObject);
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
rpt_payaneh.LoadFromFile('payaneh.fr3');
//-------------------------------------
Main_aq.Close;
Main_aq.SQL.Clear;
Main_aq.SQL.Add('SELECT   shomareh ,  tarikh , mashin , mabda , maghsad , noebar as sharh , kerayeh , haghp , daramad AS bestankar ,  0 AS bedehkar , 0 as mandeh  FROM   payaneh_barnameh ');
Main_aq.SQL.Add(sss);
Main_aq.SQL.Add(' UNION ');
Main_aq.SQL.Add('SELECT  sanad as shomareh ,  tarikh , ' + chr(39) + '„«‰œÂ Õ”«»' + chr(39) + ' as mashin , ' + chr(39) + chr(39) + ' as mabda , ' + chr(39) + chr(39) + ' as maghsad , sharh , 0 as kerayeh , 0 as haghp , 0 AS bestankar ,  0 AS bedehkar , mablagh as mandeh  FROM   payaneh_mandeh  ');
Main_aq.SQL.Add(sss);
Main_aq.SQL.Add(' UNION ');
Main_aq.SQL.Add('(SELECT  sanad as shomareh ,  tarikh , ' + chr(39) + 'Â“Ì‰Â' + chr(39) + ' as mashin , ' + chr(39) + chr(39) + ' as mabda , ' + chr(39) + chr(39) + ' as maghsad , sharh , 0 as kerayeh , 0 as haghp , 0 AS bestankar ,  mablagh AS bedehkar , 0 as mandeh  FROM   payaneh_sanad  ');
Main_aq.SQL.Add(sss);
Main_aq.SQL.Add(') order by tarikh');

Main_aq.Open;
//-------------------------------------
tarikh_rpt :=rpt_payaneh.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if main_aq.RecordCount=0
  then
   Application.MessageBox('»«—‰«„Â Ì« ”‰œÌ Ì«›  ‰‘œ',' ÊÃÂ',0)
    else
      rpt_payaneh.ShowReport;
tarikh1.SetFocus;
end;

procedure Trpt_payaneh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
