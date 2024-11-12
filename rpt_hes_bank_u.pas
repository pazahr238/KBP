unit rpt_hes_bank_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, frxClass, frxDBSet, Mask, DB, ADODB, Grids,
  DBGrids, DBGrid_Edit, ExtCtrls;

type
  Trpt_hes_bank_f = class(TForm)
    Panel1: TPanel;
    txthesab: TLabel;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    tarikh2: TMaskEdit;
    tarikh1: TMaskEdit;
    hesab: TDBGrid_Edit;
    hesab_ds: TDataSource;
    hesab_aq: TADOQuery;
    hes_bank_aq: TADOQuery;
    hes_bank_db: TfrxDBDataset;
    hesab_db: TfrxDBDataset;
    amal: TBitBtn;
    exitt: TBitBtn;
    rpt_hes_bank: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure hesabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_hes_bank_f: Trpt_hes_bank_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u , ras2, ras, date_assis;

{$R *.dfm}

procedure Trpt_hes_bank_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hes_bank_f.hesabDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
hesab.Height:=55;
end;

procedure Trpt_hes_bank_f.hesabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (not hesab.Is_Find_Field) or (hesab.Edit_Search.Text='')
                      then begin
                              Application.MessageBox('·ÿ›« Õ”«» »«‰ﬂÌ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              hesab.Edit_Search.Clear;
                              hesab.Edit_Search.SetFocus;
                             end
                              else tarikh1.SetFocus;
                  end;
end;

procedure Trpt_hes_bank_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hes_bank_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hes_bank_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hes_bank_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hes_bank_f.FormShow(Sender: TObject);
begin
hesab.Edit_Search.SetFocus;
hesab.Edit_Search.Ctl3D:=false;
hesab.Edit_Search.BiDiMode:=bdRightToLeft;
end;

procedure Trpt_hes_bank_f.amalClick(Sender: TObject);
var
  str , str2 : array [1..3,1..2] of string;
  sss , sss2 , datetext : string;
  c , i : integer;
  mandeh , m1 , m2 , m11 , m22 : variant;
begin
mandeh:=0;
if not hesab.Is_Find_Field then begin
                                  Application.MessageBox('·ÿ›« ‘„«—Â Õ”«» —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                                  hesab.Edit_Search.SetFocus;
                                  hesab.Edit_Search.Clear;
                                  exit;
                                 end;

if (hesab.Edit_Search.Text<>'') and (hesab.Return_Value<>'0')
                        then
                          begin
                            str[1,2]:=VarToStr(hesab.Return_Value);
                            str[1,1]:='hesab=';
                            str2[1,2]:=VarToStr(hesab.Return_Value);
                            str2[1,1]:='hesab=';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[2,2]:=tarikh1.EditText;
       str[2,1]:='tarikh>=';
       str2[2,2]:='1385/05/01';
       str2[2,1]:='tarikh>=';
       str2[3,2]:=tarikh1.Text;
       str2[3,1]:='tarikh<';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh2.EditText;
       str[3,1]:='tarikh<=';
      end;
c:=1; sss:='';
for i:=1 to 3 do begin
                   if str[i,2]='' then continue else begin
                                                       sss:=sss + ' and (' + str[i,1] +  chr(39) + str[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss2:='';
for i:=1 to 3 do begin
                   if str2[i,2]='' then continue else begin
                                                       sss2:=sss2 + ' and (' + str2[i,1] +  chr(39) + str2[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
rpt_hes_bank.LoadFromFile('hes_bank.fr3');
///////////////////////////////////////////// Mohasebeye Mandeh //////////////////////////////
if (tarikh1.EditText>'1385/05/01') and (tarikh1.EditText<>'____/__/__')
    then
      begin
hes_bank_aq.Close;
hes_bank_aq.SQL.Clear;
//-------------------------- mashin estijari ---------------
hes_bank_aq.SQL.Add('Select Sum(bedehkar) - Sum(bestankar) AS man From (SELECT tarikh , chek , sharh , mashin as dary , mablagh as bedehkar , 0 as bestankar FROM Hes_Melk WHERE ((mashin IN  (SELECT mashin FROM kamion_esti)) or (mashin=' + chr(39) + VarToStr(hesab.Return_Value) + chr(39) + ') or (mashin IN  (SELECT name FROM Person))) ');
hes_bank_aq.SQL.Add(sss2);

//-------------------------- mashin melki ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT MAX(tarikh) AS tarikh , chek , MAX(mahal) AS sharh, MAX(mahal) AS dary, sum(mablagh) AS bedehkar, 0 AS bestankar FROM Hes_Melk WHERE (mashin IN  (SELECT mashin FROM kamion_melki)) ');
hes_bank_aq.SQL.Add(sss2);
hes_bank_aq.SQL.Add(' and (az = ' + chr(39) + 'Õ”«» »«‰ﬂÌ' + chr(39) +  ') ');
hes_bank_aq.SQL.Add(' Group By chek ');

//----------------------- hazineh haye sherkat ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT tarikh , chek , mahal as sharh , ' + chr(39) + 'Â“Ì‰Â Â«Ì ‘—ò ' + chr(39) + ' as dary , mablagh as bedehkar , 0 as bestankar FROM Hes_Melk WHERE (mashin=' + chr(39) + 'Â“Ì‰Â Â«Ì ‘—ò ' + chr(39) + ') ');
hes_bank_aq.SQL.Add(sss2);

//---------------------- chek haye sherkat ha - resid pardakht kerayeh ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT tarikh , sh_ch as chek , mahal as sharh , sherkat as dary , 0 as bedehkar , mablagh_ch as bestankar FROM Havaleh_check WHERE (residpk<>0) ');
hes_bank_aq.SQL.Add(sss2);

//---------------------- kharide anbar - bank : anbarv ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT max(tarikh) as tarikh , chek , max(mahal) as sharh , max(mahal) as dary , sum(gh_kol) as bedehkar , 0 as bestankar FROM Anbarv WHERE (sanad<>0) ');
hes_bank_aq.SQL.Add(sss2);
hes_bank_aq.SQL.Add(' and (az = ' + chr(39) + 'Õ”«» »«‰ﬂÌ' + chr(39) +  ') ');
hes_bank_aq.SQL.Add(' Group By chek ');

//---------------------- vorudie tankhah - az bank be tankhah ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT tarikh , chek , ' + chr(39) + 'Ê—ÊœÌ  ‰ŒÊ«Â' + chr(39) + ' as sharh , ' + chr(39) + '’‰œÊﬁ' + chr(39) + ' as dary , mablagh as bedehkar , 0 as bestankar FROM tankhah_vrd WHERE (sanad>0) ');
hes_bank_aq.SQL.Add(sss2);
hes_bank_aq.SQL.Add(') Hes_Melk');
hes_bank_aq.Open;
if VarIsNull(hes_bank_aq['man']) then mandeh:=0
    else mandeh:=hes_bank_aq['man'];
datetext:='„«‰œÂ «“  «—ÌŒ 1385/05/01  « ﬁ»· «“ ' + tarikh1.text;
       end;

m1:=0;m2:=0;  m11:=0;m22:=0;
if mandeh>0 then m1:=mandeh
    else m2:=-mandeh;
hes_bank_aq.Close;
hes_bank_aq.SQL.Clear;
hes_bank_aq.SQL.Add('Select man_aval from hesab ');
hes_bank_aq.SQL.Add('where shomareh=' + vartostr(hesab.Return_Value) );
hes_bank_aq.Open;
hes_bank_aq.First;
m11:=0;m22:=0;
if hes_bank_aq['man_aval']<0 then m11:=-hes_bank_aq['man_aval']
    else m22:=hes_bank_aq['man_aval'];
///////////////////////////////////////////// End of Mohasebeye Mandeh ///////////////////////
hes_bank_aq.Close;
hes_bank_aq.SQL.Clear;
//-------------------------- mandeh maghtaei -----------------
hes_bank_aq.SQL.Add('SELECT   ' + chr(39) + chr(39) + ' as tarikh , 0 as chek , ' + chr(39) + datetext + chr(39) + ' as sharh , ' + chr(39) + chr(39) + ' as dary , ' + varToStr(m1) + ' as bedehkar , ' + varToStr(m2) + ' as bestankar FROM Hesab WHERE (shomareh=' + VarToStr(hesab.Return_Value) + ') ');
//-------------------------- mandeh avalie -----------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT   ' + chr(39) + chr(39) + ' as tarikh , 0 as chek , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as sharh , ' + chr(39) + chr(39) + ' as dary , ' + varToStr(m11) + ' as bedehkar , ' + varToStr(m22) + ' as bestankar FROM Hesab WHERE (shomareh=:i0) ');
hes_bank_aq.Parameters[0].Value:=hesab.Return_Value;

//-------------------------- mashin estijari ---------------
hes_bank_aq.SQL.Add(' UNION ');   
hes_bank_aq.SQL.Add('SELECT tarikh , chek , sharh , mashin as dary , mablagh as bedehkar , 0 as bestankar FROM Hes_Melk WHERE ((mashin IN  (SELECT mashin FROM kamion_esti)) or (mashin=' + chr(39) + VarToStr(hesab.Return_Value) + chr(39) + ') or (mashin IN  (SELECT name FROM Person))) ');
hes_bank_aq.SQL.Add(sss);

//-------------------------- mashin melki ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT MAX(tarikh) AS tarikh , chek , MAX(mahal) AS sharh, MAX(mahal) AS dary, sum(mablagh) AS bedehkar, 0 AS bestankar FROM Hes_Melk WHERE (mashin IN  (SELECT mashin FROM kamion_melki)) ');
hes_bank_aq.SQL.Add(sss);
hes_bank_aq.SQL.Add(' and (az = ' + chr(39) + 'Õ”«» »«‰ﬂÌ' + chr(39) +  ') ');
hes_bank_aq.SQL.Add(' Group By chek ');

//----------------------- hazineh haye sherkat ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT tarikh , chek , mahal as sharh , ' + chr(39) + 'Â“Ì‰Â Â«Ì ‘—ò ' + chr(39) + ' as dary , mablagh as bedehkar , 0 as bestankar FROM Hes_Melk WHERE (mashin=' + chr(39) + 'Â“Ì‰Â Â«Ì ‘—ò ' + chr(39) + ') ');
hes_bank_aq.SQL.Add(sss);

//---------------------- chek haye sherkat ha - resid pardakht kerayeh ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT tarikh , sh_ch as chek , mahal as sharh , sherkat as dary , 0 as bedehkar , mablagh_ch as bestankar FROM Havaleh_check WHERE (residpk<>0) ');
hes_bank_aq.SQL.Add(sss);

//---------------------- kharide anbar - bank : anbarv ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('SELECT max(tarikh) as tarikh , chek , max(mahal) as sharh , max(mahal) as dary , sum(gh_kol) as bedehkar , 0 as bestankar FROM Anbarv WHERE (sanad<>0) ');
hes_bank_aq.SQL.Add(sss);
hes_bank_aq.SQL.Add(' and (az = ' + chr(39) + 'Õ”«» »«‰ﬂÌ' + chr(39) +  ') ');
hes_bank_aq.SQL.Add(' Group By chek ');

//---------------------- vorudie tankhah - az bank be tankhah ---------------
hes_bank_aq.SQL.Add(' UNION ');
hes_bank_aq.SQL.Add('(SELECT tarikh , chek , ' + chr(39) + 'Ê—ÊœÌ  ‰ŒÊ«Â' + chr(39) + ' as sharh , ' + chr(39) + '’‰œÊﬁ' + chr(39) + ' as dary , mablagh as bedehkar , 0 as bestankar FROM tankhah_vrd WHERE (sanad>0) ');
hes_bank_aq.SQL.Add(sss);
hes_bank_aq.SQL.Add(') order by tarikh');
hes_bank_aq.Open;
//-------------------------------------
tarikh_rpt :=rpt_hes_bank.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if hes_bank_aq.RecordCount=0
  then
   Application.MessageBox('Õ”«» »«‰ﬂÌ „Ê—œ ‰Ÿ— ’›— «” ',' ÊÃÂ',0)
    else
      rpt_hes_bank.ShowReport;
hesab.Edit_Search.SetFocus;
end;

procedure Trpt_hes_bank_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hes_bank_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
