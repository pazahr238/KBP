unit hazineh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DBGrid_Edit, StdCtrls, MonyEdit,
  Buttons, DB, ADODB, Menus, Mask, ExtCtrls;

type
  Thazineh_f = class(TForm)
    Panel1: TPanel;
    txtmablagh: TLabel;
    txtbabat: TLabel;
    txtsanad: TLabel;
    txttarikh: TLabel;
    txtname: TLabel;
    mablagh: TMonyEdit;
    sanad: TEdit;
    amal: TBitBtn;
    exitt: TBitBtn;
    tarikh: TMaskEdit;
    babat: TComboBox;
    name: TComboBox;
    sanad_aq: TADOQuery;
    person_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure exittClick(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure babatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure mablaghEnter(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure amalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghExit(Sender: TObject);
    procedure babatExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure amalEnter(Sender: TObject);
    procedure sanadEnter(Sender: TObject);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nameExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nameEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hazineh_f: Thazineh_f;
  hazineh_sherkat_flag : boolean;

implementation
    uses ras,ras2,date_assis , main_u;
{$R *.dfm}

procedure Thazineh_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Thazineh_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then babat.SetFocus;
end;

procedure Thazineh_f.exittClick(Sender: TObject);
begin
Close;
end;

procedure Thazineh_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
begin
if amal.Caption='Õ–›' then amal.SetFocus else tarikh.SetFocus;
end;
end;

procedure Thazineh_f.babatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then name.SetFocus;
end;

procedure Thazineh_f.sanadExit(Sender: TObject);
var
 sanad_num , e :integer;
begin
if exitt.Focused then exit;
val(sanad.Text,sanad_num,e);
if amal.Caption<>'«÷«›Â' then
    begin
      sanad_aq.Close;
      sanad_aq.SQL.Clear;
      sanad_aq.SQL.Add('select * from hazineh ');
      sanad_aq.SQL.Add('where (sanad=:i0)');
      if e=0 then sanad_aq.Parameters[0].Value:=strtoint(sanad.Text) else sanad_aq.Parameters[0].Value:=0;
      sanad_aq.Open;

      if sanad_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            mablagh.Value:=sanad_aq['mablagh'];
            babat.Text:=sanad_aq['babat'];
            tarikh.EditText:=sanad_aq['tarikh'];
            name.Text:=sanad_aq['name'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      sanad.SetFocus;
                      sanad.Clear;
                      tarikh.Clear;
                      mablagh.Clear;
                      babat.Clear;
                      name.Text:='';
                    end;
    end else begin // else of amal.Caption<>'«÷«›Â'
              tarikh.EditText:='____/__/__';
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (e<>0) or (sanad.Text='') then begin
                                                  Application.MessageBox('·ÿ›« ‘„«—Â ”‰œ —« Ê«—œ ﬂ‰Ìœ',' ÊÃÂ',0);
                                                  sanad.Clear;
                                                  sanad.SetFocus;
                                                end;
              end;
end;

procedure Thazineh_f.mablaghEnter(Sender: TObject);
begin
if amal.Caption<>'«÷«›Â' then mablagh.Value:=sanad_aq['mablagh'];
end;

procedure Thazineh_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               sanad_aq.Close;
                               sanad_aq.SQL.Clear;
                               sanad_aq.SQL.Add('select * from hazineh ');
                               sanad_aq.SQL.Add('where (sanad=:i0)');
                               sanad_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                               sanad_aq.Open;
                               if sanad_aq.RecordCount>0 then begin
                                                                Application.MessageBox('«Ì‰ ”‰œ ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                exit;
                                                               end
                                else begin
                                       sanad_aq.Close;
                                       sanad_aq.SQL.Clear;
                                       sanad_aq.SQL.Add('INSERT INTO HAZINEH(SANAD,TARIKH,MABLAGH,BABAT,NAME)');
                                       sanad_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4)');
                                       sanad_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                       sanad_aq.Parameters[1].Value:=tarikh.EditText;
                                       sanad_aq.Parameters[2].Value:=mablagh.value;

                                       sanad_aq.Parameters[3].Value:=babat.Text;
                                       //sanad_aq.Parameters[4].Value:=name.Text;
                                       if hazineh_sherkat_flag then begin
                                                                        sanad_aq.Parameters[4].Value:='Â“Ì‰Â Â«Ì ‘—ﬂ ';
                                                                      end
                                            else begin
                                                  sanad_aq.Parameters[4].Value:=name.Text;
                                                 end;

                                       sanad_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ”‰œ À»  ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               sanad_aq.Close;
                               sanad_aq.SQL.Clear;
                               sanad_aq.SQL.Add('UPDATE HAZINEH ');
                               sanad_aq.SQL.Add('SET sanad=:i0 , tarikh=:i1 , mablagh=:i2 , babat=:i3 , name=:i4');
                               sanad_aq.SQL.Add(' where (sanad=:i5)');
                               sanad_aq.Parameters[0].Value:=strtoint64(sanad.Text);
                               sanad_aq.Parameters[1].Value:=tarikh.EditText;
                               sanad_aq.Parameters[2].Value:=mablagh.value;

                               if babat.Text='Â“Ì‰Â Â«Ì ‘—ò ' then
                                 sanad_aq.Parameters[3].Value:='Â“Ì‰Â Â«Ì ‘—ò '
                                    else sanad_aq.Parameters[3].Value:=babat.Text;

                               sanad_aq.Parameters[4].Value:=name.Text;
                               sanad_aq.Parameters[5].Value:=strtoint64(sanad.Text);
                               sanad_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ ”‰œ  €ÌÌ— Ì«› ',' ÊÃÂ',0);
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       sanad_aq.Close;
                                       sanad_aq.SQL.Clear;
                                       sanad_aq.SQL.Add('DELETE FROM HAZINEH');
                                       sanad_aq.SQL.Add(' where (sanad=:i0)');
                                       sanad_aq.Parameters[0].Value:=strtoint64(sanad.Text);
                                       sanad_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ”‰œ Õ–› ê—œÌœ',' ÊÃÂ',0);
                                      end;
                            end;
tarikh.Clear;
mablagh.Clear;
babat.Text:='';
sanad.Clear;
sanad.SetFocus;
name.Text:='';

end;

procedure Thazineh_f.amalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then amalClick(sender);
end;

procedure Thazineh_f.mablaghExit(Sender: TObject);
begin
if (mablagh.Text='0') then begin
                              Application.MessageBox('·ÿ›« „»·€ —« Ê«—œ ﬂ‰Ìœ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                              mablagh.SetFocus;
                            end;
end;

procedure Thazineh_f.babatExit(Sender: TObject);
begin
if babat.Text='' then begin
                        Application.MessageBox('Â“Ì‰Â «‰Ã«„ ‘œÂ »«»  çÂ çÌ“Ì »ÊœÂ «” ø',' ÊÃÂ',0);
                        babat.Text:='';
                        babat.SetFocus;
                       end;
end;

procedure Thazineh_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablagh.SetFocus;
end;

procedure Thazineh_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Thazineh_f.FormShow(Sender: TObject);
begin
mablagh.BiDiMode:=bdRightToLeft;
end;

procedure Thazineh_f.amalEnter(Sender: TObject);
begin
if name.Text='' then name.Text:='Â“Ì‰Â Â«Ì ‘—ò ';
end;

procedure Thazineh_f.sanadEnter(Sender: TObject);
var
  i : integer;
begin
person_aq.Close;
person_aq.SQL.Clear;
person_aq.SQL.Add('select * from person ');
person_aq.Open;
for i:=1 to person_aq.RecordCount do
      begin
        name.Items.Add(person_aq['name']);
        person_aq.Next;
       end;
person_aq.Close;
person_aq.SQL.Clear;
person_aq.SQL.Add('select * from kamion ');
person_aq.Open;
for i:=1 to person_aq.RecordCount do
      begin
        name.Items.Add(person_aq['mashin']);
        person_aq.Next;
       end;
end;

procedure Thazineh_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thazineh_f.nameExit(Sender: TObject);
begin
if name.Text='' then begin
                        //Application.MessageBox('Â“Ì‰Â »Â ‰«„ çÌ” ø',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                        //name.Text:='';
                        //name.SetFocus;
                        name.Text:='Â“Ì‰Â Â«Ì ‘—ﬂ ';
                        hazineh_sherkat_flag:=true;
                      end;
end;

procedure Thazineh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Thazineh_f.nameEnter(Sender: TObject);
begin
hazineh_sherkat_flag:=false;
end;

end.
