unit rpt_hes_esti_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBGrid_Edit, frxClass, frxDBSet, ADODB,
  StdCtrls, Buttons, Mask, ExtCtrls;

type
   Trpt_hes_esti_f = class(TForm)
    Panel1: TPanel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtmashin: TLabel;
    txtsharh: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    mashin: TEdit;
    sharh: TEdit;
    rpt_hes_esti: TfrxReport;
    hes_esti_aq: TADOQuery;
    Hes_Esti_db: TfrxDBDataset;
    mashin_aq: TADOQuery;
    rpt_tanker_db: TfrxDBDataset;
    tanker_aq: TADOQuery;
    he_summary1_aq: TADOQuery;
    he_summary2_aq: TADOQuery;
    tasvieh: TBitBtn;
    exitt: TBitBtn;
    amal: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure tasviehClick(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_hes_esti_f: Trpt_hes_esti_f;
  tarikh_rpt : TfrxMemoView;
    sss0 , sss , sss2 , sss3 , sss4 , sss5 , sss51 , sss6 , sss7 , sss8 : string;

implementation

uses main_u , ras , ras2 , date_assis , tasvieh_mashin_u;

{$R *.dfm}

procedure Trpt_hes_esti_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hes_esti_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_hes_esti_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then sharh.SetFocus;
end;

procedure Trpt_hes_esti_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hes_esti_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hes_esti_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hes_esti_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hes_esti_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hes_esti_f.amalClick(Sender: TObject);
var
  str0 , str , str2 , str3 , str4 , str5 , str51 , str6 , str7 , str8 : array [1..4,1..2] of string;
  c , i : integer;
  datetext : string;
  mandeh , m1 , m2 , m11 , m22 : Variant;
begin
mandeh:=0;
current_mashin:=mashin.Text;
if (mashin.Text<>'') then
                          begin
                            str0[1,2]:= mashin.Text ;
                            str0[1,1]:='kamion = ';
                            str[1,2]:= mashin.Text ;
                            str[1,1]:='kamion = ';
                            str2[1,2]:= mashin.Text ;
                            str2[1,1]:='name = ';
                            str3[1,2]:= mashin.Text ;
                            str3[1,1]:='sherkat = ';
                            str4[1,2]:= mashin.Text ;
                            str4[1,1]:='mashin = ';
                            str5[1,2]:= mashin.Text ;
                            str5[1,1]:='kamion = ';
                            str51[1,2]:= mashin.Text ;
                            str51[1,1]:='kamion = ';
                            str6[1,2]:= mashin.Text ;
                            str6[1,1]:='name = ';
                            str7[1,2]:= mashin.Text ;
                            str7[1,1]:='sherkat = ';
                            str8[1,2]:= mashin.Text ;
                            str8[1,1]:='mashin = ';
                           end;
if sharh.Text<>'' then
                    begin
                        str0[2,2]:='%' + sharh.Text + '%';
                        str0[2,1]:='kala LIKE ';
                        str[2,2]:='%' + sharh.Text + '%';
                        str[2,1]:='sharh LIKE ';
                        str2[2,2]:='%' + sharh.Text + '%';
                        str2[2,1]:='babat LIKE ';
                        str3[2,2]:='%' + sharh.Text + '%';
                        str3[2,1]:='babat LIKE ';
                        str4[2,2]:='%' + sharh.Text + '%';
                        str4[2,1]:='sharh LIKE ';
                        str5[2,2]:='%' + sharh.Text + '%';
                        str5[2,1]:='sharh LIKE ';
                        str51[2,2]:='%' + sharh.Text + '%';
                        str51[2,1]:='kala LIKE ';
                        str6[2,2]:='%' + sharh.Text + '%';
                        str6[2,1]:='babat LIKE ';
                        str7[2,2]:='%' + sharh.Text + '%';
                        str7[2,1]:='babat LIKE ';
                        str8[2,2]:='%' + sharh.Text + '%';
                        str8[2,1]:='sharh LIKE ';
                     end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str0[3,2]:=tarikh1.EditText;
       str0[3,1]:='tarikh>=';
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>=';
       str2[3,2]:=tarikh1.EditText;
       str2[3,1]:='tarikh>=';
       str3[3,2]:=tarikh1.EditText;
       str3[3,1]:='tarikh>=';
       str4[3,2]:=tarikh1.EditText;
       str4[3,1]:='tarikh>=';

       str5[3,2]:='1385/01/01';
       str5[3,1]:='tarikh>=';
       str51[3,2]:='1385/01/01';
       str51[3,1]:='tarikh>=';
       str6[3,2]:='1385/01/01';
       str6[3,1]:='tarikh>=';
       str7[3,2]:='1385/01/01';
       str7[3,1]:='tarikh>=';
       str8[3,2]:='1385/01/01';
       str8[3,1]:='tarikh>=';

       str5[4,2]:=tarikh1.EditText;
       str5[4,1]:='tarikh<';
       str51[4,2]:=tarikh1.EditText;
       str51[4,1]:='tarikh<';
       str6[4,2]:=tarikh1.EditText;
       str6[4,1]:='tarikh<';
       str7[4,2]:=tarikh1.EditText;
       str7[4,1]:='tarikh<';
       str8[4,2]:=tarikh1.EditText;
       str8[4,1]:='tarikh<';
       end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str0[4,2]:=tarikh2.EditText;
       str0[4,1]:='tarikh<=';
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<=';
       str2[4,2]:=tarikh2.EditText;
       str2[4,1]:='tarikh<=';
       str3[4,2]:=tarikh2.EditText;
       str3[4,1]:='tarikh<=';
       str4[4,2]:=tarikh2.EditText;
       str4[4,1]:='tarikh<=';
      end;
c:=1; sss0:='';
for i:=1 to 4 do begin
                   if str0[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss0:=sss0 + ' where (' + str0[i,1] + chr(39) + str0[i,2] + chr(39) + ')'
                                                       else sss0:=sss0+ ' and (' + str0[i,1] + chr(39) + str0[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss:='';
for i:=1 to 4 do begin
                   if str[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                       else sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                     end;
                  end;
c:=1; sss2:='';
for i:=1 to 4 do begin
                   if str2[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss2:=sss2 + ' where (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')'
                                                       else sss2:=sss2 + ' and (' + str2[i,1] +  chr(39) + str2[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss3:='';
for i:=1 to 4 do begin
                   if str3[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss3:=sss3 + ' where (' + str3[i,1] + chr(39) + str3[i,2] + chr(39) + ')'
                                                       else sss3:=sss3 + ' and (' + str3[i,1] + chr(39) + str3[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss4:='';
for i:=1 to 4 do begin
                   if str4[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss4:=sss4 + ' where (' + str4[i,1] + chr(39) + str4[i,2] + chr(39) + ')'
                                                       else sss4:=sss4 + ' and (' + str4[i,1] + chr(39) + str4[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss5:='';
for i:=1 to 4 do begin
                   if str5[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss5:=sss5 + ' where (' + str5[i,1] + chr(39) + str5[i,2] + chr(39) + ')'
                                                       else sss5:=sss5 + ' and (' + str5[i,1] + chr(39) + str5[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                     end;
                  end;
c:=1; sss51:='';
for i:=1 to 4 do begin
                   if str51[i,2]='' then continue else begin
                                                         if c=1 then
                                                           sss51:=sss51 + ' where (' + str51[i,1] + chr(39) + str51[i,2] + chr(39) + ')'
                                                         else sss51:=sss51 + ' and (' + str51[i,1] + chr(39) + str51[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                     end;
                  end;
c:=1; sss6:='';
for i:=1 to 4 do begin
                   if str6[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss6:=sss6 + ' where (' + str6[i,1] + chr(39) + str6[i,2] + chr(39) + ')'
                                                       else sss6:=sss6 + ' and (' + str6[i,1] +  chr(39) + str6[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss7:='';
for i:=1 to 4 do begin
                   if str7[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss7:=sss7 + ' where (' + str7[i,1] + chr(39) + str7[i,2] + chr(39) + ')'
                                                       else sss7:=sss7 + ' and (' + str7[i,1] + chr(39) + str7[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss8:='';
for i:=1 to 4 do begin
                   if str8[i,2]='' then continue else begin
                                                      if c=1 then
                                                         sss8:=sss8 + ' where (' + str8[i,1] + chr(39) + str8[i,2] + chr(39) + ')'
                                                       else sss8:=sss8 + ' and (' + str8[i,1] + chr(39) + str8[i,2] + chr(39) + ')' ;
                                                       c:=c+1;
                                                      end;
                  end;
//------------------- mohasebeye vam haye gerefte shode ------------------
he_summary1_aq.Close;
he_summary1_aq.SQL.Clear;
he_summary1_aq.SQL.Add('UPDATE Vam SET ghest = remain WHERE (name=:i0) and (remain<ghest)');
he_summary1_aq.Parameters[0].Value:=mashin.Text;
he_summary1_aq.ExecSQL;
//------------------------------------------------------------------------
rpt_hes_esti.LoadFromFile('hes_esti.fr3');
///////////////////////////////////////////// Mohasebeye Mandeh //////////////////////////////
if (tarikh1.EditText>'1385/05/01') and (tarikh1.EditText<>'____/__/__')
    then
      begin
hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;

hes_esti_aq.SQL.Add('Select Sum(bedehkar) - Sum(bestankar) AS man From (');
hes_esti_aq.SQL.Add('SELECT     sanad, tarikh, sharh, mashin , mablagh AS bedehkar, 0 AS bestankar, az AS mahal, chek AS p2, hesab AS p3 FROM         hes_melk ');
hes_esti_aq.SQL.Add(sss8);

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT shomareh as sanad , tarikh , sharh , kamion as mashin , 0 as bedehkar , kerayehk as bestankar , mahal, char(0) AS p2, char(0) AS p3 FROM Barnameh_view ');
hes_esti_aq.SQL.Add( sss5 );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT sanad , tarikh, babat as sharh , name as mashin , mablagh as bedehkar , 0 as bestankar , ' + chr(39) + '’‰œÊﬁ' + chr(39) + ' as mahal, char(0) AS p2 , char(0) AS p3 FROM hazineh ');
hes_esti_aq.SQL.Add( sss6 );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT 0 as sanad , tarikh, babat as sharh , name as mashin , kol as bedehkar , 0 as bestankar , ' + chr(39) + 'Ê«„ »«‰òÌ' + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 FROM vam ');
hes_esti_aq.SQL.Add( sss6 );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT sanad , tarikh, kala as sharh , kamion as mashin , meghdar*gh_vahed as bedehkar , 0 as bestankar , ' + chr(39) + '«‰»«—' + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 FROM anbarkh ');
hes_esti_aq.SQL.Add( sss51 );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT residpk as sanad , tarikh, babat as sharh , sherkat as mashin , 0 as bedehkar , mablagh_ch as bestankar , ' + chr(39) + 'Õ”«» »«‰òÌ' + chr(39) + ' as mahal, sh_ch AS p2, hesab AS p3 FROM havaleh_check ');
hes_esti_aq.SQL.Add( sss7 );
hes_esti_aq.SQL.Add(') Hes_Melk');

{hes_esti_aq.ExecSQL;
hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;
hes_esti_aq.SQL.Add('Select Sum(bedehkar) - Sum(bestankar) AS man From Hes_Bank_Temp ');}
hes_esti_aq.Open;
//ShowMessage(varToStr(hes_esti_aq['man']));
if VarIsNull(hes_esti_aq['man']) then mandeh:=0
    else mandeh:=hes_esti_aq['man'];
datetext:='„«‰œÂ «“  «—ÌŒ 1385/05/01  « ﬁ»· «“ ' + tarikh1.text;
       end;

m1:=0;m2:=0;  m11:=0;m22:=0;
if mandeh>0 then m1:=mandeh
    else m2:=-mandeh;
hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;
hes_esti_aq.SQL.Add('Select mandeh from kamion ');
hes_esti_aq.SQL.Add('where mashin=' + chr(39) + mashin.Text +chr(39));
hes_esti_aq.Open;
hes_esti_aq.First;
m11:=0;m22:=0;
if hes_esti_aq['mandeh']<0 then m11:=-hes_esti_aq['mandeh']
    else m22:=hes_esti_aq['mandeh'];
///////////////////////////////////////////// End of Mohasebeye Mandeh ///////////////////////

hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;
hes_esti_aq.SQL.Add('SELECT 0 as sanad , ' + chr(39) + chr(39) + ' as tarikh , ' + chr(39) + datetext + chr(39) + ' as sharh , mashin , ' + varToStr(m1) + ' as bedehkar , ' + varToStr(m2) + ' as bestankar , ' + chr(39) + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 FROM kamion ');
hes_esti_aq.SQL.Add('where mashin=' + chr(39) + mashin.Text + chr(39));

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT 0 as sanad , man_tarikh as tarikh , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as sharh , mashin , ' + varToStr(m11) + ' as bedehkar , ' + varToStr(m22) + ' as bestankar , ' + chr(39) + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 FROM kamion ');
hes_esti_aq.SQL.Add('where mashin=' + chr(39) + mashin.Text + chr(39));

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT     sanad, tarikh, sharh, mashin , mablagh AS bedehkar, 0 AS bestankar, az AS mahal, chek AS p2, hesab AS p3 FROM         hes_melk ');
hes_esti_aq.SQL.Add(sss4);

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT shomareh as sanad , tarikh , sharh , kamion as mashin , 0 as bedehkar , kerayehk as bestankar , mahal, char(0) AS p2, char(0) AS p3 FROM Barnameh_view ');
hes_esti_aq.SQL.Add( sss );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT sanad , tarikh, babat as sharh , name as mashin , mablagh as bedehkar , 0 as bestankar , ' + chr(39) + '’‰œÊﬁ' + chr(39) + ' as mahal, char(0) AS p2 , char(0) AS p3 FROM hazineh ');
hes_esti_aq.SQL.Add( sss2 );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT 0 as sanad , tarikh, babat as sharh , name as mashin , kol as bedehkar , 0 as bestankar , ' + chr(39) + 'Ê«„ »«‰òÌ' + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 FROM vam ');
hes_esti_aq.SQL.Add( sss2 );

hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('SELECT sanad , tarikh , kala as sharh , kamion as mashin , meghdar*gh_vahed as bedehkar , 0 as bestankar , ' + chr(39) + '«‰»«—' + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 FROM anbarkh ');
hes_esti_aq.SQL.Add( sss0 );
             
hes_esti_aq.SQL.Add(' UNION ');
hes_esti_aq.SQL.Add('(SELECT residpk as sanad , tarikh, babat as sharh , sherkat as mashin , 0 as bedehkar , mablagh_ch as bestankar , ' + chr(39) + 'Õ”«» »«‰òÌ' + chr(39) + ' as mahal, sh_ch AS p2, hesab AS p3 FROM havaleh_check ');
hes_esti_aq.SQL.Add( sss3 );
hes_esti_aq.SQL.Add(') order by tarikh');

hes_esti_aq.Open;

//Memo1.Text:=hes_esti_aq.SQL.Text;

//---------------------- mohasebeye jame bestankariha ------------------
{bestankari_aq.Close;
bestankari_aq.SQL.Clear;
bestankari_aq.SQL.Add('Select kerayehk From Barnameh_view ');
bestankari_aq.SQL.Add(' Where kamion=:i0');
bestankari_aq.Parameters[0].Value:=VarToStr(mashin.Return_Value);
bestankari_aq.Open;  }


{he_summary1_aq.Close;
he_summary1_aq.SQL.Clear;
he_summary1_aq.SQL.Add('SELECT * FROM Vam Where name=:i0 ' );
he_summary1_aq.Parameters[0].Value:=mashin.Edit_Search.Text;
he_summary1_aq.Open;
if he_summary1_aq.RecordCount=0 then begin
                                        he_summary1_aq.Close;
                                        he_summary1_aq.SQL.Clear;
                                        he_summary1_aq.SQL.Add('Select 0 AS ghest From Vam');
                                        he_summary1_aq.Open;
                                      end;   }

//----------------------- mohasebeye jame hazineh ha az sandoogh --------------
{he_summary2_aq.Close;
he_summary2_aq.SQL.Clear;
he_summary2_aq.SQL.Add('SELECT * FROM Hazineh Where (name=:i0) and (mablagh>0) ' );
he_summary2_aq.Parameters[0].Value:=mashin.Edit_Search.Text;
he_summary2_aq.Open;
if he_summary2_aq.RecordCount=0 then begin
                                        he_summary2_aq.Close;
                                        he_summary2_aq.SQL.Clear;
                                        he_summary2_aq.SQL.Add('Select 0 AS mablagh From Hazineh');
                                        he_summary2_aq.Open;
                                      end;
                                            }
//------------------ mohasebeye keraye tanker -------------------
tanker_aq.Close;
tanker_aq.SQL.Clear;
tanker_aq.SQL.Add('Select * From Kamion Where mashin=:i0 ');
tanker_aq.Parameters[0].Value:=mashin.Text;
tanker_aq.Open;
//--------------------------------------------------------------
tarikh_rpt :=rpt_hes_esti.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if hes_esti_aq.RecordCount=0
  then
   Application.MessageBox('Õ”«» „«‘Ì‰ ’›— «” ',' ÊÃÂ',0)
    else
      rpt_hes_esti.ShowReport;
mashin.SetFocus;
tasvieh.Enabled:=True;
end;

procedure Trpt_hes_esti_f.tasviehClick(Sender: TObject);
var
  i : integer;
  s1 , s2 , s3 , s4 : int64;
  mon1 , mon2 : string;
  tasvieh_mashin_f : Ttasvieh_mashin_f;
begin
if mashin.Text='' then begin
                          Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
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
hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;
hes_esti_aq.SQL.Add('SELECT * FROM Date_Hes_Mashin ');
hes_esti_aq.SQL.Add('WHERE (name=:i0) and (mon=:i1)');
hes_esti_aq.Parameters[0].Value:=mashin.Text;
hes_esti_aq.Parameters[1].Value:=mon1;
hes_esti_aq.Open;
if hes_esti_aq.RecordCount>0 then begin
                                     Application.MessageBox(' ”ÊÌÂ «Ì‰ „«Â »—«Ì ‘Œ’ ﬁ»·« «‰Ã«„ ‘œÂ «” ',' ÊÃÂ',0);
                                     tasvieh.Enabled:=false;
                                     exit;
                                   end;

//---------------------- sabte tasvie va ghofl shodane mahe jari ----------------------                                   
hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;
hes_esti_aq.SQL.Add('INSERT INTO Date_Hes_Mashin(name,mon) ');
hes_esti_aq.SQL.Add('Values (:i0,:i1)');
hes_esti_aq.Parameters[0].Value:=mashin.Text;
hes_esti_aq.Parameters[1].Value:=mon1;
hes_esti_aq.ExecSQL;

//////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////// mohasebeye maghadire bedehkari va bestankarie ranandeh //////////////
//////////////////////////////////////////////////////////////////////////////////////////////
//------------------------- ghesmate Bestankari haye ranandeh ----------------
//------------------------- Jame keraye haye barnamehaye avarde shode ------------
hes_esti_aq.Close;
hes_esti_aq.SQL.Clear;
hes_esti_aq.SQL.Add('SELECT SUM(kerayehk) AS S1 From Barnameh_view ' + sss );
hes_esti_aq.Open;
hes_esti_aq.First;
if (hes_esti_aq.RecordCount>0) then
  if (VarIsNumeric(hes_esti_aq['S1'])) then s1:=hes_esti_aq['S1'];

//------------------------- ghesmate bedehi haye ranandeh ----------------
//------------------------- Vam haye gerefte shode : be soorate check , ... -----------
he_summary1_aq.Close;
he_summary1_aq.SQL.Clear;
he_summary1_aq.SQL.Add('UPDATE Vam SET ghest = remain WHERE (name=:i0) and (remain<ghest)');
he_summary1_aq.Parameters[0].Value:=mashin.Text;
he_summary1_aq.ExecSQL;

he_summary1_aq.Close;
he_summary1_aq.SQL.Clear;
he_summary1_aq.SQL.Add('SELECT SUM(ghest) AS S2 From Vam Where (name=:i0) and (ghest>=0)');
he_summary1_aq.Parameters[0].Value:=mashin.Text;
he_summary1_aq.Open;
he_summary1_aq.First;
if (he_summary1_aq.RecordCount>0) then
  if (VarIsNumeric(he_summary1_aq['S2'])) then s2:=he_summary1_aq['S2'];

//------------------------- Jame hazine haye bardashte shode az tankhah ---------------
he_summary2_aq.Close;
he_summary2_aq.SQL.Clear;
he_summary2_aq.SQL.Add('SELECT SUM(mablagh) AS S3 From Hazineh Where (name=:i0)');
he_summary2_aq.Parameters[0].Value:=mashin.Text;
he_summary2_aq.Open;
he_summary2_aq.First;
if (he_summary2_aq.RecordCount>0) then
  if (VarIsNumeric(he_summary2_aq['S3'])) then s3:=he_summary2_aq['S3'];

//------------------------- check kardane hazineye tanker , agar hast ! ---------------
tanker_aq.Close;
tanker_aq.SQL.Clear;
tanker_aq.SQL.Add('SELECT Tanker AS S4 From Kamion Where (mashin=:i0)');
tanker_aq.Parameters[0].Value:=mashin.Text;
tanker_aq.Open;
s4:=tanker_aq['S4'];

/////////////////////////////// e'male bedehkari va bestankari ( amale asli ) ////////////////
///////////////////// kasre Vam /////////////////////////////////////////////////////////////
he_summary1_aq.Close;
he_summary1_aq.SQL.Clear;
he_summary1_aq.SQL.Add('SELECT * From Vam Where (name=:i0)');
he_summary1_aq.Parameters[0].Value:=mashin.Text;
he_summary1_aq.Open;
if he_summary1_aq.RecordCount>0 then begin
                                    he_summary1_aq.Edit;
                                    for i:=1 to he_summary1_aq.RecordCount do
                                        begin
                                           if he_summary1_aq['remain']>=he_summary1_aq['ghest'] then
                                               he_summary1_aq['remain']:=he_summary1_aq['remain']-he_summary1_aq['ghest']
                                             else he_summary1_aq['remain']:=0;
                                         end;
                                      Application.MessageBox(' ”ÊÌÂ Õ”«» Ê«„ «‰Ã«„ ‘œ',' ÊÃÂ',0);
                                    he_summary1_aq.Post;
                                    end;
///////////////////// kasre Tankhah //////////////////////////////////////////////////////////
he_summary2_aq.Close;
he_summary2_aq.SQL.Clear;
he_summary2_aq.SQL.Add('Select * From Hazineh Where (name=:i0) and (mablagh>0)');
he_summary2_aq.Parameters[0].Value:=mashin.Text;
he_summary2_aq.Open;
if he_summary2_aq.RecordCount>0 then begin
                                      he_summary2_aq.Edit;
                                      for i:=1 to he_summary2_aq.RecordCount do he_summary2_aq['mablagh']:=0;
                                      he_summary2_aq.Post;
                                    end;
Application.MessageBox(' ”ÊÌÂ Õ”«»  ‰ŒÊ«Â «‰Ã«„ ‘œ',' ÊÃÂ',0);
if s2 + s3 + s4 = 0 then application.MessageBox('«Ì‰ ‘Œ’ »œÂÌ ‰œ«—œ' ,' ÊÃÂ',0);
tasvieh.Enabled:=false;

if (s1 < s2 + s3 + s4) then begin
                              he_summary1_aq.close;
                              he_summary1_aq.SQL.Clear;
                              he_summary1_aq.SQL.Add('Insert INTO Hazineh(sanad,tarikh,mablagh,babat,name) ');
                              he_summary1_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4)');
                              he_summary1_aq.Parameters[0].Value:=main_f.code_generator('hazineh','sanad');
                              he_summary1_aq.Parameters[1].Value:=long_date_format;
                              he_summary1_aq.Parameters[2].Value:= s4 + s3 + s2 - s1 ;
                              he_summary1_aq.Parameters[3].Value:= '„«‰œÂ »œÂÌ  ‰ŒÊ«Â';
                              he_summary1_aq.Parameters[4].Value:= mashin.Text;
                              he_summary1_aq.ExecSQL;
                             end
                               else begin
                                       current_hazineh:=inttostr(s1 - s2 - s3 - s4);
                                         tasvieh_mashin_f := Ttasvieh_mashin_f.Create(Application);
                                         tasvieh_mashin_f.babat.Text:=' ”ÊÌÂ Õ”«» „«‘Ì‰';
                                     end;

//---------------------------- end of tasvie click -------------------------
end;

procedure Trpt_hes_esti_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion_esti where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) and (mashin.Text<>'')
                      then sharh.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‘„«—Â „«‘Ì‰ «” ÌÃ«—Ì —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;

end;

procedure Trpt_hes_esti_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_hes_esti_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
