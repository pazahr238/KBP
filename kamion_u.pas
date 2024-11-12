unit kamion_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  MonyEdit, Mask;

type
  Tkamion_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    txtmashin: TLabel;
    txtranandeh: TLabel;
    txtzarfiat: TLabel;
    txtnoe: TLabel;
    mashin: TEdit;
    zarfiat: TEdit;
    noe: TComboBox;
    kamion_aq: TADOQuery;
    ranandeh: TDBGrid_Edit;
    person_ds: TDataSource;
    person_aq: TADOQuery;
    tanker: TComboBox;
    txtker_tan: TLabel;
    kosoorat: TComboBox;
    txtmandeh: TLabel;
    Label1: TLabel;
    mandeh: TMonyEdit;
    ker_tan: TMonyEdit;
    Label2: TLabel;
    tarikh: TMaskEdit;
    txttarikh: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure zarfiatExit(Sender: TObject);
    procedure zarfiatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure ranandehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ranandehEnter(Sender: TObject);
    procedure tankerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ker_tanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ker_tanExit(Sender: TObject);
    procedure tankerChange(Sender: TObject);
    procedure ranandehDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure kosooratKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mandehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mandehExit(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kamion_f: Tkamion_f;

implementation
uses main_u;

{$R *.dfm}

procedure Tkamion_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tkamion_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tkamion_f.mashinExit(Sender: TObject);
begin
if exitt.Focused then exit;
if amal.Caption<>'«÷«›Â' then
    begin
      kamion_aq.Close;
      kamion_aq.SQL.Clear;
      kamion_aq.SQL.Add('select * from kamion ');
      kamion_aq.SQL.Add('where (mashin=:i0)');
      kamion_aq.Parameters[0].Value:=mashin.Text;
      kamion_aq.Open;

      if kamion_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            ranandeh.Edit_Search.Text:= kamion_aq['ranandeh'];
            zarfiat.Text := kamion_aq['zarfiat'];
            noe.ItemIndex:= kamion_aq['noe'];
            if kamion_aq['tanker']=0 then tanker.ItemIndex:=0 else tanker.ItemIndex:=1;
            ker_tan.Value:=kamion_aq['tanker'];
            kosoorat.ItemIndex:=kamion_aq['kosoorat'];
            mandeh.Value:=kamion_aq['mandeh'];
            tarikh.EditText:=kamion_aq['man_tarikh'];
            tanker.OnChange(kamion_f);
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      mashin.SetFocus;
                      mashin.Clear;
                      ranandeh.Edit_Search.Clear;
                      zarfiat.Clear;
                      ker_tan.Clear;
                      mandeh.Clear;
                      tarikh.Clear;
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (mashin.Text='') then begin
                                            Application.MessageBox('·ÿ›« ‘„«—Â „«‘Ì‰ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                            mashin.SetFocus;
                                          end;
              end;
////////////////////// end of shomareh exit PROCEDURE   //////////////////////////////
end;

procedure Tkamion_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
begin
if amal.Caption='Õ–›' then amal.SetFocus else ranandeh.Edit_Search.SetFocus;
end;
end;

procedure Tkamion_f.zarfiatExit(Sender: TObject);
var
  zarfiat_num , e : integer;
begin
if (zarfiat.Text='') then begin
                              Application.MessageBox('·ÿ›« Ÿ—›Ì  »«—êÌ—Ì —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                              zarfiat.SetFocus;
                              exit;
                           end;
val(zarfiat.Text, zarfiat_num, e);
if e<>0 then begin
              Application.MessageBox('·ÿ›« Ìﬂ ⁄œœ „⁄ »— Ê«—œ ‰„«ÌÌœ','«Œÿ«—', MB_OK+ MB_ICONEXCLAMATION);
              zarfiat.Clear;
              zarfiat.SetFocus;
             end;
end;                                                                                   

procedure Tkamion_f.zarfiatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then noe.SetFocus;
end;

procedure Tkamion_f.noeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kosoorat.SetFocus;
end;

procedure Tkamion_f.amalClick(Sender: TObject);
begin
if ker_tan.Text='' then ker_tan.Text:='0';
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               kamion_aq.Close;
                               kamion_aq.SQL.Clear;
                               kamion_aq.SQL.Add('select * from kamion ');
                               kamion_aq.SQL.Add('where (mashin=:i0)');
                               kamion_aq.Parameters[0].Value:=mashin.Text;
                               kamion_aq.Open;
                               if kamion_aq.RecordCount>0 then begin
                                                                 Application.MessageBox('„«‘Ì‰Ì »« «Ì‰ ‘„«—Â ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                 exit;
                                                                end
                                else begin
                                       kamion_aq.Close;
                                       kamion_aq.SQL.Clear;
                                       kamion_aq.SQL.Add('INSERT INTO kamion(mashin,ranandeh,zarfiat,noe,tanker,kosoorat,mandeh,man_tarikh) ');
                                       kamion_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7)');
                                       kamion_aq.Parameters[0].Value:=mashin.Text;
                                       kamion_aq.Parameters[1].Value:=ranandeh.Edit_Search.Text;
                                       kamion_aq.Parameters[2].Value:=strtoint(zarfiat.Text);
                                       kamion_aq.Parameters[3].Value:=noe.ItemIndex;
                                       kamion_aq.Parameters[4].Value:=ker_tan.Value;
                                       kamion_aq.Parameters[5].Value:=kosoorat.ItemIndex;
                                       kamion_aq.Parameters[6].Value:=mandeh.Value;
                                       kamion_aq.Parameters[7].Value:=tarikh.EditText;
                                       kamion_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ À»  ê—œÌœ',' ÊÃÂ',0);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               kamion_aq.Close;
                               kamion_aq.SQL.Clear;
                               kamion_aq.SQL.Add('UPDATE kamion ');
                               kamion_aq.SQL.Add('SET mashin=:i0 , ranandeh=:i1 , zarfiat=:i2 , noe=:i3 , tanker=:i4 , kosoorat=:i5 , mandeh=:i6 , man_tarikh=:i7');
                               kamion_aq.SQL.Add(' where (mashin=:i8)');
                               kamion_aq.Parameters[0].Value:= mashin.Text;
                               kamion_aq.Parameters[1].Value:=ranandeh.Edit_Search.Text;
                               kamion_aq.Parameters[2].Value:=strtoint(zarfiat.Text);
                               kamion_aq.Parameters[3].Value:=noe.ItemIndex;
                               kamion_aq.Parameters[4].Value:=ker_tan.Value;
                               kamion_aq.Parameters[5].Value:=kosoorat.ItemIndex;
                               kamion_aq.Parameters[6].Value:=mandeh.Value;
                               kamion_aq.Parameters[7].Value:=tarikh.EditText;
                               kamion_aq.Parameters[8].Value:= mashin.Text;
                               kamion_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_ok+MB_ICONEXCLAMATION);
                               //.close;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       kamion_aq.Close;
                                       kamion_aq.SQL.Clear;
                                       kamion_aq.SQL.Add('DELETE FROM KAMION');
                                       kamion_aq.SQL.Add(' where (mashin=:i0)');
                                       kamion_aq.Parameters[0].Value:= mashin.Text;
                                       kamion_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ Õ–› ê—œÌœ',' ÊÃÂ',MB_ok+MB_ICONERROR);
                                      end;
                            end;
mashin.Clear;
ranandeh.Edit_Search.Clear;
zarfiat.Clear;
tanker.ItemIndex:=0;
tanker.OnChange(kamion_f);
ker_tan.Clear;
mandeh.Clear;
tarikh.Clear;
mashin.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////
end;

procedure Tkamion_f.ranandehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (ranandeh.Edit_Search.Text<>'') and (ranandeh.Return_Value<>'0')
                      then zarfiat.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ —«‰‰œÂ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                              ranandeh.Edit_Search.Clear;
                              ranandeh.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Tkamion_f.FormShow(Sender: TObject);
begin
mashin.SetFocus;
ranandeh.Edit_Search.Ctl3D:=false;
ranandeh.Edit_Search.BiDiMode:=bdRightToLeft;
mandeh.BiDiMode:=bdRightToLeft;
ker_tan.BiDiMode:=bdRightToLeft;
end;

procedure Tkamion_f.ranandehEnter(Sender: TObject);
begin
if Not ranandeh.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tkamion_f.tankerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if ker_tan.Visible then ker_tan.SetFocus
                    else mandeh.SetFocus; 
                end;
end;

procedure Tkamion_f.ker_tanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mandeh.SetFocus;
end;

procedure Tkamion_f.ker_tanExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(ker_tan.Value) , num , e );
if (e<>0) then
            begin
              Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „Ì“«‰ ﬂ—«ÌÂ  «‰ﬂ—  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
              ker_tan.Clear;
              ker_tan.SetFocus;
             end;
end;

procedure Tkamion_f.tankerChange(Sender: TObject);
begin
if tanker.ItemIndex=0 then begin
                             ker_tan.Visible:=false;
                             ker_tan.Text:='0';
                             txtker_tan.Visible:=false;
                            end;
if tanker.ItemIndex=1 then begin
                             ker_tan.Visible:=True;
                             txtker_tan.Visible:=True;
                            end;
end;

procedure Tkamion_f.ranandehDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
ranandeh.Height:=55;
end;

procedure Tkamion_f.kosooratKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tanker.SetFocus;
end;

procedure Tkamion_f.mandehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tkamion_f.mandehExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(mandeh.Value) , num , e );
if (e<>0) then
              begin
                 Application.MessageBox('·ÿ›« „«‰œÂ «Ê·ÌÂ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
                 mandeh.Clear;
                 mandeh.SetFocus;
               end;
end;
                                        
procedure Tkamion_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tkamion_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tkamion_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
