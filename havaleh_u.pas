unit havaleh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, OleCtrls,
  DBGrids, DBGrid_Edit, DB, ADODB;

type
  Thavaleh_f = class(TForm)
    exitt: TBitBtn;
    amal: TBitBtn;
    GroupBox1: TGroupBox;
    grid: TStringGrid;
    txtsherkat: TLabel;
    tarikh: TMaskEdit;
    txttarikh: TLabel;
    tedad: TEdit;
    txttedad: TLabel;
    txtnoe: TLabel;
    noe: TComboBox;
    shomareh1: TEdit;
    shomareh2: TEdit;
    txtshomareh1: TLabel;
    txtshomareh2: TLabel;
    litraj: TEdit;
    txtlitraj: TLabel;
    ins: TBitBtn;
    sherkat_ds: TDataSource;
    sherkat_aq: TADOQuery;
    sherkat: TDBGrid_Edit;
    havaleh_aq: TADOQuery;
    txtamar: TLabel;
    amar: TEdit;
    hazf: TBitBtn;
    havaleh_check_aq: TADOQuery;
    h_index: TEdit;
    txth_index: TLabel;
    txtresidpk: TLabel;
    residpk: TEdit;
    reff: TBitBtn;
    mahal: TDBGrid_Edit;
    mahal_aq: TADOQuery;
    mahal_ds: TDataSource;
    txtmahal: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure amalClick(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure tedadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tedadExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shomareh1Exit(Sender: TObject);
    procedure shomareh2Exit(Sender: TObject);
    procedure litrajExit(Sender: TObject);
    procedure shomareh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shomareh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure litrajKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure insClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure tarikhEnter(Sender: TObject);
    procedure hazfClick(Sender: TObject);
    procedure shomareh2Enter(Sender: TObject);
    procedure mablagh_chExit(Sender: TObject);
    procedure sh_chKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure h_indexKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure h_indexExit(Sender: TObject);
    procedure residpkExit(Sender: TObject);
    procedure residpkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mahalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sherkatEnter(Sender: TObject);
    procedure mahalEnter(Sender: TObject);
    procedure reffClick(Sender: TObject);
    procedure reffEnter(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  havaleh_f: Thavaleh_f;
  dh : int64;

implementation
       uses main_u , ras2 ;
{$R *.dfm}

procedure Thavaleh_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thavaleh_f.amalClick(Sender: TObject);
label l;
var
  num : int64;
  i , e: integer;
begin
// dar soorate afzudan be mavarede ghabli, ebteda havaleh haye ba shomareh daste havaleh taeen shode bayad hazf shavad ta tekrari sabt nashavad
if noe_havaleh_afzoodan='1' then
    begin
        havaleh_aq.Close;
          havaleh_aq.SQL.Clear;
            havaleh_aq.SQL.Add('Delete From Havaleh ');
           havaleh_aq.SQL.Add('Where (h_index=:i0) ');
          havaleh_aq.Parameters[0].Value:=strtoint(h_index.Text);
        havaleh_aq.ExecSQL;
     end;

if amal.Caption='Õ–› ›«ﬂ Ê—' then goto l;

// taeene daste havaleh (shomareh gorooh)
if noe_havaleh_afzoodan='0' then
      dh:=main_f.code_generator('havaleh','h_index')
          else
             dh:=strtoint(h_index.Text);

for i:=1 to grid.RowCount-2 do
                begin
                  //---------------------- agar yek satre grid khali bood anra sabt nakonad ----
                  if grid.Rows[i][5]='' then continue;
                  havaleh_aq.Close;
                  havaleh_aq.SQL.Clear;
                  havaleh_aq.SQL.Add('Insert into Havaleh (sherkat , mahal , tarikh , tedad , noe , shomareh1 , shomareh2 , litraj , mablagh , h_index , residpk)');
                  havaleh_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8,:i9,:i10)');
                  havaleh_aq.Parameters[0].Value:=grid.Rows[i][0];
                  havaleh_aq.Parameters[1].Value:=grid.Rows[i][1];
                  havaleh_aq.Parameters[2].Value:=StrToDate(grid.Rows[i][2]);
                  havaleh_aq.Parameters[3].Value:=strtoint(grid.Rows[i][3]);
                  havaleh_aq.Parameters[4].Value:=grid.Rows[i][4];
                  havaleh_aq.Parameters[5].Value:=grid.Rows[i][5];
                  havaleh_aq.Parameters[6].Value:=grid.Rows[i][6];
                  havaleh_aq.Parameters[7].Value:=strtoint(grid.Rows[i][7]);
                  havaleh_aq.Parameters[8].Value:=strtoint(grid.Rows[i][3]) * strtoint(grid.Rows[i][7]) * sherkat_aq['mablaghl'];
                  havaleh_aq.Parameters[9].Value:= dh ;
                  havaleh_aq.Parameters[10].Value:= strtoint(residpk.Text) ;
                  havaleh_aq.ExecSQL;

                  {havaleh_aq.Open;
                  havaleh_aq.Insert;
                   havaleh_aq['sherkat']:=grid.Rows[i][6];
                     havaleh_aq['tarikh']:=StrToDate(grid.Rows[i][5]);
                      havaleh_aq['tedad']:=strtoint(grid.Rows[i][4]);
                        havaleh_aq['noe']:=grid.Rows[i][3];
                          havaleh_aq['shomareh1']:=grid.Rows[i][2];
                           havaleh_aq['shomareh2']:=grid.Rows[i][1];
                            havaleh_aq['litraj']:=strtoint(grid.Rows[i][0]);
                             havaleh_aq['mablagh']:=strtoint(grid.Rows[i][4]) * strtoint(grid.Rows[i][0]) * sherkat_aq['mablaghl'];
                              havaleh_aq['h_index']:= dh ;
                               havaleh_aq['residpk']:=strtoint(residpk.Text) ;
                  havaleh_aq.Post;
                  havaleh_aq.Close;}
                 end;
l : Application.MessageBox('⁄„·Ì«  »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',' ÊÃÂ',0);
close;
end;

procedure Thavaleh_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (sherkat.Edit_Search.Text<>'') and (sherkat.Return_Value<>'0')
                      then begin
                             main_u.fff:=true;
                             reffClick(havaleh_f);
                             mahal.Edit_Search.SetFocus;
                            end
                        else begin
                              Application.MessageBox('·ÿ›« Ê«Õœ œ—ŒÊ«” Ì —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              sherkat.Edit_Search.Clear;
                              sherkat.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Thavaleh_f.FormShow(Sender: TObject);
begin
if noe_havaleh_afzoodan='0' then sherkat.Edit_Search.SetFocus;
if noe_havaleh_afzoodan='1' then h_index.SetFocus;
grid.Rows[0].Append('  ‘—ﬂ ');
grid.Rows[0].Append('  „Õ·  Œ·ÌÂ');
grid.Rows[0].Append('   «—ÌŒ');
grid.Rows[0].Append('   ⁄œ«œ');
grid.Rows[0].Append('  ‰Ê⁄');
grid.Rows[0].Append('  «“ ‘„«—Â');
grid.Rows[0].Append('   « ‘„«—Â');
grid.Rows[0].Append('  ·Ì —«é');
sherkat.Edit_Search.Ctl3D:=false;
sherkat.Edit_Search.BiDiMode:=bdRightToLeft;
mahal.Edit_Search.Ctl3D:=false;
mahal.Edit_Search.BiDiMode:=bdRightToLeft;
main_u.fff:=false;
end;

procedure Thavaleh_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Thavaleh_f.tedadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then noe.SetFocus;
end;

procedure Thavaleh_f.tedadExit(Sender: TObject);
var
 num , e : integer;
begin
val(tedad.Text,num,e);
if (e<>0) or (tedad.Text='0') then
              begin
               Application.MessageBox('·ÿ›«  ⁄œ«œ ÕÊ«·Â —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               tedad.Clear;
               tedad.SetFocus;
              end;
end;

procedure Thavaleh_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if  key=13 then tedad.SetFocus;
end;

procedure Thavaleh_f.noeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shomareh1.SetFocus;
end;

procedure Thavaleh_f.shomareh1Exit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(shomareh1.Text,num,e);
if (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â ÕÊ«·Â „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               shomareh1.Clear;
               shomareh1.SetFocus;
              end;
end;

procedure Thavaleh_f.shomareh2Exit(Sender: TObject);
var
 num : int64;
 e : integer;
begin
val(shomareh2.Text,num,e);
if (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â ÕÊ«·Â „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               shomareh2.Clear;
               shomareh2.SetFocus;
              end;
tedad.Text:=IntToStr(strtoint64(shomareh2.Text) - strtoint64(shomareh1.Text) + 1);
if StrToInt64(tedad.Text)<=0 then begin
                                    Application.MessageBox('·ÿ›«  ⁄œ«œ Ê ‘„«—Â ÕÊ«·Â »«— —« ’ÕÌÕ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                    tedad.SetFocus;
                                    tedad.Clear;
                                    shomareh1.Clear;
                                    shomareh2.Clear;
                                   end;
end;

procedure Thavaleh_f.litrajExit(Sender: TObject);
var
 num : int64 ;
 e : integer;
begin
val(litraj.Text , num , e);
if (e<>0) then
              begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „»·€ „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               litraj.Clear;
               litraj.SetFocus;
              end;
end;

procedure Thavaleh_f.shomareh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then shomareh2.SetFocus;
end;

procedure Thavaleh_f.shomareh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then litraj.SetFocus;
end;

procedure Thavaleh_f.litrajKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then ins.SetFocus;
end;

procedure Thavaleh_f.insClick(Sender: TObject);
begin
amar.Text:='  ' + inttostr(strtoint(amar.Text) + 1);
grid.Rows[grid.RowCount-1].Append(sherkat.Edit_Search.Text);
grid.Rows[grid.RowCount-1].Append(mahal.Edit_Search.Text);
grid.Rows[grid.RowCount-1].Append(tarikh.Text);
grid.Rows[grid.RowCount-1].Append(tedad.Text);
grid.Rows[grid.RowCount-1].Append(noe.Text);
grid.Rows[grid.RowCount-1].Append(shomareh1.Text);
grid.Rows[grid.RowCount-1].Append(shomareh2.Text);
grid.Rows[grid.RowCount-1].Append(litraj.Text);
grid.RowCount:=grid.RowCount+1;
if Application.MessageBox('¬Ì« ÕÊ«·Â »⁄œÌ «“ Â„Ì‰ ›«ﬂ Ê— —« Ê«—œ „Ì ‰„«ÌÌœ ø',' –ﬂ—',MB_YESNO + MB_ICONQUESTION)=mryes
 then begin
        tarikh.Clear;
        tedad.Clear;
        shomareh1.Clear;
        shomareh2.Clear;
        litraj.Clear;
        tarikh.SetFocus;
       end
         else begin
                residpk.SetFocus;
               end;
end;

procedure Thavaleh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thavaleh_f.tarikhEnter(Sender: TObject);
begin
if sherkat.Return_Value='0'
      then begin
             Application.MessageBox('·ÿ›« ‰«„ Ê«Õœ œ—ŒÊ«” Ì —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
             tarikh.EditText:=ras2.long_date_format;
             sherkat.Edit_Search.SetFocus;
            end;
end;

procedure Thavaleh_f.hazfClick(Sender: TObject);
begin
if grid.Rows[grid.Row][5]<>'' then amar.Text:='  ' + inttostr(strtoint(amar.Text) - 1);
grid.Rows[grid.Row].Clear;
end;

procedure Thavaleh_f.shomareh2Enter(Sender: TObject);
begin
shomareh2.Text:=inttostr(strtoint(shomareh1.text) + strtoint(tedad.text) -1 );
end;

procedure Thavaleh_f.mablagh_chExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
end;

procedure Thavaleh_f.sh_chKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
end;

//--------------------------------------------------------------------------
procedure Thavaleh_f.h_indexKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : integer;
begin
if key=13 then
            begin

havaleh_aq.Close;
havaleh_aq.SQL.Clear;
havaleh_aq.SQL.Add('Select * From Havaleh ');
havaleh_aq.SQL.Add('Where (h_index=:i0) ');
havaleh_aq.Parameters[0].Value:=strtoint(h_index.Text);
havaleh_aq.Open;

if havaleh_aq.RecordCount=0 then begin
                                   Application.MessageBox('›«ﬂ Ê—Ì »« «Ì‰ ‘„«—Â À»  ‰‘œÂ «” ',' ÊÃÂ',0);
                                   h_index.SetFocus;
                                   h_index.Clear;
                                   exit;
                                  end;

if h_index.Text='0' then exit;
if amal.Caption='Õ–› ›«ﬂ Ê—' then amal.SetFocus
                                else sherkat.Edit_Search.SetFocus;

amar.Text:='  ' + inttostr(havaleh_aq.recordcount);
residpk.Text:=IntToStr(havaleh_aq['residpk']);
for i:=1 to havaleh_aq.RecordCount do
  begin
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['sherkat']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['mahal']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['tarikh']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['tedad']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['noe']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['shomareh1']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['shomareh2']);
    grid.Rows[grid.RowCount-1].Append(havaleh_aq['litraj']);
    grid.RowCount:=grid.RowCount+1;
    havaleh_aq.Next;
   end;
             end;
end;
//--------------------------------------------------------------------------

procedure Thavaleh_f.h_indexExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
if exitt.Focused then exit;
val(h_index.Text ,num ,e);
if (e<>0) or (h_index.Text='0') or (h_index.Text='')
          then
              begin
               Application.MessageBox('·ÿ›« ‘„«—Â ’Ê— Õ”«» —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
               h_index.Clear;
               h_index.SetFocus;
              end;
end;

procedure Thavaleh_f.residpkExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(residpk.Text,num,e);
if (e<>0) or (residpk.Text='0') or (residpk.Text='')
          then
              begin
               Application.MessageBox('·ÿ›« ‘„«—Â —”Ìœ Å—œ«Œ  ﬂ—«ÌÂ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               residpk.Clear;
               residpk.SetFocus;
              end;
end;

procedure Thavaleh_f.residpkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thavaleh_f.sherkatDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
sherkat.Height:=55;
end;

procedure Thavaleh_f.mahalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
mahal.Height:=50;
end;

procedure Thavaleh_f.sherkatEnter(Sender: TObject);
begin
if Not sherkat.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Thavaleh_f.mahalEnter(Sender: TObject);
begin
if Not mahal.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Thavaleh_f.reffClick(Sender: TObject);
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
mahal_aq.Parameters[0].Value:= sherkat.Edit_Search.Text;
mahal_aq.ExecSQL;
//ShowMessage(inttostr(mahal_aq.RecordCount));
main_u.fff:=False;
end;

procedure Thavaleh_f.reffEnter(Sender: TObject);
begin
if main_u.fff then reffClick(havaleh_f);
mahal.Edit_Search.SetFocus;
end;

procedure Thavaleh_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (mahal.Edit_Search.Text<>'') and (mahal.Return_Value<>'0')
                      then begin
                             tarikh.SetFocus;
                             //masafat.Text:=mahal_aq['masafat'];
                            end
                        else begin
                              Application.MessageBox('·ÿ›« „Õ·  Œ·ÌÂ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              mahal.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Thavaleh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
