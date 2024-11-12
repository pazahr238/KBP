unit hazineh_search_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, MonyEdit, Grids, DBGrids, Mask,
  frxClass, frxDBSet, DBGrid_Edit;

type
  Thazineh_search_f = class(TForm)
    txtmablagh: TLabel;
    txtbabat: TLabel;
    txtsanad: TLabel;
    txttarikh: TLabel;
    babat: TEdit;
    sanad: TEdit;
    amal: TBitBtn;
    exitt: TBitBtn;
    sanad_aq: TADOQuery;
    txttarikh2: TLabel;
    sanad_ds: TDataSource;
    hazineh_list: TDBGrid;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    rep_hazineh: TBitBtn;
    hazineh_search_db: TfrxDBDataset;
    txtname: TLabel;
    person_aq: TADOQuery;
    mablagh: TMonyEdit;
    name: TEdit;
    rpt_hazineh: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure amalClick(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure babatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh2Exit(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure rep_hazinehClick(Sender: TObject);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure nameExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hazineh_search_f: Thazineh_search_f;
  tarikh_rpt : TfrxMemoView;
    sss : string;

implementation
      uses ras,ras2,date_assis , main_u;
{$R *.dfm}

procedure Thazineh_search_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thazineh_search_f.amalClick(Sender: TObject);
var
  str : array [1..6,1..2] of string;
  c , i ,num , e: integer;
begin

val(sanad.Text,num,e);

if (sanad.Text<>'') and (sanad.text<>'0') and (e=0)
       then begin
              str[1,2]:=sanad.Text;
              str[1,1]:='sanad=';
             end;

if tarikh1.EditText<>'____/__/__'
 then begin
         str[2,2]:=tarikh1.EditText;
         str[2,1]:='tarikh>=';
      end;

if tarikh2.EditText<>'____/__/__'
 then begin
        str[3,2]:=tarikh2.EditText;
        str[3,1]:='tarikh<=';
      end;

if (name.Text<>'') then
                      begin
                        str[4,2]:=name.text;
                        str[4,1]:='name=';
                       end;

val(mablagh.Text, num, e);
if (mablagh.Text<>'') and (mablagh.text<>'0') and (e=0)
                        then
                          begin
                            str[5,2]:= vartostr(mablagh.Value);
                            str[5,1]:='mablagh=';
                          end;
if babat.Text<>'' then begin
                          str[6,2]:='%' + babat.Text + '%';
                          str[6,1]:='babat LIKE ';
                        end;
c:=1; sss:='';
for i:=1 to 6 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then begin
                                                                    if (str[i,1]='tarikh<=') or (str[i,1]='tarikh>=') or (str[i,1]='babat LIKE ') or (str[i,1]='name=') then
                                                                          sss:=sss + ' where (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                                         else
                                                                          sss:=sss + ' where (' + str[i,1] + str[i,2] + ')';
                                                                  end
                                                          else begin
                                                                  if (str[i,1]='tarikh<=') or (str[i,1]='tarikh>=') or (str[i,1]='babat LIKE ') or (str[i,1]='name=') then
                                                                          sss:=sss+ ' and (' + str[i,1] + chr(39) + str[i,2] + chr(39) + ')'
                                                                        else
                                                                          sss:=sss+ ' and (' + str[i,1] + str[i,2] + ')' ;
                                                                end;
                                                     c:=c+1;
                                                    end;
                  end;
//ShowMessage(sss);
sanad_aq.Close;
sanad_aq.SQL.Clear;
sanad_aq.SQL.Add('select * from hazineh ' + sss + ' order by tarikh');
sanad_aq.Open;

end;

procedure Thazineh_search_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

procedure Thazineh_search_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then babat.SetFocus;
end;

procedure Thazineh_search_f.babatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thazineh_search_f.amalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amalClick(sender);
end;

procedure Thazineh_search_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.setfocus;
end;

procedure Thazineh_search_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then name.SetFocus;
end;

procedure Thazineh_search_f.tarikh1Exit(Sender: TObject);
begin
if (Not main_f.check_date(tarikh1.EditText)) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Thazineh_search_f.tarikh2Exit(Sender: TObject);
begin
if (Not main_f.check_date(tarikh2.EditText)) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Thazineh_search_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thazineh_search_f.rep_hazinehClick(Sender: TObject);
begin
rpt_hazineh.LoadFromFile('hazineh.fr3');
sanad_aq.Close;
sanad_aq.SQL.Clear;
sanad_aq.SQL.Add('select * from hazineh ' + sss + ' order by tarikh');
sanad_aq.Open;
//-----------------------------------------------------
tarikh_rpt :=rpt_hazineh.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if sanad_aq.RecordCount=0
  then Application.MessageBox('”‰œÌ »« „‘Œ’«  ŒÊ«” Â ‘œÂ ÅÌœ« ‰‘œ',' ÊÃÂ',0)
     else
      rpt_hazineh.ShowReport;
end;

procedure Thazineh_search_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh.SetFocus;
end;

procedure Thazineh_search_f.FormShow(Sender: TObject);
begin
mablagh.BiDiMode:=bdRightToLeft;
end;

procedure Thazineh_search_f.nameExit(Sender: TObject);
begin
if name.Text<>'' then begin
                        person_aq.Close;
                        person_aq.SQL.Clear;
                        person_aq.SQL.Add('select * from kamion where (mashin=:i0)');
                        person_aq.Parameters[0].Value:=name.Text;
                        person_aq.open;
                        person_aq.First;
                        if (person_aq.RecordCount>0)
                                              then mablagh.SetFocus
                                                else begin
                                                      Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                                                      name.SetFocus;
                                                      name.Clear;
                                                     end;
                       end;
end;

procedure Thazineh_search_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
