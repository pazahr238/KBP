unit rpt_hes_melk_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ADODB, Buttons, Mask, ExtCtrls;

type
  Trpt_hes_melk_f = class(TForm)
    Panel1: TPanel;
    txtsharh: TLabel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtmashin: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    mashin: TEdit;
    sharh: TEdit;
    rpt_hes_melk: TfrxReport;
    hes_melk_aq: TADOQuery;
    Hes_Melk_db: TfrxDBDataset;
    mashin_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_hes_melk_f: Trpt_hes_melk_f;
  tarikh_rpt : TfrxMemoView;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_hes_melk_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hes_melk_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hes_melk_f.amalClick(Sender: TObject);
var
  str , str2 , str3 , str4 , str5 , str6 , str7 , str8 , str9 , str10 : array [1..4,1..2] of string;
  sss , sss2 , sss3 , sss4 , sss5 , sss6 , sss7 , sss8 , sss9 , sss10 , datetext : string;
  c , i ,num , mablagh_num , e: integer;
  mandeh , m1 , m2 , m11 , m22 : Variant;
begin
mandeh:=0;
if (mashin.Text<>'') then
                         begin
                            str[1,2]:='%' + mashin.text + '%';
                            str[1,1]:='mashin LIKE ';
                            str2[1,2]:='%' + mashin.text + '%';
                            str2[1,1]:='kamion LIKE ';
                            str3[1,2]:='%' + mashin.text + '%';
                            str3[1,1]:='name LIKE ';
                            str4[1,2]:='%' + mashin.text + '%';
                            str4[1,1]:='kamion LIKE ';
                            str5[1,2]:='%' + mashin.text + '%';
                            str5[1,1]:='sherkat LIKE ';
                            str6[1,2]:='%' + mashin.text + '%';
                            str6[1,1]:='mashin LIKE ';
                            str7[1,2]:='%' + mashin.text + '%';
                            str7[1,1]:='kamion LIKE ';
                            str8[1,2]:='%' + mashin.text + '%';
                            str8[1,1]:='name LIKE ';
                            str9[1,2]:='%' + mashin.text + '%';
                            str9[1,1]:='kamion LIKE ';
                            str10[1,2]:='%' + mashin.text + '%';
                            str10[1,1]:='sherkat LIKE ';
                          end;
if (sharh.Text<>'') then
                         begin
                            str[2,2]:='%' + sharh.text + '%';
                            str[2,1]:='sharh LIKE ';
                            str2[2,2]:='%' + sharh.text + '%';
                            str2[2,1]:='kala LIKE ';
                            str3[2,2]:='%' + sharh.text + '%';
                            str3[2,1]:='babat LIKE ';
                            str4[2,2]:='%' + sharh.text + '%';
                            str4[2,1]:='sharh LIKE ';
                            str5[2,2]:='%' + sharh.text + '%';
                            str5[2,1]:='babat LIKE ';
                            str6[2,2]:='%' + sharh.text + '%';
                            str6[2,1]:='sharh LIKE ';
                            str7[2,2]:='%' + sharh.text + '%';
                            str7[2,1]:='kala LIKE ';
                            str8[2,2]:='%' + sharh.text + '%';
                            str8[2,1]:='babat LIKE ';
                            str9[2,2]:='%' + sharh.text + '%';
                            str9[2,1]:='sharh LIKE ';
                            str10[2,2]:='%' + sharh.text + '%';
                            str10[2,1]:='babat LIKE ';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>=';
       str2[3,2]:=tarikh1.EditText;
       str2[3,1]:='tarikh>=';
       str3[3,2]:=tarikh1.EditText;
       str3[3,1]:='tarikh>=';
       str4[3,2]:=tarikh1.EditText;
       str4[3,1]:='tarikh>=';
       str5[3,2]:=tarikh1.EditText;
       str5[3,1]:='tarikh>=';

       str6[3,2]:='1385/01/01';
       str6[3,1]:='tarikh>=';
       str7[3,2]:='1385/01/01';
       str7[3,1]:='tarikh>=';
       str8[3,2]:='1385/01/01';
       str8[3,1]:='tarikh>=';
       str9[3,2]:='1385/01/01';
       str9[3,1]:='tarikh>=';
       str10[3,2]:='1385/01/01';
       str10[3,1]:='tarikh>=';

       str6[4,2]:=tarikh1.EditText;
       str6[4,1]:='tarikh<';
       str7[4,2]:=tarikh1.EditText;
       str7[4,1]:='tarikh<';
       str8[4,2]:=tarikh1.EditText;
       str8[4,1]:='tarikh<';
       str9[4,2]:=tarikh1.EditText;
       str9[4,1]:='tarikh<';
       str10[4,2]:=tarikh1.EditText;
       str10[4,1]:='tarikh<';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<=';
       str2[4,2]:=tarikh2.EditText;
       str2[4,1]:='tarikh<=';
       str3[4,2]:=tarikh2.EditText;
       str3[4,1]:='tarikh<=';
       str4[4,2]:=tarikh2.EditText;
       str4[4,1]:='tarikh<=';
       str5[4,2]:=tarikh2.EditText;
       str5[4,1]:='tarikh<=';
      end;

c:=1; sss:='';
for i:=1 to 4 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                               else sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss2:='';
for i:=1 to 4 do begin
                   if str2[i,2]='' then continue else begin
                                                     if c=1 then sss2:=sss2 + ' where (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')'
                                                               else sss2:=sss2 + ' and (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss3:='';
for i:=1 to 4 do begin
                   if str3[i,2]='' then continue else begin
                                                     if c=1 then sss3:=sss3 + ' where (' + str3[i,1] + chr(39) + str3[i,2] + chr(39) + ')'
                                                               else sss3:=sss3 + ' and (' + str3[i,1] + chr(39) + str3[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss4:='';
for i:=1 to 4 do begin
                   if str4[i,2]='' then continue else begin
                                                     if c=1 then sss4:=sss4 + ' where (' + str4[i,1] + chr(39) + str4[i,2] + chr(39) + ')'
                                                               else sss4:=sss4 + ' and (' + str4[i,1] + chr(39) + str4[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss5:='';
for i:=1 to 4 do begin
                   if str5[i,2]='' then continue else begin
                                                     if c=1 then sss5:=sss5 + ' where (' + str5[i,1] + chr(39) + str5[i,2] + chr(39) + ')'
                                                               else sss5:=sss5 + ' and (' + str5[i,1] + chr(39) + str5[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;

c:=1; sss6:='';
for i:=1 to 4 do begin
                   if str6[i,2]='' then continue else begin
                                                     if c=1 then sss6:=sss6 + ' where (' + str6[i,1] + chr(39) + str6[i,2] + chr(39) + ')'
                                                               else sss6:=sss6 + ' and (' + str6[i,1] + chr(39) + str6[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss7:='';
for i:=1 to 4 do begin
                   if str7[i,2]='' then continue else begin
                                                     if c=1 then sss7:=sss7 + ' where (' + str7[i,1] + chr(39) + str7[i,2] + chr(39) + ')'
                                                               else sss7:=sss7 + ' and (' + str7[i,1] + chr(39) + str7[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss8:='';
for i:=1 to 4 do begin
                   if str8[i,2]='' then continue else begin
                                                     if c=1 then sss8:=sss8 + ' where (' + str8[i,1] + chr(39) + str8[i,2] + chr(39) + ')'
                                                               else sss8:=sss8 + ' and (' + str8[i,1] + chr(39) + str8[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss9:='';
for i:=1 to 4 do begin
                   if str9[i,2]='' then continue else begin
                                                     if c=1 then sss9:=sss9 + ' where (' + str9[i,1] + chr(39) + str9[i,2] + chr(39) + ')'
                                                               else sss9:=sss9 + ' and (' + str9[i,1] + chr(39) + str9[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss10:='';
for i:=1 to 4 do begin
                   if str10[i,2]='' then continue else begin
                                                     if c=1 then sss10:=sss10 + ' where (' + str10[i,1] + chr(39) + str10[i,2] + chr(39) + ')'
                                                               else sss10:=sss10 + ' and (' + str10[i,1] + chr(39) + str10[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;

rpt_hes_melk.LoadFromFile('hes_melk.fr3');
///////////////////////////////////////////// Mohasebeye Mandeh //////////////////////////////
if (tarikh1.EditText>'1385/05/01') and (tarikh1.EditText<>'____/__/__')
    then
      begin
hes_melk_aq.Close;
hes_melk_aq.SQL.Clear;
hes_melk_aq.SQL.Add('Select Sum(bedehkar) - Sum(bestankar) AS man From (');
hes_melk_aq.SQL.Add('SELECT     sanad, tarikh, sharh, mablagh AS bedehkar, 0 AS bestankar, az AS mahal, chek AS p2, hesab AS p3, mashin FROM         hes_melk ');
hes_melk_aq.SQL.Add(sss6);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     sanad, tarikh, babat as sharh, mablagh AS bedehkar, 0 AS bestankar,' + chr(39) + chr(213) +  chr(228) + chr(207) + chr(230) + chr(222) + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3, name AS mashin FROM         hazineh ');
hes_melk_aq.SQL.Add(sss8);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     shomareh AS sanad, tarikh, sharh, 0 AS bedehkar, kerayehk AS bestankar, mahal, char(0) AS p2, char(0) AS p3, kamion AS mashin FROM    barnameh ');
hes_melk_aq.SQL.Add(sss9);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     sanad, tarikh, kala as sharh, meghdar*gh_vahed AS bedehkar, 0 AS bestankar, ' + chr(39) + chr(199) + chr(228)+ chr(200)+ chr(199)+ chr(209)+ chr(39) +  ' as mahal, char(0) AS p2, char(0) AS p3, kamion AS mashin FROM         anbarkh ');
hes_melk_aq.SQL.Add(sss7);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     residpk as sanad, tarikh, babat as sharh, 0 AS bedehkar, mablagh_ch AS bestankar, ' + chr(39) + 'Õ”«» »«‰òÌ' + chr(39) + ' as mahal, sh_ch AS p2, hesab AS p3, sherkat AS mashin FROM   havaleh_check ');
hes_melk_aq.SQL.Add(sss10);
hes_melk_aq.SQL.Add(') Kamion');
hes_melk_aq.Open;

if VarIsNull(hes_melk_aq['man']) then mandeh:=0
    else mandeh:=hes_melk_aq['man'];
            datetext:='„«‰œÂ «“  «—ÌŒ 1385/05/01  « ﬁ»· «“ ' + tarikh1.text;
       end;

m1:=0;m2:=0;  m11:=0;m22:=0;
if mandeh>0 then m1:=mandeh
    else m2:=-mandeh;
hes_melk_aq.Close;
hes_melk_aq.SQL.Clear;
hes_melk_aq.SQL.Add('Select mandeh from kamion ');
hes_melk_aq.SQL.Add('where mashin=' + chr(39) + mashin.Text +chr(39));
hes_melk_aq.Open;
hes_melk_aq.First;
m11:=0;m22:=0;
if hes_melk_aq['mandeh']<0 then m11:=-hes_melk_aq['mandeh']
    else m22:=hes_melk_aq['mandeh'];
///////////////////////////////////////////// End of Mohasebeye Mandeh ///////////////////////
hes_melk_aq.Close;
hes_melk_aq.SQL.Clear;
hes_melk_aq.SQL.Add('SELECT     0 as sanad, ' + chr(39) + chr(39) + ' as tarikh, ' + chr(39) + datetext + chr(39) + ' as sharh, ' + varToStr(m1) + ' AS bedehkar, ' + varToStr(m2) + ' AS bestankar, ' + chr(39) + chr(39) + ' AS mahal, char(0) AS p2, char(0) AS p3 , mashin FROM         kamion ');
hes_melk_aq.SQL.Add('Where (mashin=' + chr(39) + mashin.Text + chr(39) + ')');
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     0 as sanad, man_tarikh as tarikh, ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as sharh, ' + varToStr(m11) + ' AS bedehkar, ' + varToStr(m22) + ' AS bestankar, ' + chr(39) + chr(39) + ' AS mahal, char(0) AS p2, char(0) AS p3 , mashin FROM         kamion ');
hes_melk_aq.SQL.Add('Where (mashin=' + chr(39) + mashin.Text + chr(39) + ')');
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     sanad, tarikh, sharh, mablagh AS bedehkar, 0 AS bestankar, az AS mahal, chek AS p2, hesab AS p3, mashin FROM         hes_melk ');
hes_melk_aq.SQL.Add(sss);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     sanad, tarikh, babat as sharh, mablagh AS bedehkar, 0 AS bestankar,' + chr(39) + chr(213) +  chr(228) + chr(207) + chr(230) + chr(222) + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3, name AS mashin FROM         hazineh ');
hes_melk_aq.SQL.Add(sss3);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     shomareh AS sanad, tarikh, sharh, 0 AS bedehkar, kerayehk AS bestankar, mahal, char(0) AS p2, char(0) AS p3, kamion AS mashin FROM    barnameh ');
hes_melk_aq.SQL.Add(sss4);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('SELECT     sanad, tarikh, kala as sharh, meghdar*gh_vahed AS bedehkar, 0 AS bestankar, ' + chr(39) + chr(199) + chr(228)+ chr(200)+ chr(199)+ chr(209)+ chr(39) +  ' as mahal, char(0) AS p2, char(0) AS p3, kamion AS mashin FROM         anbarkh ');
hes_melk_aq.SQL.Add(sss2);
hes_melk_aq.SQL.Add(' UNION ');
hes_melk_aq.SQL.Add('(SELECT     residpk as sanad, tarikh, babat as sharh, 0 AS bedehkar, mablagh_ch AS bestankar, ' + chr(39) + 'Õ”«» »«‰òÌ' + chr(39) + ' as mahal, sh_ch AS p2, hesab AS p3, sherkat AS mashin FROM   havaleh_check ');
hes_melk_aq.SQL.Add(sss5);
hes_melk_aq.SQL.Add(') order by tarikh');
hes_melk_aq.Open;

//-----------------------------------------------------------
tarikh_rpt :=rpt_hes_melk.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if hes_melk_aq.RecordCount=0
  then
    Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',MB_OK+MB_ICONERROR)
     else
      rpt_hes_melk.ShowReport;
mashin.SetFocus;
end;

procedure Trpt_hes_melk_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                  //if mashin.Text='' then mashin.Text:='Â“Ì‰Â Â«Ì ‘—ò ';
                  sharh.SetFocus;
                end;
end;

procedure Trpt_hes_melk_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_hes_melk_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hes_melk_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hes_melk_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hes_melk_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hes_melk_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_hes_melk_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion_melki ');
mashin_aq.SQL.Add('where mashin=' + chr(39) + mashin.Text + chr(39));
mashin_aq.Open;
if mashin_aq.RecordCount=0 then begin
                                   Application.MessageBox('·ÿ›« ‘„«—Â „«‘Ì‰ „·òÌ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                   mashin.SetFocus;
                                   mashin.Clear;
                                 end;
end;

procedure Trpt_hes_melk_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
