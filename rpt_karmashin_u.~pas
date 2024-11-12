unit rpt_karmashin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  StdCtrls, Buttons, Mask, ExtCtrls;

type
  Trpt_karmashin_f = class(TForm)
    Panel1: TPanel;
    txtmashin: TLabel;
    txttarikh1: TLabel;
    txttarikh2: TLabel;
    txtsherkat: TLabel;
    txtmahal: TLabel;
    tarikh1: TMaskEdit;
    tarikh2: TMaskEdit;
    mashin: TEdit;
    mahal: TComboBox;
    sherkat: TComboBox;
    reff: TBitBtn;
    mashin_aq: TADOQuery;
    main_aq: TADOQuery;
    Main_karmashin_db: TfrxDBDataset;
    sherkat_aq: TADOQuery;
    mahal_aq: TADOQuery;
    summary1_aq: TADOQuery;
    rpt_summary1_karmashin_db: TfrxDBDataset;
    exitt: TBitBtn;
    amal: TBitBtn;
    rpt_karmashin: TfrxReport;
    Label1: TLabel;
    Label2: TLabel;
    mahal_bar: TComboBox;
    noe_bar: TComboBox;
    mahal_bar_aq: TADOQuery;
    noe_bar_aq: TADOQuery;
    procedure amalClick(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh1Exit(Sender: TObject);
    procedure tarikh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikh2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reffClick(Sender: TObject);
    procedure reffEnter(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatEnter(Sender: TObject);
    procedure mahalEnter(Sender: TObject);
    procedure mahal_barKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noe_barKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahal_barEnter(Sender: TObject);
    procedure noe_barEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rpt_karmashin_f: Trpt_karmashin_f;
  tarikh_rpt : TfrxMemoView; 
  fff : boolean;

implementation

uses main_u, ras, ras2 , date_assis;

{$R *.dfm}

procedure Trpt_karmashin_f.amalClick(Sender: TObject);
var
  str : array [1..7,1..2] of string;
  sss : string;
  c , i : integer;
begin
if (mashin.Text<>'') then
                         begin
                            str[1,2]:=mashin.Text;
                            str[1,1]:='kamion';
                          end;

if (sherkat.Text<>'') then
                          begin
                            str[2,2]:=sherkat.text;
                            str[2,1]:='sherkat';
                          end;

if (mahal.Text<>'') then
                          begin
                            str[3,2]:=mahal.text;
                            str[3,1]:='mahal';
                          end;
if (mahal_bar.Text<>'') then
                          begin
                            str[4,2]:=mahal_bar.text;
                            str[4,1]:='mahal_bar';
                          end;
if (noe_bar.Text<>'') then
                          begin
                            str[5,2]:=noe_bar.text;
                            str[5,1]:='noe';
                          end;

if tarikh1.EditText<>'____/__/__'
 then begin
       str[6,2]:=tarikh1.EditText;
       str[6,1]:='tarikh>';
      end;
if tarikh2.EditText<>'____/__/__'
 then begin
       str[7,2]:=tarikh2.EditText;
       str[7,1]:='tarikh<';
      end;
 {
str[6,2]:= 'barnameh_view.sherkat';
str[6,1]:= 'barnameh_view.sherkat';
  }
 c:=1; sss:='';
for i:=1 to 7 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then
                                                              sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                            else
                                                              sss:=sss+ ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')';
                                                     c:=c+1;
                                                    end;
                  end;
rpt_karmashin.LoadFromFile('karkard_mashin.fr3');
//-------------------------------------
Main_aq.Close;
Main_aq.SQL.Clear;
Main_aq.SQL.Add('SELECT tarikh, shomareh, sherkat, meghdarl , meghdark , masafat, mahal, mahal_bar , kamion , kerayehk FROM barnameh ' + sss );
Main_aq.SQL.Add(' GROUP BY tarikh, shomareh, sherkat, meghdarl , meghdark , masafat, mahal, mahal_bar , kamion, kerayehk ORDER BY tarikh ' );
Main_aq.Open;
//-------------------------------------
summary1_aq.Close;
summary1_aq.SQL.Clear;
summary1_aq.SQL.Add('SELECT shomareh , meghdarl , meghdark , masafat , kerayehk FROM barnameh ' + sss );
summary1_aq.SQL.Add(' GROUP BY shomareh , meghdarl , meghdark , masafat , kerayehk ');
summary1_aq.Open;
summary1_aq.First;
//-------------------------------------
tarikh_rpt :=rpt_karmashin.FindObject('Memo_tarikh') as TfrxMemoView;
tarikh_rpt.Text := long_date_format;

if Main_aq.RecordCount=0
  then
    Application.MessageBox('»«—‰«„Â «Ì »« „‘Œ’«  ŒÊ«” Â ‘œÂ ÅÌœ« ‰‘œ',' ÊÃÂ',0)
     else
      rpt_karmashin.ShowReport;
mashin.SetFocus;
end;

procedure Trpt_karmashin_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then sherkat.SetFocus;
end;

procedure Trpt_karmashin_f.tarikh1Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh1.EditText) and (tarikh1.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh1.Clear;
        tarikh1.SetFocus;
       end;
end;

procedure Trpt_karmashin_f.tarikh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh2.SetFocus;
end;

procedure Trpt_karmashin_f.tarikh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Trpt_karmashin_f.tarikh2Exit(Sender: TObject);
begin
if Not main_f.check_date(tarikh2.EditText) and (tarikh2.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh2.Clear;
        tarikh2.SetFocus;
       end;
end;

procedure Trpt_karmashin_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Trpt_karmashin_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
end;

procedure Trpt_karmashin_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Trpt_karmashin_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then reff.SetFocus;
end;

procedure Trpt_karmashin_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then mahal_bar.SetFocus;
end;

procedure Trpt_karmashin_f.reffClick(Sender: TObject);
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

procedure Trpt_karmashin_f.reffEnter(Sender: TObject);
begin
reffClick(sender);
mahal.SetFocus;
end;

procedure Trpt_karmashin_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) or (mashin.Text='')
                      then 
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Trpt_karmashin_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Trpt_karmashin_f.sherkatEnter(Sender: TObject);
var
  i:integer;
begin
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from sherkat ');
sherkat_aq.Open;
sherkat.Clear;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['sherkat']);
        sherkat_aq.Next;
       end;
end;

procedure Trpt_karmashin_f.mahalEnter(Sender: TObject);
var
  i:integer;
begin
mahal.Clear;
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('select * from mahal_temp ');
mahal_aq.Open;
for i:=1 to mahal_aq.RecordCount do
      begin
        mahal.Items.Add(mahal_aq['mahal']);
        mahal_aq.Next;
       end;
end;

procedure Trpt_karmashin_f.mahal_barKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then noe_bar.SetFocus;
end;

procedure Trpt_karmashin_f.noe_barKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then tarikh1.SetFocus;
end;

procedure Trpt_karmashin_f.mahal_barEnter(Sender: TObject);
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

procedure Trpt_karmashin_f.noe_barEnter(Sender: TObject);
var
  i:integer;
begin
noe_bar.Clear;
noe_bar_aq.Close;
noe_bar_aq.SQL.Clear;
noe_bar_aq.SQL.Add('select * from noe_bar ');
noe_bar_aq.Open;
for i:=1 to noe_bar_aq.RecordCount do
      begin
        noe_bar.Items.Add(noe_bar_aq['name']);
        noe_bar_aq.Next;
       end;
end;

end.
