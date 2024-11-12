unit rpt_anbar_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_anbar_f = class(TForm)
    Panel1: TPanel;
    txtkala: TLabel;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    tarikh2: TMaskEdit;
    tarikh1: TMaskEdit;
    kala_aq: TADOQuery;
    anbar_aq: TADOQuery;
    anbarDB: TfrxDBDataset;
    amal: TBitBtn;
    exitt: TBitBtn;
    kala: TComboBox;
    daste_kala: TComboBox;
    txtdaste_kala: TLabel;
    daste_kala_aq: TADOQuery;
    rpt_anbar: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure daste_kalaEnter(Sender: TObject);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaEnter(Sender: TObject);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_anbar_f: Trpt_anbar_f;
  kala_rpt , tarikh_rpt : TfrxMemoView;

implementation
      uses main_u, ras, ras2 , date_assis;
{$R *.dfm}

procedure Trpt_anbar_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_anbar_f.FormShow(Sender: TObject);
begin
daste_kala.SetFocus;
end;

procedure Trpt_anbar_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_anbar_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_anbar_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_anbar_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_anbar_f.amalClick(Sender: TObject);
var
  str : array [1..4,1..2] of string;
  sss : string;
  c , i : integer;
begin
{if kala.Text='' then begin
                         Application.MessageBox('·ÿ›« ‰«„ ﬂ«·« —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                         daste_kala.SetFocus;
                         daste_kala.Text:='';
                       exit;
                      end; }
if (daste_kala.Text<>'')
                then
                   begin
                     str[1,2]:=daste_kala.Text;
                     str[1,1]:='daste_kala';
                   end;
if (kala.Text<>'')
                then
                   begin
                     str[2,2]:=kala.Text;
                     str[2,1]:='kala';
                   end;
if tarikh1.EditText<>'____/__/__'
 then begin
       str[3,2]:=tarikh1.EditText;
       str[3,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[4,2]:=tarikh2.EditText;
       str[4,1]:='tarikh<';
      end;
c:=1; sss:='';
for i:=1 to 4 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then
                                                               sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                          else
                                                               sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')';
                                                     c:=c+1;
                                                    end;
                  end;
rpt_anbar.LoadFromFile('anbar.fr3');
//-------------------------------------
anbar_aq.Close;
anbar_aq.SQL.Clear;
//-------------------------- vorudie anbar -----------------
anbar_aq.SQL.Add('SELECT   tarikh , kala , sanad , meghdar as sharh , ' + chr(39) + '«‰»«—' + chr(39) + ' as dary , 0 as bedehkar , gh_kol as bestankar , az , hesab , chek FROM anbarv ');
anbar_aq.SQL.Add(sss);

//-------------------------- khorujie anbar ---------------
anbar_aq.SQL.Add(' UNION ');
anbar_aq.SQL.Add('(SELECT  tarikh , kala , sanad , meghdar as sharh , kamion as dary , meghdar*gh_vahed as bedehkar , 0 as bestankar , ' + chr(39) + chr(39) + ' as az ,' + chr(39) + chr(39) + ' as hesab ,' + chr(39) + chr(39) + ' as chek FROM anbarkh ');
anbar_aq.SQL.Add(sss);
anbar_aq.SQL.Add(') order by tarikh');
anbar_aq.Open;
//-------------------------------------
tarikh_rpt :=rpt_anbar.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

kala_rpt :=rpt_anbar.FindObject('Memo_kala') as TfrxMemoView;
if kala.Text<>'' then
        kala_rpt.Text:=kala.Text
              else if daste_kala.Text<>'' then
                               kala_rpt.Text :='(' + 'œ” Â ﬂ«·«Ì : '+ daste_kala.Text + ')'
                                  else kala_rpt.Text := '( Ê÷⁄Ì  ﬂ·Ì «‰»«— )';

if anbar_aq.RecordCount=0
  then
   Application.MessageBox('„ÊÃÊœÌ «‰»«— ’›— «” ',' ÊÃÂ',0)
    else
      rpt_anbar.ShowReport;
daste_kala.SetFocus;
daste_kala.Text:='';
kala.Text:='';
end;

procedure Trpt_anbar_f.exittClick(Sender: TObject);
begin
close;
{  kala on exit proc
if (key=13) then begin
                   if (kala.Edit_Search.Text='')
                      then begin
                              Application.MessageBox('·ÿ›« ‰«„ ﬂ«·« —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                              kala.Edit_Search.Clear;
                              kala.Edit_Search.SetFocus;
                             end
                              else begin
                                      tarikh1.SetFocus;
                                      kala.Hide;
                                    end;
                  end;
}
end;

procedure Trpt_anbar_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Trpt_anbar_f.daste_kalaEnter(Sender: TObject);
var
   i : integer;
begin
daste_kala.Clear;
daste_kala_aq.Close;
daste_kala_aq.SQL.Clear;
daste_kala_aq.SQL.Add('select * from daste_kala ');
daste_kala_aq.Open;
for i:=1 to daste_kala_aq.RecordCount do
      begin
        daste_kala.Items.Add(daste_kala_aq['name']);
        daste_kala_aq.Next;
       end;
end;

procedure Trpt_anbar_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kala.SetFocus;
end;

procedure Trpt_anbar_f.kalaEnter(Sender: TObject);
var
  i : integer;
begin
kala.Clear;
//------------------------ liste kala haye vorudie anbar -----------------------
kala_aq.Close;
kala_aq.SQL.Clear;
kala_aq.SQL.Add('select distinct kala from anbarv ');
kala_aq.SQL.Add('where daste_kala=' + chr(39) + daste_kala.Text + chr(39));
kala_aq.Open;
for i:=1 to kala_aq.RecordCount do
      begin
        kala.Items.Add(kala_aq['kala']);
        kala_aq.Next;
       end;
//------------------------ liste kala haye khorujie anbar ----------------------
kala_aq.Close;
kala_aq.SQL.Clear;
kala_aq.SQL.Add('select distinct kala from anbarkh ');
kala_aq.SQL.Add('where daste_kala=' + chr(39) + daste_kala.Text + chr(39));
kala_aq.Open;
for i:=1 to kala_aq.RecordCount do
      begin
        kala.Items.Add(kala_aq['kala']);
        kala_aq.Next;
       end;
end;

procedure Trpt_anbar_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh1.SetFocus;
end;

end.
