unit rpt_sherkat_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, Grids, DBGrids, DBGrid_Edit, DB, ADODB,
  StdCtrls, Mask, Buttons, frxDesgn, ExtCtrls;

type
  Trpt_sherkat_f = class(TForm)
    Panel1: TPanel;
    txtsherkat: TLabel;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    txtmahal: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    reff: TBitBtn;
    sherkat: TComboBox;
    mahal: TComboBox;
    sherkat_aq: TADOQuery;
    main_aq: TADOQuery;
    Main_sherkat_db: TfrxDBDataset;
    mahal_aq: TADOQuery;
    noe: TComboBox;
    txtnoe: TLabel;
    amal: TBitBtn;
    exitt: TBitBtn;
    rb_sherkat1: TRadioButton;
    rb_sherkat2: TRadioButton;
    rb_sherkat3: TRadioButton;
    noe_bar_aq: TADOQuery;
    mashin: TEdit;
    txtmashin: TLabel;
    mashin_aq: TADOQuery;
    mahal_bar_aq: TADOQuery;
    mahal_bar: TComboBox;
    Label1: TLabel;
    rpt_havaleh_view: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure amalClick(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure reffEnter(Sender: TObject);
    procedure reffClick(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatEnter(Sender: TObject);
    procedure mahalEnter(Sender: TObject);
    procedure cb_bazarganiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rb_sherkat1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rb_sherkat2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rb_sherkat3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noeEnter(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahal_barKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahal_barEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_sherkat_f: Trpt_sherkat_f;
  tarikh_rpt : TfrxMemoView;
  mahal_rpt : TfrxMemoView;

implementation
      uses main_u, ras, ras2 , date_assis;
{$R *.dfm}

procedure Trpt_sherkat_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_sherkat_f.amalClick(Sender: TObject);
var
  str , str2 , str3 , str4 : array [1..7,1..2] of string;
  sss , sss2 , sss3 , sss4 , datetext , a : string;
  c , i : integer;
  mandeh , m1 , m2 , m11 , m22 : variant;
begin
mandeh:=0;
if sherkat.Text='' then begin
                            Application.MessageBox('·ÿ›« ‰«„ ‘—ﬂ  —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',mb_ok+MB_ICONERROR);
                              sherkat.SetFocus;
                            exit;
                         end;
if (sherkat.Text<>'') then
                          begin
                            str[1,2]:=sherkat.text;
                            str[1,1]:='sherkat=';
                            str2[1,2]:=sherkat.text;
                            str2[1,1]:='sherkat=';
                            str3[1,2]:=sherkat.text;
                            str3[1,1]:='sherkat=';
                            str4[1,2]:=sherkat.text;
                            str4[1,1]:='sherkat=';
                          end;
if (mahal.Text<>'') then
                          begin
                            str[2,2]:=mahal.text;
                            str[2,1]:='mahal=';
                            str2[2,2]:='';
                            str2[2,1]:='';
                            str3[2,2]:=mahal.text;
                            str3[2,1]:='mahal=';
                            str4[2,2]:='';
                            str4[2,1]:='';
                          end;

if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>=';
       str2[3,2]:=tarikh1.EditText;
       str2[3,1]:='tarikh>=';
       str3[3,2]:='1385/01/01';
       str3[3,1]:='tarikh>=';
       str3[4,2]:=tarikh1.EditText;
       str3[4,1]:='tarikh<';
       str4[3,2]:='1385/01/01';
       str4[3,1]:='tarikh>=';
       str4[4,2]:=tarikh1.EditText;
       str4[4,1]:='tarikh<';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<=';
       str2[4,2]:=tarikh2.EditText;
       str2[4,1]:='tarikh<=';
      end;
if (noe.Text<>'') then
                       begin
                           str[5,2]:=noe.text;
                           str[5,1]:='noe=';
                           str2[5,2]:='';
                           str2[5,1]:='';
                           str3[5,2]:=noe.text;
                           str3[5,1]:='noe=';
                           str4[5,2]:='';
                           str4[5,1]:='';
                        end;
if (mashin.Text<>'') then
                          begin
                            str[6,2]:=mashin.text;
                            str[6,1]:='kamion=';
                            str2[6,2]:='';
                            str2[6,1]:='';
                            str3[6,2]:=mashin.text;
                            str3[6,1]:='kamion=';
                            str4[6,2]:='';
                            str4[6,1]:='';
                          end;
if (mahal_bar.Text<>'') then
                          begin
                            str[7,2]:=mahal_bar.text;
                            str[7,1]:='mahal_bar=';
                            str2[7,2]:='';
                            str2[7,1]:='';
                            str3[7,2]:=mahal_bar.text;
                            str3[7,1]:='mahal_bar=';
                            str4[7,2]:='';
                            str4[7,1]:='';
                          end;
c:=1; sss:='';
for i:=1 to 7 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then
                                                              sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                            else
                                                              sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')';
                                                      c:=c+1;
                                                      end;
                  end;
c:=1; sss2:='';
for i:=1 to 7 do begin
                   if str2[i,2]='' then continue else begin
                                                      if c=1 then
                                                               sss2:=sss2 + ' where (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')'
                                                             else
                                                               sss2:=sss2 + ' and (' + str2[i,1] + chr(39) + str2[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                       end;
                  end;
c:=1; sss3:='';
for i:=1 to 7 do begin
                   if str3[i,2]='' then continue else begin
                                                       if c=1 then
                                                                sss3:=sss3 + ' where (' + str3[i,1] + chr(39) + str3[i,2] + chr(39) + ')'
                                                              else
                                                                sss3:=sss3+ ' and (' + str3[i,1] + chr(39) + str3[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                      end;
                  end;
c:=1; sss4:='';
for i:=1 to 7 do begin
                   if str4[i,2]='' then continue else begin
                                                       if c=1 then
                                                                 sss4:=sss4 + ' where (' + str4[i,1] + chr(39) + str4[i,2] + chr(39) + ')'
                                                               else
                                                                 sss4:=sss4+ ' and (' + str4[i,1] + chr(39) + str4[i,2] + chr(39) + ')';
                                                       c:=c+1;
                                                       end;
                  end;

//--------------------------------- entekhabe Report ----------------------------------------

if (rb_sherkat1.Checked) then rpt_havaleh_view.LoadFromFile('havaleh_view.fr3');
if (rb_sherkat2.Checked) then rpt_havaleh_view.LoadFromFile('sherkat_bazargani.fr3');
if (rb_sherkat3.Checked) then rpt_havaleh_view.LoadFromFile('sherkat_bazargani_2.fr3');

//--------------------------------- Mohasebeye Mandeh ---------------------------------------
if (tarikh1.EditText>'1385/01/01') and (tarikh1.EditText<>'____/__/__')
    then
      begin
main_aq.Close;
main_aq.SQL.Clear;
Main_aq.SQL.Add('Select Sum(bedehkar) - Sum(bestankar) AS man From (');

{if mahal.Text<>'' then begin
                          Main_aq.SQL.Add('SELECT     tarikh , username , shomareh , sherkat ,  mahal , sharh , havaleh , meghdarl , noe , kamion , kerayehl AS bedehkar, 0 AS bestankar FROM         barnameh_view ');
                          Main_aq.SQL.Add(sss3);
                        end
                           else begin
                                    Main_aq.SQL.Add('SELECT     tarikh , username , shomareh , ' + chr(39) + chr(39) + ' as sherkat , ' + chr(39) + chr(39) + ' as mahal , sharh , havaleh , meghdarl , noe , kamion , kerayehl AS bedehkar, 0 AS bestankar FROM         barnameh_view ');
                                    Main_aq.SQL.Add(sss4);
                                 end;}

Main_aq.SQL.Add('SELECT     tarikh , username , shomareh , sherkat ,  mahal , sharh , havaleh , meghdarl , noe , kamion , kerayehl AS bedehkar, 0 AS bestankar FROM         barnameh ');
Main_aq.SQL.Add(sss3);

//-------------------- agar gozareshe kamel(1) bashad satrhaye check ha neshun dade beshe ama baraye gozareshe(2)(sherkat bazargani) satrhaye bestankari nemikhahim-------------
if (rb_sherkat1.Checked) then begin
                                  Main_aq.SQL.Add(' UNION ');
                                  Main_aq.SQL.Add('SELECT     tarikh , ' + chr(39) + chr(39) + ' as username , residpk as shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , babat as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , 0 AS bedehkar, mablagh_ch AS bestankar FROM         havaleh_check ');
                                  Main_aq.SQL.Add(sss2);
                               end;
//------------------------------------------------------------------------------------------------------------
main_aq.SQL.Add(') Barnameh');
main_aq.Open;
if VarIsNull(main_aq['man']) then mandeh:=0
    else mandeh:=main_aq['man'];

datetext:='„«‰œÂ «“  «—ÌŒ 1385/01/01  « ﬁ»· «“ ' + tarikh1.text;
       end;

m1:=0;m2:=0;  m11:=0;m22:=0;
if mandeh>0 then m1:=mandeh
    else m2:=-mandeh;
main_aq.Close;
main_aq.SQL.Clear;
main_aq.SQL.Add('Select mandeh from sherkat ');
main_aq.SQL.Add('where sherkat=' + chr(39) + sherkat.Text +chr(39));
main_aq.Open;
main_aq.First;
m11:=0;m22:=0;
if main_aq['mandeh']<0 then m11:=-main_aq['mandeh']
    else m22:=main_aq['mandeh'];
///////////////////////////////////////////// End of Mohasebeye Mandeh ///////////////////////
Main_aq.Close;
Main_aq.SQL.Clear;
{if mahal.Text<>'' then begin
                          Main_aq.SQL.Add('SELECT    ' + chr(39) + chr(39) + ' as tarikh , ' + chr(39) + chr(39) + ' as username , 0 as shomareh , sherkat , mahal , ' + chr(39) + datetext + chr(39) + ' as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , ' + varToStr(m1) + ' AS bedehkar, ' + varToStr(m2) + ' AS bestankar FROM     barnameh_view WHERE (sherkat=' + chr(39) + sherkat.Text + chr(39) + ') and (mahal=' + chr(39) + mahal.Text + chr(39) + ')');
                             Main_aq.SQL.Add(' UNION ');
                               Main_aq.SQL.Add('SELECT    man_tarikh as tarikh , ' + chr(39) + chr(39) + ' as username , 0 as shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , ' + varToStr(m11) + ' AS bedehkar, ' + varToStr(m22) + ' AS bestankar FROM     sherkat WHERE (sherkat=' + chr(39) + sherkat.Text + chr(39) +  ')');
                                 Main_aq.SQL.Add(' UNION ');
                              Main_aq.SQL.Add('SELECT     tarikh , username , shomareh , sherkat , mahal , sharh, havaleh , meghdarl , noe , kamion , kerayehl AS bedehkar, 0 AS bestankar FROM         barnameh_view ');
                           Main_aq.SQL.Add(sss);
                         end
                            else begin
                                     Main_aq.SQL.Add('SELECT    ' + chr(39) + chr(39) + 'as tarikh , ' + chr(39) + chr(39) + ' as username , 0 as shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , ' + chr(39) + datetext + chr(39) + ' as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , ' + varToStr(m1) + ' AS bedehkar, ' + varToStr(m2) + ' AS bestankar FROM     barnameh_view WHERE (sherkat=' + chr(39) + sherkat.Text + chr(39) + ')' );
                                     Main_aq.SQL.Add(' UNION ');
                                     Main_aq.SQL.Add('SELECT    man_tarikh as tarikh , ' + chr(39) + chr(39) + ' as username , 0 as shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , ' + varToStr(m11) + ' AS bedehkar, ' + varToStr(m22) + ' AS bestankar FROM     sherkat WHERE (sherkat=' + chr(39) + sherkat.Text + chr(39) +  ')');
                                     Main_aq.SQL.Add(' UNION ');
                                     Main_aq.SQL.Add('SELECT     tarikh , username , shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , sharh, havaleh , meghdarl , noe , kamion , kerayehl AS bedehkar, 0 AS bestankar FROM         barnameh_view ');
                                     Main_aq.SQL.Add(sss2);
                                  end;}

Main_aq.SQL.Add('SELECT    ' + chr(39) + chr(39) + ' as tarikh , ' + chr(39) + chr(39) + ' as username , 0 as shomareh , sherkat , mahal , ' + chr(39) + datetext + chr(39) + ' as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , ' + varToStr(m1) + ' AS bedehkar, ' + varToStr(m2) + ' AS bestankar FROM     barnameh WHERE (sherkat=' + chr(39) + sherkat.Text + chr(39) + ') and (mahal=' + chr(39) + mahal.Text + chr(39) + ')');
Main_aq.SQL.Add(' UNION ');
Main_aq.SQL.Add('SELECT    man_tarikh as tarikh , ' + chr(39) + chr(39) + ' as username , 0 as shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , ' + chr(39) + '„«‰œÂ «Ê·ÌÂ' + chr(39) + ' as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , ' + varToStr(m11) + ' AS bedehkar, ' + varToStr(m22) + ' AS bestankar FROM     sherkat WHERE (sherkat=' + chr(39) + sherkat.Text + chr(39) +  ')');
Main_aq.SQL.Add(' UNION ');

if (rb_sherkat2.Checked) or (rb_sherkat3.Checked) then Main_aq.SQL.Add('(');
Main_aq.SQL.Add('SELECT     tarikh , username , shomareh , sherkat , mahal , sharh, havaleh , meghdarl , noe , kamion , kerayehl AS bedehkar, 0 AS bestankar FROM         barnameh ');
Main_aq.SQL.Add(sss);

//-------------------- agar gozareshe kamel(1) bashad satrhaye check ha neshun dade beshe ama baraye gozareshe(2)(sherkat bazargani) satrhaye bestankari nemikhahim-------------
if (rb_sherkat1.Checked) then begin
                                  Main_aq.SQL.Add(' UNION ');
                                  Main_aq.SQL.Add('(SELECT     tarikh , ' + chr(39) + chr(39) + ' as username , residpk as shomareh , sherkat , ' + chr(39) + chr(39) + ' as mahal , babat as sharh , 0 as havaleh , 0 as meghdarl , ' + chr(39) + chr(39) + ' as noe , ' + chr(39) + chr(39) + ' as kamion , 0 AS bedehkar, mablagh_ch AS bestankar FROM         havaleh_check ');
                                  Main_aq.SQL.Add(sss2);
                                end;
Main_aq.SQL.Add(') order by tarikh');
Main_aq.Open;
//-------------------------------------
{ summary1_aq.Close;
summary1_aq.SQL.Clear;
summary1_aq.SQL.Add('SELECT mablagh_ch FROM Havaleh_check ' + sss2 );
summary1_aq.SQL.Add(' GROUP BY mablagh_ch');
summary1_aq.Open;
if summary1_aq.RecordCount=0 then begin
                                      summary1_aq.Close;
                                      summary1_aq.SQL.Clear;
                                      summary1_aq.SQL.Add('SELECT 0 as mablagh_ch FROM Havaleh_check ');
                                      summary1_aq.Open;
                                      //ShowMessage('ok');
                                   end; }
//-------------------------------------
{ sherkat_mandeh_aq.Close;
sherkat_mandeh_aq.SQL.Clear;
sherkat_mandeh_aq.SQL.Add('Select * FROM sherkat where sherkat=:i0');
sherkat_mandeh_aq.Parameters[0].Value:=sherkat.Edit_Search.Text;
sherkat_mandeh_aq.Open; }
//-------------------------------------
tarikh_rpt :=rpt_havaleh_view.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

mahal_rpt :=rpt_havaleh_view.FindObject('Memo_mahal') as TfrxMemoView;
mahal_rpt.Text := mahal.Text;

if main_aq.RecordCount=0
  then
   Application.MessageBox('»«—‰«„Â Ì« çﬂÌ »« „‘Œ’«  ŒÊ«” Â ‘œÂ ÅÌœ« ‰‘œ',' ÊÃÂ',0)
    else
      rpt_havaleh_view.ShowReport;
a:=sherkat.Text;
sherkat.SetFocus;
sherkat.Text:=a;
end;

procedure Trpt_sherkat_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if sherkat.Text=''
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘—ﬂ  —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              sherkat.Text:='';
                              sherkat.SetFocus;
                             end
                              else reff.SetFocus;
                  end;
end;

procedure Trpt_sherkat_f.FormShow(Sender: TObject);
begin
sherkat.SetFocus;
sherkat.BiDiMode:=bdRightToLeft;
mahal.BiDiMode:=bdRightToLeft;
end;

procedure Trpt_sherkat_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_sherkat_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_sherkat_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_sherkat_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then rb_sherkat1.SetFocus;
end;

procedure Trpt_sherkat_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_sherkat_f.reffEnter(Sender: TObject);
begin
reffClick(sender);
mahal.SetFocus;
end;

procedure Trpt_sherkat_f.reffClick(Sender: TObject);
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
mahal_aq.Parameters[0].Value:= sherkat.Text;
mahal_aq.ExecSQL;
end;

procedure Trpt_sherkat_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if (sherkat.Text='') and (mahal.Text='')
                   then begin
                           Application.MessageBox('·ÿ›« „Õ·  Œ·ÌÂ —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                           mahal.Text:='';
                           mahal.SetFocus;
                         end
                          else mashin.SetFocus;
                end;
end;

procedure Trpt_sherkat_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Trpt_sherkat_f.sherkatEnter(Sender: TObject);
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

procedure Trpt_sherkat_f.mahalEnter(Sender: TObject);
var
  i:integer;
begin
mahal.Clear;
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('select * from mahal_temp order by mahal');
mahal_aq.Open;
for i:=1 to mahal_aq.RecordCount do
      begin
        mahal.Items.Add(mahal_aq['mahal']);
        mahal_aq.Next;
       end;
end;

procedure Trpt_sherkat_f.cb_bazarganiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_sherkat_f.noeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_sherkat_f.rb_sherkat1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_sherkat_f.rb_sherkat2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_sherkat_f.rb_sherkat3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_sherkat_f.noeEnter(Sender: TObject);
var
  i:integer;
begin
noe.Clear;
noe_bar_aq.Close;
noe_bar_aq.SQL.Clear;
noe_bar_aq.SQL.Add('select * from noe_bar order by name');
noe_bar_aq.Open;
for i:=1 to noe_bar_aq.RecordCount do
      begin
        noe.Items.Add(noe_bar_aq['name']);
        noe_bar_aq.Next;
       end;
end;

procedure Trpt_sherkat_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mahal_bar.SetFocus;
end;

procedure Trpt_sherkat_f.mahal_barKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then noe.SetFocus;
end;

procedure Trpt_sherkat_f.mahal_barEnter(Sender: TObject);
var
  i:integer;
begin
mahal_bar.Clear;
mahal_bar_aq.Close;
mahal_bar_aq.SQL.Clear;
mahal_bar_aq.SQL.Add('select distinct mahal_bar from barnameh ');
mahal_bar_aq.Open;
for i:=1 to mahal_bar_aq.RecordCount do
      begin
        mahal_bar.Items.Add(mahal_bar_aq['mahal_bar']);
        mahal_bar_aq.Next;
       end;
end;

end.
