unit rpt_vam_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, Buttons, Mask, DB, ADODB, Grids,
  DBGrids, DBGrid_Edit, ExtCtrls;

type
  Trpt_vam_f = class(TForm)
    Panel1: TPanel;
    txtname: TLabel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    name: TDBGrid_Edit;
    person_aq: TADOQuery;
    person_ds: TDataSource;
    vam_aq: TADOQuery;
    vam_db: TfrxDBDataset;
    rpt_vam: TfrxReport;
    exitt: TBitBtn;
    amal: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure nameDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure nameEnter(Sender: TObject);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  rpt_vam_f: Trpt_vam_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_vam_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_vam_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_vam_f.nameDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
name.Height:=55;
end;

procedure Trpt_vam_f.nameEnter(Sender: TObject);
begin
if Not name.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Trpt_vam_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (not name.Is_Find_Field)
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                              name.Edit_Search.Clear;
                              name.Edit_Search.SetFocus;
                             end
                              else begin
                                      tarikh1.SetFocus;
                                      name.Hide;
                                    end;
                  end;
end;

procedure Trpt_vam_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_vam_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_vam_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_vam_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_vam_f.FormShow(Sender: TObject);
begin
name.Edit_Search.BiDiMode:=bdRightToLeft;
name.Edit_Search.Ctl3D:=false;
name.Edit_Search.SetFocus;
end;

procedure Trpt_vam_f.amalClick(Sender: TObject);
var
  str , str2 , str3 : array [1..3,1..2] of string;
  sss , sss2 , sss3 : string;
  c , i : integer;
  m1 , m2 : variant;
begin
if (name.Edit_Search.Text<>'') and (name.Return_Value<>'0')
                        then
                          begin
                            str[1,2]:=name.Edit_Search.text;
                            str[1,1]:='name';
                            str2[1,2]:=name.Edit_Search.text;
                            str2[1,1]:='mashin';
                            str3[1,2]:=name.Edit_Search.text;
                            str3[1,1]:='sherkat';
                          end
                            else begin
                                   Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ êÌ—‰œÂ Ê«„ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                                   exit;
                                  end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[2,2]:=tarikh1.EditText;
       str[2,1]:='tarikh>';
       str2[2,2]:=tarikh1.EditText;
       str2[2,1]:='tarikh>';
       str3[2,2]:=tarikh1.EditText;
       str3[2,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh2.EditText;
       str[3,1]:='tarikh<';
       str2[3,2]:=tarikh2.EditText;
       str2[3,1]:='tarikh<';
       str3[3,2]:=tarikh2.EditText;
       str3[3,1]:='tarikh<';
      end;
c:=1; sss:='';
for i:=1 to 3 do begin
                   if str[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                               sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss2:='';
for i:=1 to 3 do begin
                   if str2[i,2]='' then continue else begin
                                                       if c=1 then
                                                           sss2:=sss2 + ' where (' + str2[i,1] + '=' + chr(39) + str2[i,2] + chr(39) + ')'
                                                          else
                                                           sss2:=sss2 + ' and (' + str2[i,1] + '=' + chr(39) + str2[i,2] + chr(39) + ')';
                                                        c:=c+1;
                                                       end;
                  end;
c:=1; sss3:='';
for i:=1 to 3 do begin
                   if str3[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss3:=sss3 + ' where (' + str3[i,1] + '=' + chr(39) + str3[i,2] + chr(39) + ')'
                                                          else
                                                               sss3:=sss3+ ' and (' + str3[i,1] + '=' + chr(39) + str3[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
vam_aq.Close;
vam_aq.SQL.Clear;
vam_aq.SQL.Add('Select mandeh from person ');
vam_aq.SQL.Add('where name=' + chr(39) + name.Edit_Search.Text +chr(39));
vam_aq.Open;
vam_aq.First;
m1:=0;m2:=0;
if vam_aq['mandeh']<0 then m1:=-vam_aq['mandeh']
    else m2:=vam_aq['mandeh'];
rpt_vam.LoadFromFile('vam.fr3');
//-------------------------------------
vam_aq.Close;
vam_aq.SQL.Clear;
vam_aq.SQL.Add('SELECT     ' + chr(39) + chr(39) + ' as tarikh , 0 as sanad , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as babat , ' + chr(39) + name.Edit_Search.Text + chr(39) + ' as name , ' + vartostr(m1) + ' AS bedehkar, ' + vartostr(m2) + ' AS bestankar FROM   Person ');
vam_aq.SQL.Add('Where (name=' + chr(39) + name.Edit_Search.Text + chr(39) + ')');
vam_aq.SQL.Add(' UNION ');
vam_aq.SQL.Add('SELECT     tarikh , sanad , babat , name , mablagh AS bedehkar, 0 AS bestankar FROM   Hazineh ');
vam_aq.SQL.Add(sss);
vam_aq.SQL.Add(' UNION ');
vam_aq.SQL.Add('SELECT     tarikh , sanad , sharh as babat , mashin , mablagh AS bedehkar, 0 AS bestankar FROM     Hes_Melk ');
vam_aq.SQL.Add(sss2);
vam_aq.SQL.Add(' UNION ');
vam_aq.SQL.Add('(SELECT     tarikh , residpk , babat , sherkat , 0 as bedehkar , mablagh_ch AS bestankar FROM    havaleh_check ');
vam_aq.SQL.Add(sss3);
vam_aq.SQL.Add(') order by tarikh');
vam_aq.Open;
//---------------------------------------------------
tarikh_rpt :=rpt_vam.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if vam_aq.RecordCount=0
  then
   Application.MessageBox('«Ì‰ ‘Œ’ »œÂÌ ‰œ«—œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION)                     
    else
      rpt_vam.ShowReport;
name.Edit_Search.SetFocus;
end;

procedure Trpt_vam_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
