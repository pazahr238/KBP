unit hes_melk_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  StdCtrls, Buttons, Mask, MonyEdit, ExtCtrls;

type
  Thes_melk_f = class(TForm)
    exitt: TBitBtn;
    amal: TBitBtn;
    hes_melk_aq: TADOQuery;
    Panel1: TPanel;
    txtmashin: TLabel;
    txttarikh: TLabel;
    txtsanad: TLabel;
    txtsharh: TLabel;
    txtmablagh: TLabel;
    txtmahal: TLabel;
    txtaz: TLabel;
    txthesab: TLabel;
    txtchek: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    chek: TEdit;
    tarikh: TMaskEdit;
    sanad: TEdit;
    mahal: TEdit;
    az: TComboBox;
    mablagh: TMonyEdit;
    mashin: TComboBox;
    check_jadid: TComboBox;
    sharh: TComboBox;
    hesab: TComboBox;
    mashin_aq: TADOQuery;
    hesab_aq: TADOQuery;
    hazineh_sherkat_aq: TADOQuery;
    function  check_par(par : string):boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mashinKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhExit(Sender: TObject);
    procedure mablaghKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mablaghExit(Sender: TObject);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure azKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure azSelect(Sender: TObject);
    procedure chekExit(Sender: TObject);
    procedure chekKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhEnter(Sender: TObject);
    procedure sanadEnter(Sender: TObject);
    procedure mashinExit(Sender: TObject);
    procedure check_jadidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sharhEnter(Sender: TObject);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hesabExit(Sender: TObject);
    procedure sharhChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hes_melk_f: Thes_melk_f;
  p : int64;
  mored_badi : boolean;
  last_hesab , last_check , sharh_list : string;
  cf , allow_change : boolean;
  
implementation

uses main_u;

{$R *.dfm}

function Thes_melk_f.check_par(par : string):boolean;
begin
Result:=false;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from person ');
mashin_aq.SQL.Add('where name=' + chr(39) + mashin.Text + chr(39));
mashin_aq.Open;
if mashin_aq.RecordCount>0 then Result:=true;

if VarIsNumeric(mashin.Text) then begin
                                      mashin_aq.Close;
                                      mashin_aq.SQL.Clear;
                                      mashin_aq.SQL.Add('select * from hesab ');
                                      mashin_aq.SQL.Add('where shomareh=' + mashin.Text);
                                      mashin_aq.Open;
                                      if mashin_aq.RecordCount>0 then Result:=true;
                                   end;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion ');
mashin_aq.SQL.Add('where mashin=' + chr(39) + mashin.Text + chr(39));
mashin_aq.Open;
if mashin_aq.RecordCount>0 then Result:=true;
end;

procedure Thes_melk_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (az.ItemIndex=1) and (check_jadid.ItemIndex=0) and (mored_badi) then
                                                    begin
                                                       hes_melk_aq.Close;
                                                       hes_melk_aq.SQL.Clear;
                                                       hes_melk_aq.SQL.Add('select * from daste_check ');
                                                       hes_melk_aq.SQL.Add('where (' + last_check + '<=ta) and ('+ last_check +'>=az) and (hesab=' + hesab.Text + ') ');
                                                       hes_melk_aq.Open;
                                                       if hes_melk_aq.RecordCount>0 then begin
                                                                                           hes_melk_aq.Edit;
                                                                                           hes_melk_aq['feli']:=hes_melk_aq['feli'] + 1;
                                                                                           hes_melk_aq.Post;
                                                                                           main_f.Check_Delete(hes_melk_aq['feli'],hesab.Text);
                                                                                          end;
                                                     end;
action:=cafree;
end;

procedure Thes_melk_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Thes_melk_f.FormShow(Sender: TObject);
begin
sanad.SetFocus;
mablagh.BiDiMode:=bdRightToLeft;
mored_badi:=False;
allow_change:=true;
sharh_list:=sharh.Items.Text;
end;

procedure Thes_melk_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
 mashin.SetFocus;
end;

procedure Thes_melk_f.sanadExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if exitt.Focused then exit;
val(sanad.Text,num,e);
if (e<>0) or (sanad.Text='') then
      begin
        Application.MessageBox('���� ����� ��� �� ���� ������','����',0);
        sanad.Clear;
        sanad.SetFocus;
       end;
end; ///////////////// end of sanad exit //////////////////

procedure Thes_melk_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('���� ����� ����� ���� ����� ���� ������','����',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Thes_melk_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then check_jadid.SetFocus;
end;

procedure Thes_melk_f.mashinKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : integer;
begin
if (key=13) then begin
                    if mashin.Text='' then begin
                                             mashin.Text:='����� ��� �ј�';
                                                  sharh.Clear;
                                                  hazineh_sherkat_aq.Close;
                                                  hazineh_sherkat_aq.SQL.Clear;
                                                  hazineh_sherkat_aq.SQL.Add('Select * From hazineh_sherkat ');
                                                  hazineh_sherkat_aq.Open;
                                                  hazineh_sherkat_aq.First;
                                                  for i:=1 to hazineh_sherkat_aq.RecordCount do
                                                    begin
                                                      sharh.Items.Add(hazineh_sherkat_aq['name']);
                                                      hazineh_sherkat_aq.Next;
                                                     end;
                                            end;
                    tarikh.SetFocus;
                  end;
end;

procedure Thes_melk_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then
    if amal.Caption='���'
                   then amal.SetFocus
                      else mablagh.SetFocus;
end;
//////================================================================================
procedure Thes_melk_f.sharhExit(Sender: TObject);
begin
if exitt.Focused then exit;
if sharh.Text='' then
                    begin
                      Application.MessageBox('����� ����� ��� ���� �� ���� ���� ��� �','����',0);
                      sharh.SetFocus;
                      exit;
                     end;
      hes_melk_aq.Close;
      hes_melk_aq.SQL.Clear;
      hes_melk_aq.SQL.Add('select * from hes_melk ');
      hes_melk_aq.SQL.Add('where (sanad=' + chr(39) + sanad.text + chr(39) + ') and (sharh=' + chr(39) + sharh.Text + chr(39) + ')');
      hes_melk_aq.Open;
      //ShowMessage(hes_melk_aq.SQL.Text);
if amal.Caption<>'�����' then
    begin
      if (hes_melk_aq.RecordCount>0) and (allow_change) then
          begin  // set kardane maghadire peida shode dar control ha
            mashin.Text:=hes_melk_aq['mashin'];
            tarikh.EditText:=hes_melk_aq['tarikh'];
            //sharh.Text:=hes_melk_aq['sharh'];
            mablagh.Value:=hes_melk_aq['mablagh'];
            mahal.Text:=hes_melk_aq['mahal'];
            az.ItemIndex:=main_f.s_i_mp(hes_melk_aq['az']);
            hesab.Text:=vartostr(hes_melk_aq['hesab']);
            chek.Text:=hes_melk_aq['chek'];
            azSelect(sender);
            allow_change:=false;
          end else begin
                     if (mashin.Text='') or (tarikh.EditText='') or (mablagh.Value=0) or (mahal.Text='') or (hesab.Text='') or (chek.Text='')
                       then begin
                                Application.MessageBox('����� ���� ���','����',0);
                                sharh.SetFocus;
                                sharh.Text:='';
                             end;
                    end;
    end
    else if hes_melk_aq.RecordCount>0 then begin
                                             Application.MessageBox('��� ��� ���� ��� ��� ���','����',0);
                                             sharh.Text:='';
                                             sharh.SetFocus;
                                            end;
end;
//////================================================================================
procedure Thes_melk_f.mablaghKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                if mored_badi then amal.SetFocus
                    else mahal.SetFocus;
                end;
end;

procedure Thes_melk_f.mablaghExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(vartostr(mablagh.value),num,e);
if (mablagh.Text='') or (e<>0)
                           then
                              begin
                                Application.MessageBox('���� ����� ����� ���� ���� ���� ������','����',0);
                                mablagh.Clear;
                                mablagh.SetFocus;
                               end;
end;

procedure Thes_melk_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then az.SetFocus;
end;

procedure Thes_melk_f.azKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if hesab.Visible then
                        begin
                          hesab.SetFocus;
                          if amal.Caption<>'�����' then
                            begin
                              hesab_aq.Close;
                              hesab_aq.SQL.Clear;
                              hesab_aq.SQL.Add('Select * from hesab ');
                              hesab_aq.SQL.Add('where shomareh=:i0 ');
                              hesab_aq.Parameters[0].Value:=StrToInt64(hesab.Text);
                              hesab_aq.Open;
                             end;
                         end
                                      else
                                        amal.SetFocus;
                end;
end;

procedure Thes_melk_f.amalClick(Sender: TObject);
begin
cf:=true;
if amal.Caption='�����' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               hes_melk_aq.Close;
                               hes_melk_aq.SQL.Clear;
                               hes_melk_aq.SQL.Add('select * from hes_melk ');
                               hes_melk_aq.SQL.Add('where (sanad=:i0) and (sharh=:i1)');
                               hes_melk_aq.Parameters[0].Value:=sanad.Text;
                               hes_melk_aq.Parameters[1].Value:=sharh.Text;
                               hes_melk_aq.Open;
                               if hes_melk_aq.RecordCount>0 then begin
                                                                    Application.MessageBox('����� �� ��� ����� ��� � ��� ��� ��� ���','����',0);
                                                                    exit;
                                                                  end
                                else begin
                                       hes_melk_aq.Close;
                                       hes_melk_aq.SQL.Clear;
                                       hes_melk_aq.SQL.Add('INSERT INTO Hes_Melk(SANAD,MASHIN,TARIKH,SHARH,MABLAGH,MAHAL,AZ,HESAB,CHEK) ');
                                       hes_melk_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8)');
                                       hes_melk_aq.Parameters[0].Value:=strtoint(sanad.Text);

                                       if mashin.Text='����� ��� �ј�' then
                                          hes_melk_aq.Parameters[1].Value:='����� ��� �ј�' else
                                            hes_melk_aq.Parameters[1].Value:=mashin.Text;

                                       hes_melk_aq.Parameters[2].Value:=tarikh.EditText;
                                       hes_melk_aq.Parameters[3].Value:=sharh.Text;
                                       hes_melk_aq.Parameters[4].Value:=mablagh.Value;
                                       hes_melk_aq.Parameters[5].Value:=mahal.Text;
                                       hes_melk_aq.Parameters[6].Value:=az.Text;

                                       if az.Text='���� �����' then hes_melk_aq.Parameters[7].Value:=StrToInt64(hesab.Text);

                                       hes_melk_aq.Parameters[8].Value:=chek.Text;
                                       last_hesab:=hesab.text;
                                       last_check:=chek.Text;
                                       hes_melk_aq.ExecSQL;
                                       //------- bar hasbe inke az sandoogh ya hesabe banki pardakhti anjam shode , etela'at dar jadvale hazineh ya checks sabt mishavad ----
                                       { if az.ItemIndex=0 then begin
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Insert into Hazineh(sanad , tarikh , mablagh , babat , name) ');
                                                                  hes_melk_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4) ');
                                                                  hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                                                  hes_melk_aq.Parameters[1].Value:=tarikh.EditText;
                                                                  hes_melk_aq.Parameters[2].Value:=strtoint(mablagh.Text);
                                                                  hes_melk_aq.Parameters[3].Value:=sharh.Text;
                                                                  hes_melk_aq.Parameters[4].Value:=mashin.Return_Value;
                                                                  hes_melk_aq.ExecSQL;
                                                                end; }
                                        if az.ItemIndex=1 then begin
                                                                   hes_melk_aq.Close;
                                                                   hes_melk_aq.SQL.Clear;
                                                                   hes_melk_aq.SQL.Add('select * from checks ');
                                                                   hes_melk_aq.SQL.Add('where (shomareh=:i0)');
                                                                   hes_melk_aq.Parameters[0].Value:=strtoint64(sanad.Text);
                                                                   hes_melk_aq.Open;
                                                                   if hes_melk_aq.RecordCount>0 then begin
                                                                                                        Application.MessageBox('������ ������� ��� �� ��� �� ������ ���� ��� ��� � ����� �� ��� ���� ����','����',0);
                                                                                                        //exit;
                                                                                                      end
                                                                                                  else
                                                                     begin
                                                                      hesab_aq.Close;
                                                                      hesab_aq.SQL.Clear;
                                                                      hesab_aq.SQL.Add('select * from hesab ');
                                                                      hesab_aq.SQL.Add('where shomareh=' + hesab.Text);
                                                                      hesab_aq.Open;
                                                                      hes_melk_aq.close;
                                                                      hes_melk_aq.SQL.Clear;
                                                                      hes_melk_aq.SQL.Add('Insert into checks(shomareh , bank , shobeh , hesab , tarikh , mablagh , name) ');
                                                                      hes_melk_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4,:i5,:i6) ');
                                                                      hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.text);
                                                                      hes_melk_aq.Parameters[1].Value:=hesab_aq['bank'];
                                                                      hes_melk_aq.Parameters[2].Value:=hesab_aq['shobeh'];
                                                                      hes_melk_aq.Parameters[3].Value:=hesab_aq['shomareh'];
                                                                      hes_melk_aq.Parameters[4].Value:=tarikh.EditText;
                                                                      hes_melk_aq.Parameters[5].Value:=mablagh.Value;

                                                                       if mashin.Text='����� ��� �ј�' then
                                                                          hes_melk_aq.Parameters[6].Value:='����� ��� �ј�' else
                                                                            hes_melk_aq.Parameters[6].Value:=mashin.Text;

                                                                      hes_melk_aq.ExecSQL;
                                                                      end;
                                                                end;
//--------------------------------- 2 shekle mokhtalef baraye ezafe kardane badi --------------
if Application.MessageBox('��� ���� ���� �� ���� ������ �� ��� �� ���� �','����',MB_YESNO + MB_ICONQUESTION)=mryes
    then begin
            sharh.Text:='';
            mablagh.Clear;
            sharh.SetFocus;
            mored_badi:=True;
          end
          else begin
                  sanad.Clear;
                  sanad.SetFocus;
                  mashin.Text:='';
                  tarikh.Clear;
                  sharh.Text:='';
                  mablagh.Clear;
                  //mahal.Clear;
                  hesab.Text:='';
                  chek.Clear;
                  mored_badi:=False;
                end;
//----------------------------------------------------------------------------------------------
                                       ///////////////chon ye chek keshide shode shomareh cheke feli ye vahed ezafe mishe //////////////
                                       if (az.ItemIndex=1) and (check_jadid.ItemIndex=0) then
                                                                    begin
                                                                       hes_melk_aq.Close;
                                                                       hes_melk_aq.SQL.Clear;
                                                                       hes_melk_aq.SQL.Add('select * from daste_check ');
                                                                       hes_melk_aq.SQL.Add('where (' + last_check + '<=ta) and ('+ last_check +'>=az) and (hesab=' + last_hesab + ') ');
                                                                       hes_melk_aq.Open;
                                                                       if hes_melk_aq.RecordCount>0 then begin
                                                                                                          hes_melk_aq.Edit;
                                                                                                          if not mored_badi then
                                                                                                                    hes_melk_aq['feli']:=hes_melk_aq['feli'] + 1;
                                                                                                          hes_melk_aq.Post;
                                                                                                          main_f.Check_Delete(hes_melk_aq['feli'],hes_melk_aq['hesab']);
                                                                                                         end;
                                                                     end;
                                       ///////////////////////////////////////////////////////////////////////////////
                                     end;
                              end;
//======================================== tagheere mored ===================================
if amal.Caption='�����' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               hes_melk_aq.Close;
                               hes_melk_aq.SQL.Clear;
                               hes_melk_aq.SQL.Add('select * from hes_melk ');
                               hes_melk_aq.SQL.Add('where (sanad=:i0) and (sharh=:i1)');
                               hes_melk_aq.Parameters[0].Value:=sanad.Text;
                               hes_melk_aq.Parameters[1].Value:=sharh.Text;
                               hes_melk_aq.Open;
                               if hes_melk_aq.RecordCount<=0 then begin
                                                                    Application.MessageBox('����� ���� ����� ���� ���','����',MB_OK+MB_ICONSTOP);
                                                                    exit;
                                                                  end
                                else begin
                                       allow_change:=true; 
                                       hes_melk_aq.Close;
                                       hes_melk_aq.SQL.Clear;
                                       hes_melk_aq.SQL.Add('Update Hes_melk ');
                                       hes_melk_aq.SQL.Add('Set sanad=:i0 , mashin=:i1 , tarikh=:i2 , sharh=:i3 , mablagh=:i4 , mahal=:i5 , az=:i6 , hesab=:i7 , chek=:i8 ');
                                       hes_melk_aq.SQL.Add('Where (sanad=:i9) and (sharh=:i10) ');
                                       hes_melk_aq.Parameters[0].Value:=strtoint(sanad.Text);

                                       if mashin.Text='����� ��� �ј�' then
                                          hes_melk_aq.Parameters[1].Value:='����� ��� �ј�' else
                                            hes_melk_aq.Parameters[1].Value:=mashin.Text;

                                       hes_melk_aq.Parameters[2].Value:=tarikh.EditText;
                                       hes_melk_aq.Parameters[3].Value:=sharh.Text;
                                       hes_melk_aq.Parameters[4].Value:=mablagh.Value;
                                       hes_melk_aq.Parameters[5].Value:=mahal.Text;
                                       hes_melk_aq.Parameters[6].Value:=az.Text;
                                       hes_melk_aq.Parameters[7].Value:=hesab.Text;
                                       hes_melk_aq.Parameters[8].Value:=chek.Text;
                                       hes_melk_aq.Parameters[9].Value:=strtoint(sanad.Text);
                                       hes_melk_aq.Parameters[10].Value:=sharh.Text;
                                       hes_melk_aq.ExecSQL;
                                       //------- bar hasbe inke az sandoogh ya hesabe banki pardakhti anjam shode , etela'at dar jadvale hazineh ya checks sabt mishavad ----
                                       { if az.ItemIndex=0 then begin
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Delete from Hazineh ');
                                                                  hes_melk_aq.SQL.Add('where (sanad=:i0)');
                                                                  hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                                                  hes_melk_aq.ExecSQL;
                                                                  //------------------------------
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Insert into Hazineh(sanad , tarikh , mablagh , babat , name) ');
                                                                  hes_melk_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4) ');
                                                                  hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                                                  hes_melk_aq.Parameters[1].Value:=tarikh.EditText;
                                                                  hes_melk_aq.Parameters[2].Value:=strtoint(mablagh.Text);
                                                                  hes_melk_aq.Parameters[3].Value:=sharh.Text;
                                                                  hes_melk_aq.Parameters[4].Value:=mashin.Return_Value;
                                                                  hes_melk_aq.ExecSQL;
                                                                end; }
                                        if az.ItemIndex=1 then begin
                                                                   hes_melk_aq.Close;
                                                                   hes_melk_aq.SQL.Clear;
                                                                   hes_melk_aq.SQL.Add('select * from checks ');
                                                                   hes_melk_aq.SQL.Add('where (shomareh=:i0)');
                                                                   hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                                                   hes_melk_aq.Open;
                                                                   if hes_melk_aq.RecordCount>0 then
                                                                 begin
                                                                      hesab_aq.Close;
                                                                      hesab_aq.SQL.Clear;
                                                                      hesab_aq.SQL.Add('select * from hesab ');
                                                                      hesab_aq.SQL.Add('where shomareh=' + hesab.Text);
                                                                      hesab_aq.Open;
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Delete from checks ');
                                                                  hes_melk_aq.SQL.Add('where (shomareh=:i0)');
                                                                  hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                                                  hes_melk_aq.ExecSQL;
                                                                  //------------------------------
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Insert into checks(shomareh , bank , shobeh , hesab , tarikh , mablagh , name) ');
                                                                  hes_melk_aq.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4,:i5,:i6) ');
                                                                  hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                                                  hes_melk_aq.Parameters[1].Value:=hesab_aq['bank'];
                                                                  hes_melk_aq.Parameters[2].Value:=hesab_aq['shobeh'];
                                                                  hes_melk_aq.Parameters[3].Value:=hesab_aq['shomareh'];
                                                                  hes_melk_aq.Parameters[4].Value:=tarikh.EditText;
                                                                  hes_melk_aq.Parameters[5].Value:=mablagh.value;

                                                                  if mashin.Text='����� ��� �ј�' then
                                                                      hes_melk_aq.Parameters[6].Value:='����� ��� �ј�' else
                                                                        hes_melk_aq.Parameters[6].Value:=mashin.Text;

                                                                  hes_melk_aq.ExecSQL;
                                                                  end;
                                                                end;
                                     end;
                              Application.MessageBox('�� ���� ����� ����','����',MB_OK+MB_ICONEXCLAMATION);
                              //close;
                              end;
//======================================== End of tagheere mored ============================
if amal.Caption='���' then begin
                              if Application.MessageBox('��� �� ��� ��� ���� ������� ����� �','�����',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       allow_change:=true; 
                                       hes_melk_aq.Close;
                                       hes_melk_aq.SQL.Clear;
                                       hes_melk_aq.SQL.Add('DELETE FROM hes_melk');
                                       hes_melk_aq.SQL.Add(' where (sanad=:i0) and (sharh=:i1)');
                                       hes_melk_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                       hes_melk_aq.Parameters[1].Value:=sharh.Text;
                                       hes_melk_aq.ExecSQL;
                                       //------- bar hasbe inke az sandoogh ya hesabe banki pardakhti anjam shode , etela'at dar jadvale hazineh ya checks sabt mishavad ----
                                       { if az.ItemIndex=0 then begin
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Delete From Hazineh ');
                                                                  hes_melk_aq.SQL.Add('Where (tarikh=:i0) and (mablagh=:i1) and (babat=:i2) and (name=:i3) ');
                                                                  hes_melk_aq.Parameters[0].Value:=tarikh.EditText;
                                                                  hes_melk_aq.Parameters[1].Value:=strtoint(mablagh.Text);
                                                                  hes_melk_aq.Parameters[2].Value:=sharh.Text;
                                                                  hes_melk_aq.Parameters[3].Value:=mashin.Return_Value;
                                                                  hes_melk_aq.ExecSQL;
                                                                end; }
                                        if az.ItemIndex=1 then begin
                                                                  hes_melk_aq.close;
                                                                  hes_melk_aq.SQL.Clear;
                                                                  hes_melk_aq.SQL.Add('Delete From checks ');
                                                                  hes_melk_aq.SQL.Add('Where (hesab=:i0) and (tarikh=:i1) and (mablagh=:i2) and (name=:i3) ');
                                                                  hes_melk_aq.Parameters[0].Value:=StrToInt64(hesab.Text);
                                                                  hes_melk_aq.Parameters[1].Value:=tarikh.EditText;
                                                                  hes_melk_aq.Parameters[2].Value:=mablagh.value;

                                                                  if mashin.Text='����� ��� �ј�' then
                                                                      hes_melk_aq.Parameters[3].Value:='����� ��� �ј�' else
                                                                        hes_melk_aq.Parameters[3].Value:=mashin.Text;

                                                                  hes_melk_aq.ExecSQL;
                                                                end;
                                      Application.MessageBox('�� ��� ��� ��','����',MB_OK+MB_ICONSTOP);
                                      //close;
                                      end;
                            end;
if (amal.Caption='�����') or (amal.Caption='���')
      then begin
              sanad.Clear;
              sanad.SetFocus;
              mashin.Text:='';
              tarikh.Clear;
              sharh.Text:='';
              mablagh.Clear;
              mahal.Clear;
              hesab.Text:='';
              chek.Clear;
              mored_badi:=False;
              sharh.Clear;
              sharh.Items.Text:=sharh_list;
            end;
///////////////////////////// end of procedure ///////////////////////////////////////
end;

procedure Thes_melk_f.azSelect(Sender: TObject);
begin
if az.ItemIndex=0 then begin
                         hesab.Visible:=false;
                         txthesab.Visible:=false;
                         txtchek.Visible:=false;
                         chek.Visible:=false;
                        end;
if az.ItemIndex=1 then begin
                         hesab.Visible:=true;
                         txthesab.Visible:=true;
                         txtchek.Visible:=true;
                         chek.Visible:=true;
                        end;
end;

procedure Thes_melk_f.chekExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if (exitt.Focused) or (az.Focused) then exit;
val(chek.Text,num,e);
if ((chek.Text='') or (e<>0))
                           then
                              begin
                                Application.MessageBox('���� ����� �� �� ���� ������','����',MB_OK+MB_ICONWARNING);
                                chek.Clear;
                                chek.SetFocus;
                                exit;
                               end;
if check_jadid.ItemIndex=0 then
if main_f.Check_Valid(chek.text,hesab.Text)=0 then
                                        begin
                                          chek.Clear;
                                          chek.SetFocus;
                                          exit;
                                         end;
end;

procedure Thes_melk_f.chekKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Thes_melk_f.tarikhEnter(Sender: TObject);
begin
if mashin.Text='' then mashin.Text:='����� ��� �ј�';
end;

procedure Thes_melk_f.sanadEnter(Sender: TObject);
var
  i : integer;
begin
cf:=true;
mashin.Clear;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from person ');
mashin_aq.Open;
for i:=1 to mashin_aq.RecordCount do
      begin
        mashin.Items.Add(mashin_aq['name']);
        mashin_aq.Next;
       end;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from hesab ');
mashin_aq.Open;
for i:=1 to mashin_aq.RecordCount do
      begin
        mashin.Items.Add(mashin_aq['shomareh']);
        mashin_aq.Next;
       end;
mashin_aq.Close;
mashin_aq.SQL.Clear;
mashin_aq.SQL.Add('select * from kamion ');
mashin_aq.Open;
for i:=1 to mashin_aq.RecordCount do
      begin
        mashin.Items.Add(mashin_aq['mashin']);
        mashin_aq.Next;
       end;
//--------------------------------- por kardane hesab ha -------------------
hesab.Clear;
hesab_aq.Close;
hesab_aq.SQL.Clear;
hesab_aq.SQL.Add('select * from hesab ');
hesab_aq.Open;
for i:=1 to hesab_aq.RecordCount do
      begin
        hesab.Items.Add(hesab_aq['shomareh']);
        hesab_aq.Next;
       end;
end;

procedure Thes_melk_f.mashinExit(Sender: TObject);
begin
if (mashin.Text='') or ((not check_par(mashin.Text)) and (mashin.Text<>'����� ��� �ј�')) then
                        begin
                         Application.MessageBox('���� ������ ����� �� ���� ������','����',MB_OK+MB_ICONEXCLAMATION);
                         mashin.text:='';
                         mashin.SetFocus;
                        end;
end;

procedure Thes_melk_f.check_jadidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sharh.SetFocus;
end;

procedure Thes_melk_f.sharhEnter(Sender: TObject);
var
  i : integer;
begin
if (amal.Caption<>'�����') and (cf) then
    begin
      hes_melk_aq.Close;
      hes_melk_aq.SQL.Clear;
      hes_melk_aq.SQL.Add('Select * From hes_melk ');
      hes_melk_aq.SQL.Add('Where sanad=' + chr(39) + sanad.Text + chr(39));
      hes_melk_aq.Open;
      hes_melk_aq.First;
      for i:=1 to hes_melk_aq.RecordCount do
            begin
               sharh.Items.Add(hes_melk_aq['sharh']);
               hes_melk_aq.Next;
             end;
      cf:=false;
     end; 
end;

procedure Thes_melk_f.hesabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then chek.SetFocus;
end;

procedure Thes_melk_f.hesabExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(hesab.Text , num , e);
if (e=0) then
    begin
      hesab_aq.Close;
       hesab_aq.SQL.Clear;
        hesab_aq.SQL.Add('Select * from hesab ');
        hesab_aq.SQL.Add('where shomareh= ' + VarToStr(hesab.Text));
        hesab_aq.Open;
       hesab_aq.First;
     end;
     if (hesab.Text='') or (hesab_aq.RecordCount=0) or (e<>0)
                 then
                    begin
                      Application.MessageBox('���� ����� ���� �� ����� ������','����',MB_OK+MB_ICONERROR);
                      hesab.SetFocus;
                      hesab.Text:='';
                     end;
end;

procedure Thes_melk_f.sharhChange(Sender: TObject);
begin
allow_change:=true;
end;

procedure Thes_melk_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
