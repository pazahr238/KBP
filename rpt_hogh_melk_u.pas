unit rpt_hogh_melk_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, StdCtrls, Buttons, Mask, Grids,
  DBGrids, DBGrid_Edit, ExtCtrls;

type
  Trpt_hogh_melk_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtmashin: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    mashin: TEdit;
    hogh_melk_aq: TADOQuery;
    Hogh_Melk_db: TfrxDBDataset;
    mashin_aq: TADOQuery;
    setting_aq: TADOQuery;
    hm_summary2_aq: TADOQuery;
    rpt_hm_summary2_db: TfrxDBDataset;
    amal: TBitBtn;
    tasvieh: TBitBtn;
    exitt: TBitBtn;
    rpt_hogh_melk: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure tasviehClick(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_hogh_melk_f: Trpt_hogh_melk_f;
  tarikh_rpt : TfrxMemoView; 
  sss , sss2 : string;

implementation

uses main_u , ras , ras2 , date_assis, ADOInt, tasvieh_mashin_u;

{$R *.dfm}

procedure Trpt_hogh_melk_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hogh_melk_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_hogh_melk_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then tarikh1.SetFocus;
end;

procedure Trpt_hogh_melk_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hogh_melk_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hogh_melk_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hogh_melk_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hogh_melk_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hogh_melk_f.amalClick(Sender: TObject);
var
  str , str2 : array [1..3,1..2] of string;
  c , i : integer;
  mgm , majmu : Variant;
begin
// ---------- check kardane taeene ranandeh ----------------------
if mashin.Text='' then begin
                          Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                          mashin.SetFocus;
                          exit;
                        end;

current_mashin:=mashin.Text;
//current_mashin:=mashin.Edit_Search.Text;
// ---------------------------------------------------------------
if (mashin.Text<>'') then
                         begin
                            str[1,2]:=mashin.Text;
                            str[1,1]:='mashin';
                            str2[1,2]:=mashin.Text;
                            str2[1,1]:='name';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[2,2]:=tarikh1.EditText;
       str[2,1]:='tarikh>';
       str2[2,2]:=tarikh1.EditText;
       str2[2,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh2.EditText;
       str[3,1]:='tarikh<';
       str2[3,2]:=tarikh2.EditText;
       str2[3,1]:='tarikh<';
      end;

c:=1; sss:='';
for i:=1 to 3 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then begin
                                                                    {if (str[i,1]='tarikh<') or (str[i,1]='tarikh>') then}
                                                                          sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                                        {else
                                                                          sss:=sss + ' where (' + str[i,1] + '=' + str[i,2] + ')'}
                                                                  end
                                                          else begin
                                                                    {if (str[i,1]='tarikh<') or (str[i,1]='tarikh>') then}
                                                                            sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                                          {else
                                                                            sss:=sss+ ' and (' + str[i,1] + '=' + str[i,2] + ')'}
                                                                end;
                                                     c:=c+1;
                                                    end;
                  end;
c:=1; sss2:='';
for i:=1 to 3 do begin
                   if str2[i,2]='' then continue else begin
                                                     if c=1 then begin
                                                                    {if (str[i,1]='tarikh<') or (str[i,1]='tarikh>') then}
                                                                          sss2:=sss2 + ' where (' + str2[i,1] + '=' + chr(39) + str2[i,2] + chr(39) + ')'
                                                                        {else
                                                                          sss:=sss + ' where (' + str[i,1] + '=' + str[i,2] + ')'}
                                                                  end
                                                          else begin
                                                                    {if (str[i,1]='tarikh<') or (str[i,1]='tarikh>') then}
                                                                            sss2:=sss2 + ' and (' + str2[i,1] + '=' + chr(39) + str2[i,2] + chr(39) + ')'
                                                                          {else
                                                                            sss:=sss+ ' and (' + str[i,1] + '=' + str[i,2] + ')'}
                                                                end;
                                                     c:=c+1;
                                                    end;
                  end;

rpt_hogh_melk.LoadFromFile('hogh_melk.fr3');
//----------------------- mohasebe mablagh gazoil masrafi -----------------------------
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('Select Sum(masafat) AS S , zarfiat  From Barnameh_Kamion ');
hogh_melk_aq.SQL.Add(sss);
hogh_melk_aq.SQL.Add(' Group By zarfiat');
hogh_melk_aq.Open;
if hogh_melk_aq.RecordCount=0 then
                                 begin
                                   majmu:=0;
                                   mgm:=0;
                                  end
                                   else begin
                                          if hogh_melk_aq['zarfiat']>=20000
                                                  then
                                                      mgm:=Round(hogh_melk_aq['S']*1.1*setting_aq['gazoil'])
                                                           else mgm:=Round(hogh_melk_aq['S']*0.9*setting_aq['gazoil']);
                                          majmu:=hogh_melk_aq['S'];
                                         end;
//----------------------- End of mohasebe mablagh gazoil masrafi ----------------------
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('SELECT     shomareh as sanad, tarikh, sharh, masafat, 0 AS bedehkar, hogh_melk AS bestankar , mashin FROM   Barnameh_Kamion ');
hogh_melk_aq.SQL.Add(sss);
hogh_melk_aq.SQL.Add(' UNION ');
hogh_melk_aq.SQL.Add('SELECT     sanad, tarikh, babat as sharh, 0 as masafat , mablagh AS bedehkar, 0 AS bestankar, name AS mashin FROM      hazineh ');
hogh_melk_aq.SQL.Add(sss2);
hogh_melk_aq.SQL.Add(' and ((babat LIKE ' + chr(39) + '%⁄·Ì «·Õ”«» ÕﬁÊﬁ%' + chr(39) + ') or (babat LIKE ' + chr(39) + '%ÕﬁÊﬁ ⁄·Ì «·Õ”«»%' + chr(39) + '))');
hogh_melk_aq.SQL.Add(' UNION ');
hogh_melk_aq.SQL.Add('SELECT     0 as sanad, ' + chr(39) + chr(39)+ ' as tarikh, ' + chr(39) + 'ê«“ÊÌÌ· „’—›Ì' + chr(39)+ ' as sharh , ' + VarToStr(majmu) + ' AS masafat , 0 AS bedehkar, ' + VarToStr(mgm) + ' AS bestankar, mashin FROM   Barnameh_Kamion ');
hogh_melk_aq.SQL.Add(sss);
hogh_melk_aq.SQL.Add(' UNION ');
hogh_melk_aq.SQL.Add('(SELECT     sanad, tarikh, ' + chr(39) + '⁄·Ì «·Õ”«» ÕﬁÊﬁ —«‰‰œÂ' + chr(39)+ ' as sharh , 0 as masafat , mablagh AS bedehkar, 0 AS bestankar, mashin FROM    Hes_Melk ');
hogh_melk_aq.SQL.Add(sss);
hogh_melk_aq.SQL.Add(' and ((sharh LIKE ' + chr(39) + '%⁄·Ì «·Õ”«» ÕﬁÊﬁ%' + chr(39) + ') or (sharh LIKE ' + chr(39) +  '%ÕﬁÊﬁ ⁄·Ì «·Õ”«»%' + chr(39) + '))');
hogh_melk_aq.SQL.Add(') order by tarikh');
hogh_melk_aq.Open;

//-----------------------------------------------------------------------------------
tarikh_rpt :=rpt_hogh_melk.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if hogh_melk_aq.RecordCount=0
  then begin
          Application.MessageBox('„Õ«”»Â ÕﬁÊﬁ —«‰‰œÂ „·ﬂÌ «„ﬂ«‰ Å–Ì— ‰Ì” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          mashin.Clear;
          mashin.SetFocus;
        end
     else begin
             rpt_hogh_melk.ShowReport;
             tasvieh.Enabled:=True;
            end;
end;                                                    

procedure Trpt_hogh_melk_f.tasviehClick(Sender: TObject);
var
  i , k : integer;
  s1 , s2 , s21 , s22 , s23 , s3 , s4 : int64;
  mon1 : string;
begin
if mashin.Text='' then begin
                          Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                          mashin.SetFocus;
                          exit;
                        end;

///////////////////////////////////////////////////////////////////////////////////////////////
//----------- bastane file mahane (tarikhe sabte tasvie) jahate jologiri az sabte mojadad -------
///////////////////////////////////////////////////////////////////////////////////////////////
if tarikh1.EditText<>'____/__/__' then
        mon1:=date_assis.Str_Mon(tarikh1.EditText)
          else mon1:=date_assis.Str_Mon(long_date_format);

///////////////////////////////////////////////////////////////////////////////////////
//----------- check kardane inke ghablan tasvie anjam shode ya an ?!! -----------------
///////////////////////////////////////////////////////////////////////////////////////
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('SELECT * FROM Date_Hes_Mashin ');
hogh_melk_aq.SQL.Add('WHERE (name=:i0) and (mon=:i1)');
hogh_melk_aq.Parameters[0].Value:=mashin.Text;
hogh_melk_aq.Parameters[1].Value:=mon1;
hogh_melk_aq.Open;
if hogh_melk_aq.RecordCount>0 then begin
                                     Application.MessageBox(' ”ÊÌÂ »—«Ì «Ì‰ „«‘Ì‰ ﬁ»·« «‰Ã«„ ‘œÂ «” ',' ÊÃÂ',0);
                                     tasvieh.Enabled:=false;
                                     exit;
                                   end;

//---------------------- sabte tasvie va ghofl shodane mahe jari ----------------------
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('INSERT INTO Date_Hes_Mashin(name,mon) ');
hogh_melk_aq.SQL.Add('Values (:i0,:i1)');
hogh_melk_aq.Parameters[0].Value:=mashin.Text;
hogh_melk_aq.Parameters[1].Value:=mon1;
hogh_melk_aq.ExecSQL;

//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////// mohasebeye maghadire bedehkari va bestankarie ranandeh //////////////
//////////////////////////////////////////////////////////////////////////////////////////////
//------------------------- ghesmate Bestankari haye ranandeh ----------------
//------------------------- Jame keraye haye barnamehaye avarde shode ------------
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('SELECT SUM(kerayehk) AS S1 From Barnameh ' + sss );
hogh_melk_aq.Open;
hogh_melk_aq.First;
if hogh_melk_aq.RecordCount>0 then
    if VarIsNumeric(hogh_melk_aq['S1']) then s1:=hogh_melk_aq['S1'];

//----------------- Jame Hazineye sookhti ke ranande az khodesh dade be ezaye karkard ---------
setting_aq.Close;
setting_aq.SQL.Clear;
setting_aq.SQL.Add('SELECT SUM(meghdar) AS S21 FROM BKT2 ' + sss2 );
setting_aq.Open;
setting_aq.First;
if setting_aq.RecordCount>0 then
    if VarIsNumeric(setting_aq['S21']) then s21:=setting_aq['S21'];

setting_aq.Close;
setting_aq.SQL.Clear;
setting_aq.SQL.Add('SELECT SUM(masafat2) AS S22 FROM BKT2 ' + sss2 );
setting_aq.Open;
setting_aq.First;
if setting_aq.RecordCount>0 then
    if VarIsNumeric(setting_aq['S22']) then s22:=setting_aq['S22'];

setting_aq.Close;
setting_aq.SQL.Clear;
setting_aq.SQL.Add('SELECT SUM(masafat) AS S23 FROM BKT2 ' + sss2 );
setting_aq.Open;
setting_aq.First;
if setting_aq.RecordCount>0 then
    if VarIsNumeric(setting_aq['S23']) then s23:=setting_aq['S23'];

s2:=2*s21*s22 Div s23;
//------------------------- ghesmate bedehi haye ranandeh ----------------
//------------------------- Vam haye gerefte shode : be soorate check , ... -----------
hm_summary2_aq.Close;
hm_summary2_aq.SQL.Clear;
hm_summary2_aq.SQL.Add('UPDATE Vam SET ghest = remain WHERE (name=:i0) and (remain<ghest)');
hm_summary2_aq.Parameters[0].Value:=mashin.Text;
hm_summary2_aq.ExecSQL;

hm_summary2_aq.Close;
hm_summary2_aq.SQL.Clear;
hm_summary2_aq.SQL.Add('SELECT SUM(ghest) AS S3 From Vam Where (name=:i0) and (ghest>=0)');
hm_summary2_aq.Parameters[0].Value:=mashin.Text;
hm_summary2_aq.Open;
hm_summary2_aq.First;
if (hm_summary2_aq.RecordCount>0) then
  if (VarIsNumeric(hm_summary2_aq['S3'])) then s3:=hm_summary2_aq['S3'];

//------------------------- Jame hazine haye bardashte shode az tankhah ---------------
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('SELECT SUM(mablagh) AS S4 From Hazineh Where (name=:i0)');
hogh_melk_aq.Parameters[0].Value:=mashin.Text;
hogh_melk_aq.Open;
hogh_melk_aq.First;
if (hogh_melk_aq.RecordCount>0) then
  if (VarIsNumeric(hogh_melk_aq['S4'])) then s4:=hogh_melk_aq['S4'];
  
/////////////////////////////// e'male bedehkari va bestankari ( amale asli ) ////////////////
///////////////////// kasre Vam /////////////////////////////////////////////////////////////
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('SELECT * From Vam Where (name=:i0)');
hogh_melk_aq.Parameters[0].Value:=mashin.Text;
hogh_melk_aq.Open;
if hogh_melk_aq.RecordCount>0 then begin
                                    hogh_melk_aq.Edit;
                                    for i:=1 to hogh_melk_aq.RecordCount do
                                        begin
                                           if hogh_melk_aq['remain']>=hogh_melk_aq['ghest'] then
                                               hogh_melk_aq['remain']:=hogh_melk_aq['remain']-hogh_melk_aq['ghest']
                                             else hogh_melk_aq['remain']:=0;
                                         end;
                                      Application.MessageBox(' ”ÊÌÂ Õ”«» Ê«„ «‰Ã«„ ‘œ',' ÊÃÂ',0);
                                    hogh_melk_aq.Post;
                                    end;
///////////////////// kasre Tankhah //////////////////////////////////////////////////////////
hogh_melk_aq.Close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('Select * From Hazineh Where (name=:i0) and (mablagh>0)');
hogh_melk_aq.Parameters[0].Value:=mashin.Text;
hogh_melk_aq.Open;
if hogh_melk_aq.RecordCount>0 then begin
                                      hogh_melk_aq.Edit;
                                      for i:=1 to hogh_melk_aq.RecordCount do hogh_melk_aq['mablagh']:=0;
                                      hogh_melk_aq.Post;
                                    end;
Application.MessageBox(' ”ÊÌÂ Õ”«»  ‰ŒÊ«Â «‰Ã«„ ‘œ',' ÊÃÂ',0);
if s3 + s4 = 0 then application.MessageBox('«Ì‰ ‘Œ’ »œÂÌ ‰œ«—œ' ,' ÊÃÂ',0);
tasvieh.Enabled:=false;

//======================= aya mashin kosoorat darad ? agar darad , bayad az koll kam shavad ============
hogh_melk_aq.close;
hogh_melk_aq.SQL.Clear;
hogh_melk_aq.SQL.Add('Select kosoorat From Kamion ');
hogh_melk_aq.SQL.Add('Where ranandeh=:i0 ');
hogh_melk_aq.Parameters[0].Value:=mashin.Text;
hogh_melk_aq.Open;
if hogh_melk_aq.RecordCount>0 then begin
                                      hogh_melk_aq.First;
                                      k:=hogh_melk_aq['kosoorat'];
                                    end;
//==========================================================================
if (s1 + s2 < s3 + s4) then begin
                              hogh_melk_aq.close;
                              hogh_melk_aq.SQL.Clear;
                              hogh_melk_aq.SQL.Add('Insert INTO Hazineh(sanad,tarikh,mablagh,babat,name) ');
                              hogh_melk_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4)');
                              hogh_melk_aq.Parameters[0].Value:=main_f.code_generator('hazineh','sanad');
                              hogh_melk_aq.Parameters[1].Value:=long_date_format;
                              hogh_melk_aq.Parameters[2].Value:= (s4 + s3 - s2 - s1) {- (Round(k*0.25*(s4 + s3 - s2 - s1)))} ;
                              hogh_melk_aq.Parameters[3].Value:= '„«‰œÂ »œÂÌ  ‰ŒÊ«Â';
                              hogh_melk_aq.Parameters[4].Value:= mashin.Text;
                              hogh_melk_aq.ExecSQL;
                             end
                               else
                                  begin
                                     current_hazineh:=inttostr((s1 + s2 - s3 - s4) {- (Round(k*0.25*(s4 + s3 - s2 - s1)))} );
                                       tasvieh_mashin_f := Ttasvieh_mashin_f.Create(Application);
                                       tasvieh_mashin_f.babat.Text:=' ”ÊÌÂ ÕﬁÊﬁ —«‰‰œÂ „·ﬂÌ';
                                   end;
end; //------------------------ end of tasvie click ---------------------------------------

procedure Trpt_hogh_melk_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) and (mashin.Text<>'')
                      then tarikh1.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Trpt_hogh_melk_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
