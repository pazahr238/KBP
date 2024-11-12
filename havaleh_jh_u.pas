unit havaleh_jh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBGrids, DBGrid_Edit, Grids, StdCtrls, Mask, Buttons,
  ExtCtrls, DBCtrls, frxClass, frxDBSet;

type
  Thavaleh_jh_f = class(TForm)
    exitt: TBitBtn;
    amal: TBitBtn;
    GroupBox1: TGroupBox;
    txttarikh1: TLabel;
    txttedad: TLabel;
    txtnoe: TLabel;
    txtshomarehh: TLabel;
    txtmablagh1: TLabel;
    txtmablagh2: TLabel;
    tarikh1: TMaskEdit;
    tedad: TEdit;
    noe: TComboBox;
    shomarehh: TEdit;
    mablagh1: TEdit;
    mablagh2: TEdit;
    havaleh_view_aq: TADOQuery;
    grid: TDBGrid;
    havaleh_ds: TDataSource;
    nav: TDBNavigator;
    txtsherkat: TLabel;
    sherkat: TDBGrid_Edit;
    sherkat_ds: TDataSource;
    sherkat_aq: TADOQuery;
    txttarikh2: TLabel;
    tarikh2: TMaskEdit;
    h_index: TEdit;
    txth_index: TLabel;
    rep: TBitBtn;
    havaleh_search_db: TfrxDBDataset;
    mahal: TDBGrid_Edit;
    txtmahal: TLabel;
    reff: TBitBtn;
    mahal_aq: TADOQuery;
    mahal_ds: TDataSource;
    rpt_havaleh_search: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tedadExit(Sender: TObject);
    procedure tedadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shomarehhExit(Sender: TObject);
    procedure shomarehhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablagh1Exit(Sender: TObject);
    procedure mablagh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablagh2Exit(Sender: TObject);
    procedure mablagh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablagh_chKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mandehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure havaleh_view_aqAfterScroll(DataSet: TDataSet);
    procedure repClick(Sender: TObject);
    procedure sherkatDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mahalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sherkatEnter(Sender: TObject);
    procedure mahalEnter(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reffClick(Sender: TObject);
    procedure reffEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  havaleh_jh_f: Thavaleh_jh_f;
  tarikh_rpt : TfrxMemoView;

implementation
      uses main_u, ras, ras2 , date_assis;
{$R *.dfm}

procedure Thavaleh_jh_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thavaleh_jh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thavaleh_jh_f.amalClick(Sender: TObject);
var
  str : array [1..10,1..2] of string;
  sss : string;
  c , i , num , e: integer;
begin
if sherkat.Return_Value<>'0' then
             begin
              str[1,2]:=sherkat.Edit_Search.Text;
              str[1,1]:='sherkat';
             end;

if mahal.Return_Value<>'0' then
             begin
              str[2,2]:=mahal.Edit_Search.Text;
              str[2,1]:='mahal';
             end;

if (main_f.check_date(tarikh1.EditText))
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>';
      end;

if (main_f.check_date(tarikh2.EditText))
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<';
      end;

val(tedad.Text, num, e);
if (tedad.Text<>'') and (tedad.text<>'0') and (e=0)
                        then
                          begin
                            str[5,2]:= tedad.text;
                            str[5,1]:='tedad';
                          end;

if (noe.Text<>'') then
                      begin
                        str[6,2]:= noe.text ;
                        str[6,1]:='noe';
                       end;

val(shomarehh.Text, num, e);
if (shomarehh.Text<>'') and (shomarehh.text<>'0') and (e=0)
                        then
                          begin
                            str[7,2]:= shomarehh.text;
                            str[7,1]:='shomareh1<';
                            str[8,2]:= shomarehh.text;
                            str[8,1]:='shomareh2>';
                          end;

val(mablagh1.Text, num, e);
if (mablagh1.Text<>'') and (mablagh1.text<>'0') and (e=0)
                        then
                          begin
                            str[9,2]:= mablagh1.text;
                            str[9,1]:='mablagh>';
                          end;

val(mablagh2.Text, num ,e);
if (mablagh2.Text<>'') and (mablagh2.text<>'0') and (e=0)
                        then
                          begin
                            str[10,2]:= mablagh2.text;
                            str[10,1]:='mablagh<';
                          end;
c:=1; sss:='';
for i:=1 to 10 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then begin
                                                                   if (str[i,1]='sherkat') or (str[i,1]='mahal') or (str[i,1]='noe') or (str[i,1]='shomareh1<') or (str[i,1]='shomareh2>') or (str[i,1]='tarikh<') or (str[i,1]='tarikh>')
                                                                    then
                                                                     sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                                      else
                                                                        sss:=sss + ' where (' + str[i,1] + '=' + str[i,2] + ')'
                                                                  end
                                                          else begin
                                                                   if (str[i,1]='sherkat') or (str[i,1]='mahal') or (str[i,1]='noe') or (str[i,1]='shomareh1<') or (str[i,1]='shomareh2>') or (str[i,1]='tarikh<') or (str[i,1]='tarikh>')
                                                                    then
                                                                     sss:=sss + ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                                      else
                                                                        sss:=sss+ ' and (' + str[i,1] + '=' + str[i,2] + ')' ;
                                                                end;
                                                       c:=c+1;
                                                      end;
                  end;
//ShowMessage(sss);
havaleh_view_aq.Close;
havaleh_view_aq.SQL.Clear;
havaleh_view_aq.SQL.Add('select * from havaleh ' + sss + ' order by tarikh');
havaleh_view_aq.Open;

//--------------------------------------------------------- end of amal click ---------------------------------------
end;

procedure Thavaleh_jh_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                  mahal.Edit_Search.SetFocus;
                  fff:=true;
                  reffClick(havaleh_jh_f);
                end;
end;

procedure Thavaleh_jh_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Thavaleh_jh_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Thavaleh_jh_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Thavaleh_jh_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tedad.SetFocus;
end;

procedure Thavaleh_jh_f.tedadExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(tedad.Text,num,e);
if ((e<>0) and (tedad.Text<>'')) or (tedad.Text='0') 
           then
              begin
               Application.MessageBox('·ÿ›«  ⁄œ«œ ÕÊ«·Â —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               tedad.Clear;
               tedad.SetFocus;
              end;
end;

procedure Thavaleh_jh_f.tedadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then noe.SetFocus;
end;

procedure Thavaleh_jh_f.noeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shomarehh.SetFocus;
end;

procedure Thavaleh_jh_f.shomarehhExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(shomarehh.Text,num,e);
if (e<>0) and (shomarehh.Text<>'') then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â ÕÊ«·Â „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               shomarehh.Clear;
               shomarehh.SetFocus;
              end;
end;

procedure Thavaleh_jh_f.shomarehhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh1.SetFocus;
end;

procedure Thavaleh_jh_f.mablagh1Exit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(mablagh1.Text,num,e);
if (e<>0) and (mablagh1.Text<>'') then
              begin
               Application.MessageBox('·ÿ›« „»·€ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh1.Clear;
               mablagh1.SetFocus;
              end;
end;

procedure Thavaleh_jh_f.mablagh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh2.SetFocus;
end;

procedure Thavaleh_jh_f.mablagh2Exit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(mablagh2.Text,num,e);
if (e<>0) and (mablagh2.Text<>'') then
              begin
               Application.MessageBox('·ÿ›« „»·€ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh2.Clear;
               mablagh2.SetFocus;
              end;
end;

procedure Thavaleh_jh_f.mablagh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thavaleh_jh_f.mablagh_chKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thavaleh_jh_f.mandehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thavaleh_jh_f.FormShow(Sender: TObject);
begin
sherkat.Edit_Search.BiDiMode:=bdRightToLeft;
sherkat.Edit_Search.Ctl3D:=false;
sherkat.Edit_Search.SetFocus;
mahal.Edit_Search.BiDiMode:=bdRightToLeft;
mahal.Edit_Search.Ctl3D:=false;
fff:=false;
end;

procedure Thavaleh_jh_f.havaleh_view_aqAfterScroll(DataSet: TDataSet);
begin
h_index.Text:='  ' + vartostr(havaleh_view_aq['h_index']);
end;

procedure Thavaleh_jh_f.repClick(Sender: TObject);
begin
rpt_havaleh_search.LoadFromFile('havaleh_search.fr3');
havaleh_view_aq.Open;
//---------------------------------------------------
tarikh_rpt :=rpt_havaleh_search.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if havaleh_view_aq.RecordCount=0
  then Application.MessageBox('ÕÊ«·Â «Ì »—«Ì ‰„«Ì‘ ÊÃÊœ ‰œ«—œ',' ÊÃÂ',0)
     else
      rpt_havaleh_search.ShowReport;
end;

procedure Thavaleh_jh_f.sherkatDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
sherkat.Height:=55;
end;

procedure Thavaleh_jh_f.mahalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
mahal.Height:=55;
end;

procedure Thavaleh_jh_f.sherkatEnter(Sender: TObject);
begin
if Not sherkat.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Thavaleh_jh_f.mahalEnter(Sender: TObject);
begin
if Not mahal.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Thavaleh_jh_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Thavaleh_jh_f.reffClick(Sender: TObject);
begin
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Delete from mahal_temp ');
mahal_aq.ExecSQL;
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Insert into mahal_temp ');
mahal_aq.SQL.Add('select * from mahal ');
mahal_aq.SQL.Add('where (sherkat=:i0)');
mahal_aq.Parameters[0].Value:= sherkat.Edit_Search.Text;
mahal_aq.ExecSQL;
fff:=False;
end;

procedure Thavaleh_jh_f.reffEnter(Sender: TObject);
begin
if fff then reffClick(havaleh_jh_f);
mahal.Edit_Search.SetFocus;
end;

procedure Thavaleh_jh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
