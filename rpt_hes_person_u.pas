unit rpt_hes_person_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_hes_person_f = class(TForm)
    Panel1: TPanel;
    txtsharh: TLabel;
    txttarikh2: TLabel;
    txttarikh1: TLabel;
    txtperson: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    sharh: TEdit;
    person: TComboBox;
    hes_person_aq: TADOQuery;
    Hes_person_db: TfrxDBDataset;
    person_aq: TADOQuery;
    amal: TBitBtn;
    exitt: TBitBtn;
    rpt_hes_person: TfrxReport;
    procedure exittClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure personEnter(Sender: TObject);
    procedure personExit(Sender: TObject);
    procedure personKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
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
  rpt_hes_person_f: Trpt_hes_person_f;
  tarikh_rpt : TfrxMemoView; 

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_hes_person_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_hes_person_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_hes_person_f.personEnter(Sender: TObject);
var
  i : integer;
begin
person_aq.Close;
person_aq.SQL.Clear;
person_aq.SQL.Add('select * from person ');
person_aq.Open;
for i:=1 to person_aq.RecordCount do
      begin
        person.Items.Add(person_aq['name']);
        person_aq.Next;
       end;
end;

procedure Trpt_hes_person_f.personExit(Sender: TObject);
begin
if exitt.Focused then exit;
if person.Text='' then begin
                         Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                         person.SetFocus;
                        end;
end;

procedure Trpt_hes_person_f.personKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=13 then sharh.SetFocus;
end;

procedure Trpt_hes_person_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Trpt_hes_person_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_hes_person_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_hes_person_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_hes_person_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_hes_person_f.FormShow(Sender: TObject);
begin
person.SetFocus;
end;

procedure Trpt_hes_person_f.amalClick(Sender: TObject);
var
  str , str2 , str3 : array [1..4,1..2] of string;
  sss , sss2 , sss3 , mandehtxt : string;
  c , i : integer;
  m11 , m22 : variant;
begin
if (person.Text<>'') then
                         begin
                            str[1,2]:= person.text ;
                            str[1,1]:='name=';
                            str2[1,2]:= person.text ;
                            str2[1,1]:='sherkat=';
                            str3[1,2]:= person.text ;
                            str3[1,1]:='mashin=';
                          end;
if (sharh.Text<>'') then
                         begin
                            str[2,2]:='%' + sharh.text + '%';
                            str[2,1]:='babat LIKE ';
                            str2[2,2]:='%' + sharh.text + '%';
                            str2[2,1]:='babat LIKE ';
                            str3[2,2]:='%' + sharh.text + '%';
                            str3[2,1]:='sharh LIKE ';
                          end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>=';
       str2[3,2]:=tarikh1.EditText;
       str2[3,1]:='tarikh>=';
       str3[3,2]:=tarikh1.EditText;
       str3[3,1]:='tarikh>=';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<=';
       str2[4,2]:=tarikh2.EditText;
       str2[4,1]:='tarikh<=';
       str3[4,2]:=tarikh2.EditText;
       str3[4,1]:='tarikh<=';
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
rpt_hes_person.LoadFromFile('hes_person.fr3');
hes_person_aq.Close;
hes_person_aq.SQL.Clear;
hes_person_aq.SQL.Add('Select mandeh from Person ');
hes_person_aq.SQL.Add('where name=' + chr(39) + person.Text + chr(39));
hes_person_aq.Open;
hes_person_aq.First;
m11:=0;m22:=0;
if VarIsNull(hes_person_aq['mandeh'])
                              then begin
                                     m11:=0;
                                     m22:=0;
                                    end
                                     else begin
                                           if hes_person_aq['mandeh']<0 then m11:=-hes_person_aq['mandeh']
                                              else m22:=hes_person_aq['mandeh'];
                                           end;   
mandehtxt:='„«‰œÂ «Ê·ÌÂ';
//-------------------------------------
hes_person_aq.Close;
hes_person_aq.SQL.Clear;
hes_person_aq.SQL.Add('SELECT     0 as sanad, ' + chr(39) + chr(39) + ' as tarikh , ' + chr(39) + mandehtxt + chr(39) + ' as babat , ' + vartostr(m11) + ' AS bedehkar, ' + vartostr(m22) + ' AS bestankar, ' + chr(39) + chr(39) + ' AS mahal, char(0) AS p2, char(0) AS p3 , name FROM     Person ');
hes_person_aq.SQL.Add('where name=' + chr(39) + person.Text + chr(39));
hes_person_aq.SQL.Add(' UNION ');
hes_person_aq.SQL.Add('SELECT     sanad, tarikh, sharh as babat, mablagh AS bedehkar, 0 AS bestankar, az AS mahal, hesab AS p2, chek AS p3 , mashin as name FROM     Hes_Melk ');
hes_person_aq.SQL.Add(sss3);
hes_person_aq.SQL.Add(' UNION ');
hes_person_aq.SQL.Add('SELECT     sanad, tarikh, babat, mablagh AS bedehkar, 0 AS bestankar, ' + chr(39) + '’‰œÊﬁ' + chr(39) + ' AS mahal, char(0) AS p2, char(0) AS p3 , name FROM     Hazineh ');
hes_person_aq.SQL.Add(sss);
hes_person_aq.SQL.Add(' UNION ');
hes_person_aq.SQL.Add('SELECT   0 as sanad, tarikh , babat , remain AS bedehkar, 0 AS bestankar, ' + chr(39) + chr(39) + ' as mahal, char(0) AS p2, char(0) AS p3 , name FROM        Vam ');
hes_person_aq.SQL.Add(sss);
hes_person_aq.SQL.Add(' UNION ');
hes_person_aq.SQL.Add('(SELECT   residpk AS sanad, tarikh, babat, 0 AS bedehkar, mablagh_ch AS bestankar , ' + chr(39) + 'Õ”«» »«‰òÌ' + chr(39) + ' as mahal, sh_ch AS p2, hesab AS p3, sherkat AS name  From Havaleh_check ');
hes_person_aq.SQL.Add(sss2);
hes_person_aq.SQL.Add(') order by tarikh');
//ShowMessage(hes_person_aq.SQL.Text);
hes_person_aq.Open;
//-------------------------------------
tarikh_rpt :=rpt_hes_person.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if hes_person_aq.RecordCount=0
  then
    Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0)
     else
      rpt_hes_person.ShowReport;
person.SetFocus;
end;

procedure Trpt_hes_person_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
