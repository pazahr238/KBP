unit havaleh_jc_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, Grids, DBGrids, DBGrid_Edit,
  ExtCtrls, DBCtrls, Buttons;

type
  Thavaleh_jc_f = class(TForm)
    GroupBox2: TGroupBox;
    txtbank: TLabel;
    txttarikh_ch: TLabel;
    txtshobeh: TLabel;
    txtbeh: TLabel;
    txtresidpk: TLabel;
    txtmablagh_ch: TLabel;
    shobeh: TEdit;
    bank: TDBGrid_Edit;
    tarikh_ch: TMaskEdit;
    residpk: TEdit;
    beh: TComboBox;
    mablagh_ch: TEdit;
    hesab_aq: TADOQuery;
    hesab_ds: TDataSource;
    grid: TDBGrid;
    havaleh_view_aq: TADOQuery;
    havaleh_ds: TDataSource;
    amal: TBitBtn;
    exitt: TBitBtn;
    nav: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tarikh_chExit(Sender: TObject);
    procedure tarikh_chKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shobehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure residpkExit(Sender: TObject);
    procedure residpkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure behKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablagh_chExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bankEnter(Sender: TObject);
    procedure bankDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mablagh_chKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  havaleh_jc_f: Thavaleh_jc_f;
  fff : boolean;

implementation

uses main_u;

{$R *.dfm}

procedure Thavaleh_jc_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thavaleh_jc_f.tarikh_chExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh_ch.EditText) and (tarikh_ch.EditText<>'____/__/__')
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh_ch.Clear;
        tarikh_ch.SetFocus;
       end;
end;

procedure Thavaleh_jc_f.tarikh_chKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then bank.Edit_Search.SetFocus;
end;

procedure Thavaleh_jc_f.bankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shobeh.SetFocus;
end;

procedure Thavaleh_jc_f.shobehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then residpk.SetFocus;
end;

procedure Thavaleh_jc_f.residpkExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(residpk.Text,num,e);
if (e<>0) and (residpk.Text<>'') then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì —”Ìœ Å—œ«Œ  ﬂ—«ÌÂ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
               residpk.Clear;
               residpk.SetFocus;
              end;
end;

procedure Thavaleh_jc_f.residpkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then beh.SetFocus;
end;

procedure Thavaleh_jc_f.behKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh_ch.SetFocus;
end;

procedure Thavaleh_jc_f.mablagh_chExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(mablagh_ch.Text,num,e);
if (e<>0) and (mablagh_ch.Text<>'') then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „»·€ çﬂ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh_ch.Clear;
               mablagh_ch.SetFocus;
              end;
end;

procedure Thavaleh_jc_f.FormShow(Sender: TObject);
begin
tarikh_ch.SetFocus;
bank.Edit_Search.BiDiMode:=bdRightToLeft;
bank.Edit_Search.Ctl3D:=false;
end;

procedure Thavaleh_jc_f.bankEnter(Sender: TObject);
begin
if Not bank.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Thavaleh_jc_f.bankDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
bank.Height:=55;
end;

procedure Thavaleh_jc_f.mablagh_chKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thavaleh_jc_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thavaleh_jc_f.amalClick(Sender: TObject);
var
  str : array [1..6,1..2] of string;
  sss : string;
  c , i , num , e: integer;
begin
if (main_f.check_date(tarikh_ch.EditText))
           then begin
                   str[1,2]:=tarikh_ch.EditText ;
                   str[1,1]:='tarikh';
                 end;

if bank.Return_Value<>'0'
           then begin
                   str[2,2]:=bank.Edit_Search.Text;
                   str[2,1]:='bank';
                 end;

if shobeh.Text<>''
           then begin
                   str[3,2]:=shobeh.Text;
                   str[3,1]:='shobeh';
                 end;

val(residpk.Text, num ,e);
if (residpk.Text<>'') and (residpk.text<>'0') and (e=0)
                        then
                          begin
                            str[4,2]:= residpk.Text;
                            str[4,1]:='residpk';
                          end;
if beh.Text<>''
           then begin
                   str[5,2]:=inttostr(beh.itemindex-1);
                   str[5,1]:='beh';
                 end;

val(mablagh_ch.Text, num ,e);
if (mablagh_ch.Text<>'') and (mablagh_ch.text<>'0') and (e=0)
                        then
                          begin
                            str[6,2]:= mablagh_ch.text;
                            str[6,1]:='mablagh_ch';
                          end;
c:=1; sss:='';
for i:=1 to 6 do begin
                   if str[i,2]='' then continue else begin
                                                     if c=1 then begin
                                                                   if (str[i,1]='bank') or (str[i,1]='shobeh') or (str[i,1]='tarikh')
                                                                    then
                                                                     sss:=sss + ' where (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                                      else
                                                                        sss:=sss + ' where (' + str[i,1] + '=' + str[i,2] + ')'
                                                                  end
                                                          else begin
                                                                   if (str[i,1]='bank') or (str[i,1]='shobeh') or (str[i,1]='tarikh')
                                                                    then
                                                                     sss:=sss + ' and (' + str[i,1] + '=' + chr(39) + str[i,2] + chr(39) + ')'
                                                                      else
                                                                        sss:=sss+ ' and (' + str[i,1] + '=' + str[i,2] + ')' ;
                                                                end;
                                                       c:=c+1;
                                                      end;
                  end;
havaleh_view_aq.Close;
havaleh_view_aq.SQL.Clear;
havaleh_view_aq.SQL.Add('select * from havaleh_check ' + sss + ' order by tarikh');
havaleh_view_aq.Open;
//--------------------------- end of amal click ------------------------------------------
end;

procedure Thavaleh_jc_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
