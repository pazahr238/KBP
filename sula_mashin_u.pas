unit sula_mashin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, DBGrid_Edit, StdCtrls, Buttons, Mask,
  MonyEdit;

type
  Tsula_mashin_f = class(TForm)
    txtmashin: TLabel;
    txttarikh: TLabel;
    txtsharh: TLabel;
    txtmablagh: TLabel;
    txtmahal: TLabel;
    tarikh: TMaskEdit;
    exitt: TBitBtn;
    amal: TBitBtn;
    mahal: TEdit;
    mashin_aq: TADOQuery;
    sula_mashin_aq: TADOQuery;
    mablagh: TMonyEdit;
    mashin: TEdit;
    sharh: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhExit(Sender: TObject);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghExit(Sender: TObject);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalExit(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sula_mashin_f: Tsula_mashin_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tsula_mashin_f.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tsula_mashin_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then tarikh.SetFocus
end;

procedure Tsula_mashin_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tsula_mashin_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sharh.SetFocus;
end;

procedure Tsula_mashin_f.sharhExit(Sender: TObject);
begin
if sharh.Text='' then
                    begin
                      Application.MessageBox('Â“Ì‰Â «‰Ã«„ ‘œÂ »«»  çÂ çÌ“Ì »ÊœÂ «”  ø',' ÊÃÂ',0);
                      sharh.SetFocus;
                     end;
end;

procedure Tsula_mashin_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh.SetFocus;
end;

procedure Tsula_mashin_f.mablaghExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(mablagh.Value) ,num,e);
if (e<>0)
         then
             begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „»·€ „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
               mablagh.Clear;
               mablagh.SetFocus;
              end;
end;

procedure Tsula_mashin_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mahal.SetFocus;
end;

procedure Tsula_mashin_f.mahalExit(Sender: TObject);
begin
if mahal.Text='' then begin
                        Application.MessageBox('·ÿ›« „Õ·  ⁄„Ì—«  —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                        mahal.Clear;
                        mahal.SetFocus;
                       end;
end;

procedure Tsula_mashin_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tsula_mashin_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
mablagh.BiDiMode:=bdRightToLeft;
end;

procedure Tsula_mashin_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tsula_mashin_f.amalClick(Sender: TObject);
var
  fund : boolean;
begin
if amal.Caption='Ã” ÃÊ' then begin
                                sula_mashin_aq.Close;
                                sula_mashin_aq.SQL.Clear;
                                sula_mashin_aq.SQL.Add('select * from sula_mashin ');
                                sula_mashin_aq.SQL.Add('where (mashin=:i0) and (tarikh=:i1) and (sharh=:i2) and (mablagh=:i3) and (mahal=:i4)');
                                sula_mashin_aq.Parameters[0].Value:=mashin.Text;
                                sula_mashin_aq.Parameters[1].Value:=tarikh.EditText;
                                sula_mashin_aq.Parameters[2].Value:=sharh.Text;
                                sula_mashin_aq.Parameters[3].Value:=mablagh.Value;
                                sula_mashin_aq.Parameters[4].Value:=mahal.Text;
                                sula_mashin_aq.Open;
                                if sula_mashin_aq.RecordCount>0 then fund:=True else fund:=false;
                                if fund then begin
                                               amal.Caption:=' €ÌÌ—';
                                               mashin.SetFocus;
                                               exit;
                                              end
                                                else Application.MessageBox('„Ê—œÌ »—«Ì  €ÌÌ— Ì«›  ‰‘œ',' ÊÃÂ',0);
                              end;
if amal.Caption='«÷«›Â' then begin
                                sula_mashin_aq.Close;
                                sula_mashin_aq.SQL.Clear;
                                sula_mashin_aq.SQL.Add('select * from sula_mashin ');
                                sula_mashin_aq.SQL.Add('where (mashin=:i0) and (tarikh=:i1) and (sharh=:i2) and (mablagh=:i3) and (mahal=:i4)');
                                sula_mashin_aq.Parameters[0].Value:=mashin.Text;
                                sula_mashin_aq.Parameters[1].Value:=tarikh.EditText;
                                sula_mashin_aq.Parameters[2].Value:=sharh.Text;
                                sula_mashin_aq.Parameters[3].Value:=mablagh.Value;
                                sula_mashin_aq.Parameters[4].Value:=mahal.Text;
                                sula_mashin_aq.Open;
                                if sula_mashin_aq.RecordCount>0 then fund:=True else fund:=false;
                               if fund then begin
                                              Application.MessageBox('›«ﬂ Ê—Ì »« «Ì‰ „‘Œ’«  ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                              exit;
                                             end
                                else begin
                                       sula_mashin_aq.Close;
                                       sula_mashin_aq.SQL.Clear;
                                       sula_mashin_aq.SQL.Add('INSERT INTO Sula_Mashin(MASHIN,TARIKH,SHARH,MABLAGH,MAHAL)');
                                       sula_mashin_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4)');
                                       sula_mashin_aq.Parameters[0].Value:=mashin.Text;
                                       sula_mashin_aq.Parameters[1].Value:=tarikh.EditText;
                                       sula_mashin_aq.Parameters[2].Value:=sharh.Text;
                                       sula_mashin_aq.Parameters[3].Value:=mablagh.Value;
                                       sula_mashin_aq.Parameters[4].Value:=mahal.Text;
                                       sula_mashin_aq.ExecSQL;

                                       //--- 2 shekle mokhtalef baraye ezafe kardane badi --------
                                       if Application.MessageBox('¬Ì« „Ê—œ »⁄œÌ —« Ê«—œ „Ì ‰„«ÌÌœø','”Ê«·',MB_YESNO + MB_ICONQUESTION)=mryes
                                           then begin
                                                   sharh.Text:='';
                                                   mablagh.Clear;
                                                   sharh.SetFocus;
                                                 end
                                                 else begin
                                                        mashin.Clear;
                                                        tarikh.Clear;
                                                        sharh.Text:='';
                                                        mablagh.Clear;
                                                        mahal.Clear;
                                                        mashin.SetFocus;
                                                       end;
                                       //----------------------------------------------------------

                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               //sula_mashin_aq.Close;
                               //sula_mashin_aq.Open;
                               sula_mashin_aq.Edit;
                               sula_mashin_aq['mashin']:=mashin.Text;
                               sula_mashin_aq['tarikh']:=tarikh.EditText;
                               sula_mashin_aq['sharh']:= sharh.Text;
                               sula_mashin_aq['mablagh']:= mablagh.Value;
                               sula_mashin_aq['mahal']:= mahal.Text;
                               sula_mashin_aq.Post;
                               Application.MessageBox('Ìﬂ ›«ﬂ Ê—  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                               amal.Caption:='Ã” ÃÊ';
                             end;
if amal.Caption='Õ–›' then begin
                                sula_mashin_aq.Close;
                                sula_mashin_aq.SQL.Clear;
                                sula_mashin_aq.SQL.Add('select * from sula_mashin ');
                                sula_mashin_aq.SQL.Add('where (mashin=:i0) and (tarikh=:i1) and (sharh=:i2) and (mablagh=:i3) and (mahal=:i4)');
                                sula_mashin_aq.Parameters[0].Value:=mashin.Text;
                                sula_mashin_aq.Parameters[1].Value:=tarikh.EditText;
                                sula_mashin_aq.Parameters[2].Value:=sharh.Text;
                                sula_mashin_aq.Parameters[3].Value:=mablagh.Value;
                                sula_mashin_aq.Parameters[4].Value:=mahal.Text;
                                sula_mashin_aq.Open;
                                if sula_mashin_aq.RecordCount>0 then fund:=True else fund:=false;
                               if Not fund then begin
                                                  Application.MessageBox('›«ﬂ Ê—Ì »« «Ì‰ „‘Œ’«  Â‰Ê“ À»  ‰‘œÂ «” ',' ÊÃÂ',0);
                                                  exit;
                                                 end
                              else                    
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       sula_mashin_aq.Close;
                                       sula_mashin_aq.SQL.Clear;
                                       sula_mashin_aq.SQL.Add('DELETE FROM Sula_Mashin');
                                       sula_mashin_aq.SQL.Add(' where (mashin=:i0) and (tarikh=:i1) and (sharh=:i2) and (mablagh=:i3) and (mahal=:i4)');
                                       sula_mashin_aq.Parameters[0].Value:=mashin.Text;
                                       sula_mashin_aq.Parameters[1].Value:=tarikh.EditText;
                                       sula_mashin_aq.Parameters[2].Value:=sharh.Text;
                                       sula_mashin_aq.Parameters[3].Value:=mablagh.Value;
                                       sula_mashin_aq.Parameters[4].Value:=mahal.Text;
                                       sula_mashin_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ›«ﬂ Ê— Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                      end;
                            end;
if (amal.Caption='Õ–›') or (amal.Caption=' €ÌÌ—')
      then begin
              mashin.Clear;
              tarikh.Clear;
              sharh.Text:='';
              mablagh.Clear;
              mahal.Clear;
              mashin.SetFocus;
            end;
end;
///////////////////////////////////////////////////////////////////////////////////////////////
procedure Tsula_mashin_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion where (mashin=:i0)');
mashin_aq.Parameters[0].Value:=mashin.Text;
mashin_aq.open;
mashin_aq.First;
if (mashin_aq.RecordCount>0) and (mashin.Text<>'')
                      then tarikh.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ „«‘Ì‰ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              mashin.SetFocus;
                              mashin.Clear;
                             end;
end;

procedure Tsula_mashin_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
