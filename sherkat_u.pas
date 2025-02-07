unit sherkat_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBGrid_Edit, DB, ADODB, Mask,
  MonyEdit;

type
  Tsherkat_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    txtsherkat: TLabel;
    txttozih: TLabel;
    tozih: TEdit;
    sherkat_aq: TADOQuery;
    txtaddress: TLabel;
    txtmegh_mas: TLabel;
    txtmablaghl: TLabel;
    txttarikh: TLabel;
    txtmodat: TLabel;
    txttel: TLabel;
    address: TEdit;
    megh_mas: TEdit;
    modat: TEdit;
    tel: TEdit;
    tarikh: TMaskEdit;
    txtmablaghk: TLabel;
    Label1: TLabel;
    txtmandeh: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    mandeh: TMonyEdit;
    man_tarikh: TMaskEdit;
    txtman_tarikh: TLabel;
    mablaghl: TEdit;
    mablaghk: TEdit;
    sherkat: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tozihKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure addressKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure megh_masKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure modatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure telKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure addressExit(Sender: TObject);
    procedure megh_masExit(Sender: TObject);
    procedure mablaghlExit(Sender: TObject);
    procedure modatExit(Sender: TObject);
    procedure telExit(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure mablaghkExit(Sender: TObject);
    procedure mablaghkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mandehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mandehExit(Sender: TObject);
    procedure man_tarikhExit(Sender: TObject);
    procedure man_tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sherkatEnter(Sender: TObject);
    procedure sherkatExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sherkat_f: Tsherkat_f;

implementation

uses main_u;

{$R *.dfm}

procedure Tsherkat_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tsherkat_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tsherkat_f.FormShow(Sender: TObject);
begin
sherkat.SetFocus;
mablaghl.BiDiMode:=bdRightToLeft;
mablaghk.BiDiMode:=bdRightToLeft;
mandeh.BiDiMode:=bdRightToLeft;
end;

procedure Tsherkat_f.amalClick(Sender: TObject);
begin
if amal.Caption='�����' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               sherkat_aq.Close;
                               sherkat_aq.SQL.Clear;
                               sherkat_aq.SQL.Add('select * from sherkat ');
                               sherkat_aq.SQL.Add('where (sherkat=:i0)');
                               sherkat_aq.Parameters[0].Value:=sherkat.Text;
                               sherkat_aq.Open;
                               if sherkat_aq.RecordCount>0 then
                                  Application.MessageBox('�� ���� ���� �� ��� ��� ��� ��� ���','�����',MB_OK+MB_ICONEXCLAMATION)
                                 else begin
                                       sherkat_aq.Close;
                                       sherkat_aq.SQL.Clear;
                                       sherkat_aq.SQL.Add('INSERT INTO sherkat(sherkat ,address ,megh_mas ,mablaghl , mablaghk ,tarikh ,modat ,tel ,tozih , mandeh , man_tarikh ) ');
                                       sherkat_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8,:i9,:i10)');
                                       sherkat_aq.Parameters[0].Value:=sherkat.Text;
                                       sherkat_aq.Parameters[1].Value:=address.Text;
                                       sherkat_aq.Parameters[2].Value:=strtoint64(megh_mas.Text);
                                       sherkat_aq.Parameters[3].Value:=StrToFloat(mablaghl.Text);
                                       sherkat_aq.Parameters[4].Value:=StrToFloat(mablaghk.Text);
                                       sherkat_aq.Parameters[5].Value:=tarikh.EditText;
                                       sherkat_aq.Parameters[6].Value:=strtoint64(modat.Text);
                                       sherkat_aq.Parameters[7].Value:=tel.Text;
                                       sherkat_aq.Parameters[8].Value:=tozih.Text;
                                       sherkat_aq.Parameters[9].Value:=mandeh.Value;
                                       sherkat_aq.Parameters[10].Value:=man_tarikh.EditText;
                                       sherkat_aq.ExecSQL;
                                       Application.MessageBox('�� ���� �� ������ ��� ��','���� ',MB_OK+MB_ICONINFORMATION);
                                      end;
                              end;
if amal.Caption='�����'then begin
                               sherkat_aq.Close;
                               sherkat_aq.SQL.Clear;
                               sherkat_aq.SQL.Add('UPDATE sherkat ');
                               sherkat_aq.SQL.Add('SET sherkat=:i0 , address=:i1 , megh_mas=:i2 , mablaghl=:i3 , mablaghk=:i4 , tarikh=:i5 , modat=:i6 , tel=:i7 , tozih=:i8 , mandeh=:i9 , man_tarikh=:i10 ');
                               sherkat_aq.SQL.Add(' where (sherkat=:i11)');
                               sherkat_aq.Parameters[0].Value:=sherkat.Text;
                               sherkat_aq.Parameters[1].Value:=address.Text;
                               sherkat_aq.Parameters[2].Value:=strtoint64(megh_mas.Text);
                               sherkat_aq.Parameters[3].Value:=StrToFloat(mablaghl.Text);
                               sherkat_aq.Parameters[4].Value:=StrToFloat(mablaghk.Text);
                               sherkat_aq.Parameters[5].Value:=tarikh.EditText;
                               sherkat_aq.Parameters[6].Value:=strtoint64(modat.Text);
                               sherkat_aq.Parameters[7].Value:=tel.Text;
                               sherkat_aq.Parameters[8].Value:=tozih.Text;
                               sherkat_aq.Parameters[9].Value:=mandeh.Value;
                               sherkat_aq.Parameters[10].Value:=man_tarikh.EditText;
                               sherkat_aq.Parameters[11].Value:=sherkat.Text;
                               sherkat_aq.ExecSQL;
                               Application.MessageBox('�� ���� ����� ����','����',MB_OK+MB_ICONEXCLAMATION);
                               //close;
                             end; 

if amal.Caption='���' then begin
                              if Application.MessageBox('��� �� ��� ��� ���� ������� ����� �','�����',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       sherkat_aq.Close;
                                       sherkat_aq.SQL.Clear;
                                       sherkat_aq.SQL.Add('DELETE FROM sherkat');
                                       sherkat_aq.SQL.Add(' where (sherkat=:i0)');
                                       sherkat_aq.Parameters[0].Value:=sherkat.Text;
                                       sherkat_aq.ExecSQL;
                                       Application.MessageBox('�� ���� ��� ��','����',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
sherkat.text:='';
address.Clear;
megh_mas.Clear;
mablaghl.Clear;
mablaghk.Clear;
tarikh.Clear;
modat.Clear;
tel.Clear;
tozih.Clear;
mandeh.Clear;
man_tarikh.Clear;
sherkat.SetFocus;
///////////////////////////////////// end of amal click ///////////////////////////////////////////
end;

procedure Tsherkat_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if  (amal.Caption = '�����') then
                          address.SetFocus
                               else begin
                                       sherkat_aq.Close;
                                       sherkat_aq.SQL.Clear;
                                       sherkat_aq.SQL.Add('select * from sherkat ');
                                       sherkat_aq.SQL.Add('where sherkat='+chr(39)+sherkat.Text+chr(39));
                                       sherkat_aq.Open;
                                       ShowMessage(IntToStr(sherkat_aq.recordcount));
                                       if sherkat_aq.RecordCount=0 then
                                             Application.MessageBox('���� �� ��� ����� ���� ���� ���� ������','�����',MB_OK+MB_ICONEXCLAMATION)
                                                          else begin
                                                                  address.Text:=sherkat_aq['address'] ;
                                                                    megh_mas.Text:=sherkat_aq['megh_mas'] ;
                                                                      mablaghl.Text:=sherkat_aq['mablaghl'] ;
                                                                      mablaghk.Text:=sherkat_aq['mablaghk'] ;
                                                                      tarikh.EditText:=sherkat_aq['tarikh'] ;
                                                                      modat.Text:=sherkat_aq['modat'] ;
                                                                      tel.Text:=sherkat_aq['tel'] ;
                                                                      tozih.Text:= vartostr(sherkat_aq['tozih']) ;
                                                                      mandeh.Value:=sherkat_aq['mandeh'] ;
                                                                      man_tarikh.EditText:=sherkat_aq['man_tarikh'] ;
                                                                      if amal.Caption='�����' then
                                                                                                address.SetFocus
                                                                                              else
                                                                                                amal.SetFocus;
                                                                end;
                                     end;

               end;
end;

procedure Tsherkat_f.tozihKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then man_tarikh.SetFocus;
end;

procedure Tsherkat_f.addressKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then megh_mas.SetFocus;
end;

procedure Tsherkat_f.megh_masKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablaghl.SetFocus;
end;

procedure Tsherkat_f.mablaghlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mablaghk.SetFocus;
end;

procedure Tsherkat_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then modat.SetFocus;
end;

procedure Tsherkat_f.modatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mandeh.SetFocus;
end;

procedure Tsherkat_f.telKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tozih.SetFocus;
end;

procedure Tsherkat_f.addressExit(Sender: TObject);
begin
if address.Text='' then begin
                          Application.MessageBox('���� ���� �� ���� ������','����',0);
                          address.SetFocus;
                         end;
end;

procedure Tsherkat_f.megh_masExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(megh_mas.Text , num , e);
if (e<>0) and (megh_mas.Text<>'') then megh_mas.Clear;
{if megh_mas.Text='' then begin
                           Application.MessageBox('���� ����� ����� �� �� ��� �� ���� ������','����',0);
                           megh_mas.SetFocus;
                          end;}
end;

procedure Tsherkat_f.mablaghlExit(Sender: TObject);
var
  num : int64;
    e: integer;
begin
//val(strtocu(mablaghl.Text), num , e);
{if (e<>0) then begin
                   Application.MessageBox('���� ���� ������� ( ����� �� ���� ) �� ���� ������','����',0);
                   mablaghl.SetFocus;
                 end;}
end;

procedure Tsherkat_f.modatExit(Sender: TObject);
var
  num : int64;
  e  : integer;
begin
val(modat.Text, num ,e );
if (modat.Text='') or (e<>0) then begin
                        Application.MessageBox('���� ��� ������� �� ����� ������','����',0);
                        modat.SetFocus;
                       end;
end;

procedure Tsherkat_f.telExit(Sender: TObject);
begin
{if tel.Text='' then begin
                        Application.MessageBox('���� ���� �� ���� ���� �� ���� ������','����',0);
                        tel.SetFocus;
                     end;}
end;

procedure Tsherkat_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('���� ����� ����� ���� ����� ���� ������','����',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tsherkat_f.mablaghkExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
{val(vartostr(mablaghk.Value) , num , e);
if (e<>0) then begin
                   Application.MessageBox('���� ���� ������� ( ����� �� ������ ) �� ���� ������','����',0);
                   mablaghk.SetFocus;
                 end;}
end;

procedure Tsherkat_f.mablaghkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tarikh.SetFocus;
end;

procedure Tsherkat_f.mandehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tel.SetFocus;
end;

procedure Tsherkat_f.mandehExit(Sender: TObject);
var
  num : int64;
  e  : integer;
begin
val(vartostr(mandeh.Value), num ,e );
if (e<>0) then begin
                  Application.MessageBox('���� ����� ����� �� ���� ������','����',0);
                  mandeh.SetFocus;
                end;
end;

procedure Tsherkat_f.man_tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(man_tarikh.EditText)
    then
      begin
        Application.MessageBox('���� ����� ����� ���� ����� ���� ������','����',0);
        man_tarikh.Clear;
        man_tarikh.SetFocus;
       end;
end;

procedure Tsherkat_f.man_tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tsherkat_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tsherkat_f.sherkatEnter(Sender: TObject);
var
  i:integer;
begin
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from sherkat ');
sherkat_aq.Open;
for i:=1 to sherkat_aq.RecordCount do
      begin
        sherkat.Items.Add(sherkat_aq['sherkat']);
        sherkat_aq.Next;
       end;
end;

procedure Tsherkat_f.sherkatExit(Sender: TObject);
begin
if exitt.Focused then exit;
if sherkat.Text='' then begin
                           Application.MessageBox('���� ��� ���� �� ���� ������','����',0);
                           sherkat.SetFocus;
                        end;
end;

end.
