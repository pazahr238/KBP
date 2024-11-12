unit anbarv_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, Grids, DBGrids, DBGrid_Edit,
  MonyEdit, ExtCtrls;

type
  Tanbarv_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    anbarv_aq: TADOQuery;
    Panel1: TPanel;
    txtkala: TLabel;
    txtsanad: TLabel;
    txtmeghdar: TLabel;
    Label3: TLabel;
    txtgh_vahed: TLabel;
    txtgh_kol: TLabel;
    txtmahal: TLabel;
    txtchek: TLabel;
    txtaz: TLabel;
    txthesab: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    txttarikh: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sanad: TEdit;
    meghdar: TEdit;
    mahal: TEdit;
    az: TComboBox;
    chek: TEdit;
    hesab: TDBGrid_Edit;
    gh_vahed: TMonyEdit;
    gh_kol: TMonyEdit;
    noe: TComboBox;
    tarikh: TMaskEdit;
    check_jadid: TComboBox;
    kala_aq: TADOQuery;
    hesab_ds: TDataSource;
    hesab_aq: TADOQuery;
    kala: TComboBox;
    daste_kala: TComboBox;
    daste_kala_aq: TADOQuery;
    txtdaste_kala: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sanadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sanadExit(Sender: TObject);
    procedure meghdarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gh_vahedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gh_kolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meghdarExit(Sender: TObject);
    procedure gh_vahedExit(Sender: TObject);
    procedure gh_kolExit(Sender: TObject);
    procedure tarikhExit(Sender: TObject);
    procedure mahalExit(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure azKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure azSelect(Sender: TObject);
    procedure hesabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure hesabEnter(Sender: TObject);
    procedure hesabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chekExit(Sender: TObject);
    procedure chekKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gh_kolEnter(Sender: TObject);
    procedure noeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure n(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure daste_kalaEnter(Sender: TObject);
    procedure daste_kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaEnter(Sender: TObject);
    procedure kalaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kalaExit(Sender: TObject);
    procedure daste_kalaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  anbarv_f: Tanbarv_f;
  last_check : string;
  mored_badi : boolean;
  
implementation

uses main_u;

{$R *.dfm}

procedure Tanbarv_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (az.ItemIndex=1) and (check_jadid.ItemIndex=0) and (mored_badi) then
                                                    begin
                                                       anbarv_aq.Close;
                                                       anbarv_aq.SQL.Clear;
                                                       anbarv_aq.SQL.Add('select * from daste_check ');
                                                       anbarv_aq.SQL.Add('where (' + last_check + '<=ta) and ('+ last_check +'>=az) and (hesab=' + vartostr(hesab.Return_Value) + ') ');
                                                       anbarv_aq.Open;
                                                       if anbarv_aq.RecordCount>0 then begin
                                                                                           anbarv_aq.Edit;
                                                                                           anbarv_aq['feli']:=anbarv_aq['feli'] + 1;
                                                                                           anbarv_aq.Post;
                                                                                           main_f.Check_Delete(anbarv_aq['feli'],vartostr(hesab.Return_Value));
                                                                                          end;
                                                     end;
action:=cafree;
end;

procedure Tanbarv_f.FormShow(Sender: TObject);
begin
sanad.SetFocus;
hesab.Edit_Search.BiDiMode:=bdRightToLeft;
hesab.Edit_Search.Ctl3D:=false;
azSelect(anbarv_f);
gh_vahed.BiDiMode:=bdRightToLeft;
gh_kol.BiDiMode:=bdRightToLeft;
mored_badi:=False;
end;

procedure Tanbarv_f.sanadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
              begin
                if amal.Caption<>'«÷«›Â' then daste_kala.SetFocus else tarikh.SetFocus;
               end;
end;

procedure Tanbarv_f.sanadExit(Sender: TObject);
var
  num : int64;
  e  : integer;
begin
if exitt.Focused then exit;
val(sanad.Text,num,e);
if e<>0 then begin
               Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì ‘„«—Â ”‰œ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
               sanad.Clear;
               sanad.SetFocus;
              end;
end;

procedure Tanbarv_f.meghdarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then gh_vahed.SetFocus;
end;

procedure Tanbarv_f.gh_vahedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then gh_kol.SetFocus;
end;

procedure Tanbarv_f.gh_kolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if mored_badi then amal.SetFocus
                      else mahal.SetFocus;
                end;
end;

procedure Tanbarv_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then check_jadid.SetFocus;
end;

procedure Tanbarv_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                  if noe.Text='Œ—Ìœ' then az.SetFocus
                      else amal.SetFocus;
                end;
end;

procedure Tanbarv_f.meghdarExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
if exitt.Focused then exit;
val(meghdar.Text,num,e);
if (meghdar.Text='') or (e<>0) or (meghdar.Text='0') then
        begin
          Application.MessageBox('·ÿ›«  ⁄œ«œ Ì« ÕÃ„ ﬂ«·« —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          meghdar.Clear;
          meghdar.SetFocus;
         end;
end;

procedure Tanbarv_f.gh_vahedExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(gh_vahed.Value),num,e);
if (e<>0) or (gh_vahed.Text='0') then
        begin
          Application.MessageBox('·ÿ›« ﬁÌ„  Ê«Õœ —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          gh_vahed.Clear;
          gh_vahed.SetFocus;
         end;
end;

procedure Tanbarv_f.gh_kolExit(Sender: TObject);
var
  e : integer;
  num : int64;
begin
val(vartostr(gh_kol.Value),num,e);
if (e<>0) or (gh_kol.Text='0') then
        begin
          Application.MessageBox('·ÿ›« ﬁÌ„  ﬂ· —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
          gh_kol.Clear;
          gh_kol.SetFocus;
         end;
end;


procedure Tanbarv_f.tarikhExit(Sender: TObject);
begin
if exitt.Focused then exit;
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tanbarv_f.mahalExit(Sender: TObject);
begin
if mahal.Text='' then begin
                        Application.MessageBox('·ÿ›« „Õ· Œ—Ìœ Ì« ¬œ—” —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                        mahal.Clear;
                        mahal.SetFocus;
                       end;
end;

procedure Tanbarv_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               anbarv_aq.Close;
                               anbarv_aq.SQL.Clear;
                               anbarv_aq.SQL.Add('select * from anbarv ');
                               anbarv_aq.SQL.Add('where (sanad=:i0) and (kala=:i1)');
                               anbarv_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                               anbarv_aq.Parameters[1].Value:=kala.Text;
                               anbarv_aq.Open;
                               if anbarv_aq.RecordCount>0 then begin
                                                                 Application.MessageBox('ﬂ«·«ÌÌ »« «Ì‰ ‘„«—Â ”‰œ ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                                                 exit;
                                                                end
                                else begin
                                       anbarv_aq.Close;
                                       anbarv_aq.SQL.Clear;
                                       anbarv_aq.SQL.Add('INSERT INTO anbarv(sanad,daste_kala,kala,meghdar,gh_vahed,gh_kol,tarikh,mahal,az,hesab,chek)');
                                       anbarv_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8,:i9,:i10)');
                                       anbarv_aq.Parameters[0].Value:=strtoint(sanad.Text);
                                       anbarv_aq.Parameters[1].Value:=daste_kala.Text;
                                       anbarv_aq.Parameters[2].Value:=kala.Text;
                                       anbarv_aq.Parameters[3].Value:=strtoint(meghdar.Text);
                                       anbarv_aq.Parameters[4].Value:=gh_vahed.Value;
                                       anbarv_aq.Parameters[5].Value:=gh_kol.Value;
                                       anbarv_aq.Parameters[6].Value:=tarikh.EditText;
                                       anbarv_aq.Parameters[7].Value:=mahal.Text;

                                       if noe.Text='Œ—Ìœ' then begin
                                       anbarv_aq.Parameters[8].Value:=az.Text;
                                       anbarv_aq.Parameters[9].Value:=hesab_aq['shomareh'];
                                       anbarv_aq.Parameters[10].Value:=chek.Text;
                                                                end
                                                                 else begin
                                                                         anbarv_aq.Parameters[8].Value:='';
                                                                         anbarv_aq.Parameters[9].Value:='';
                                                                         anbarv_aq.Parameters[10].Value:='';
                                                                       end;
                                       last_check:=chek.Text;
                                       anbarv_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ›«ﬂ Ê— À»  ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
//--------------------------------- 2 shekle mokhtalef baraye ezafe kardane badi --------------
if Application.MessageBox('¬Ì« „Ê—œ »⁄œÌ «“ Â„Ì‰ ›«ﬂ Ê— —« À»  „Ì ﬂ‰Ìœ ø','”Ê«·',MB_YESNO + MB_ICONQUESTION)=mryes
    then begin
            daste_kala.Text:='';
            kala.Text:='';
            meghdar.Clear;
            gh_vahed.Clear;
            gh_kol.Clear;
            daste_kala.SetFocus;
            mored_badi:=True;
          end
          else begin
                  sanad.Clear;
                  sanad.SetFocus;
                  tarikh.Clear;
                  daste_kala.Text:='';
                  kala.Text:='';
                  meghdar.Clear;
                  gh_vahed.Clear;
                  gh_kol.Clear;
                  //mahal.Clear;
                  hesab.Edit_Search.Clear;
                  chek.Clear;
                  mored_badi:=False;
                end;
//----------------------------------------------------------------------------------------------
                                       ////////////////////////chon ye chek keshide shode shomareh cheke feli ye vahed ezafe mishe ////////////////////
                                       if (az.ItemIndex=1) and (check_jadid.ItemIndex=0) then
                                                              begin
                                                                  anbarv_aq.Close;
                                                                    anbarv_aq.SQL.Clear;
                                                                       anbarv_aq.SQL.Add('select * from daste_check ');
                                                                       anbarv_aq.SQL.Add('where (' + last_check + '<=ta) and ('+ last_check +'>=az) and (hesab=' + vartostr(hesab.Return_Value) + ') ');
                                                                       anbarv_aq.Open;
                                                                       if anbarv_aq.RecordCount>0 then begin
                                                                                                         anbarv_aq.Edit;
                                                                                                         if not mored_badi then
                                                                                                              anbarv_aq['feli']:=anbarv_aq['feli'] + 1;
                                                                                                         anbarv_aq.Post;
                                                                                                         main_f.Check_Delete(anbarv_aq['feli'],vartostr(hesab.Return_Value));
                                                                                                        end;
                                                               end
                                       ///////////////////////////////////////////////////////////////////////////////
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               anbarv_aq.Close;
                               anbarv_aq.SQL.Clear;
                               anbarv_aq.SQL.Add('select * from anbarv ');
                               anbarv_aq.SQL.Add('where (sanad=:i0) and (kala=:i1)');
                               anbarv_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                               anbarv_aq.Parameters[1].Value:=kala.Text;
                               anbarv_aq.Open;
                               if anbarv_aq.RecordCount=0 then begin
                                                                 Application.MessageBox('ﬂ«·«ÌÌ »« «Ì‰ ‘„«—Â ”‰œ ﬁ»·« À»  ‰‘œÂ «” ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                                                                 exit;
                                                                end
                                else begin
                                       anbarv_aq.Close;
                                       anbarv_aq.SQL.Clear;
                                       anbarv_aq.SQL.Add('Update anbarv ');
                                       anbarv_aq.SQL.Add('Set sanad=:i0,daste_kala=:i1,kala=:i2,meghdar=:i3,gh_vahed=:i4,gh_kol=:i5,tarikh=:i6,mahal=:i7,az=:i8,hesab=:i9,chek=:i10 ');
                                       anbarv_aq.SQL.Add('where (sanad=:i11) and (kala=:i12)');
                                       anbarv_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                       anbarv_aq.Parameters[1].Value:=daste_kala.Text;
                                       anbarv_aq.Parameters[2].Value:=kala.Text;
                                       anbarv_aq.Parameters[3].Value:=StrToInt64(meghdar.Text);
                                       anbarv_aq.Parameters[4].Value:=gh_vahed.Value;
                                       anbarv_aq.Parameters[5].Value:=gh_kol.Value;
                                       anbarv_aq.Parameters[6].Value:=tarikh.EditText;
                                       anbarv_aq.Parameters[7].Value:=mahal.Text;
                                       anbarv_aq.Parameters[8].Value:=az.Text;
                                       anbarv_aq.Parameters[9].Value:=hesab_aq['shomareh'];
                                       anbarv_aq.Parameters[10].Value:=chek.Text;
                                       anbarv_aq.Parameters[11].Value:=StrToInt64(sanad.Text);
                                       anbarv_aq.Parameters[12].Value:=kala.Text;
                                       anbarv_aq.ExecSQL;
                                       Application.MessageBox('Ìò ›«ò Ê—  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                                     end;
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       anbarv_aq.Close;
                                       anbarv_aq.SQL.Clear;
                                       anbarv_aq.SQL.Add('DELETE FROM anbarv');
                                       anbarv_aq.SQL.Add(' where (sanad=:i0) and (kala=:i1)');
                                       anbarv_aq.Parameters[0].Value:=StrToInt64(sanad.Text);
                                       anbarv_aq.Parameters[1].Value:=kala.Text;
                                       anbarv_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ ›«ﬂ Ê— Õ–› ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
if (amal.Caption=' €ÌÌ—') or (amal.Caption='Õ–›')
      then begin
              sanad.SetFocus;
              sanad.Clear;
              daste_kala.Text:='';
              kala.Text:='';
              meghdar.Clear;
              gh_vahed.Clear;
              gh_kol.Clear;
              tarikh.Clear;
              //mahal.Clear;
              hesab.Edit_Search.Clear;
              chek.Clear;
            end;
end;

procedure Tanbarv_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tanbarv_f.azKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then begin
                 if hesab.Edit_Search.Visible then
                        begin
                          hesab.Edit_Search.SetFocus;
                          if amal.Caption<>'«÷«›Â' then
                            begin
                              hesab_aq.Close;
                              hesab_aq.SQL.Clear;
                              hesab_aq.SQL.Add('Select * from hesab ');
                              hesab_aq.SQL.Add('where shomareh=:i0 ');
                              hesab_aq.Parameters[0].Value:=hesab.Return_Value;
                              hesab_aq.Open;
                             end;
                         end
                                      else
                                        amal.SetFocus;
                end;
end;

procedure Tanbarv_f.azSelect(Sender: TObject);
begin
if az.ItemIndex=0 then begin
                         txthesab.Visible:=false;
                         hesab.Edit_Search.Visible:=false;
                         hesab.Visible:=false;
                         hesab.Edit_Search.Left:=20;
                         hesab.Edit_Search.Width:=100;
                         txtchek.Visible:=false;
                         chek.Visible:=false;
                        end;
if az.ItemIndex=1 then begin
                         txthesab.Visible:=True;
                         hesab.Edit_Search.Visible:=True;
                         hesab.Visible:=false;
                         hesab.Edit_Search.Left:=20;
                         hesab.Edit_Search.Width:=100;
                         txtchek.Visible:=true;
                         chek.Visible:=true;
                        end;
end;

procedure Tanbarv_f.hesabDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
hesab.Height:=50;
hesab.Edit_Search.Left:=20;
hesab.Edit_Search.Width:=100;
end;

procedure Tanbarv_f.hesabEnter(Sender: TObject);
begin
if Not hesab.Showing then keybd_event(ord(chr(35)), 0, 0, 0);
end;

procedure Tanbarv_f.hesabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (hesab.Is_Find_Field)
                      then chek.SetFocus
                        else begin
                              Application.MessageBox('·ÿ›« »«‰ﬂ Ê Õ”«» —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                              hesab.Edit_Search.Clear;
                              hesab.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Tanbarv_f.chekExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if (exitt.Focused) or (az.Focused) then exit;
val(chek.Text,num,e);
if (chek.Text='') or (e<>0)
                           then
                              begin
                                Application.MessageBox('·ÿ›« ‘„«—Â çﬂ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                chek.Clear;
                                chek.SetFocus;
                                exit;
                               end;
if check_jadid.ItemIndex=0 then
if main_f.Check_Valid(chek.text,vartostr(hesab.Return_Value))=0 then
                                        begin
                                          chek.Clear;
                                          chek.SetFocus;
                                         end;
// sepas, dar amal.click , yek vahed be shomareh cheke feli ezafe shode va jahate hazfe kolle daste check ,agar kamel estefade shode eghdam mishavad
end;
                                                                                                                         
procedure Tanbarv_f.chekKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tanbarv_f.gh_kolEnter(Sender: TObject);
begin
gh_kol.Value:=StrToInt64(vartostr(gh_vahed.value)) * StrToInt64(meghdar.Text);
end;

procedure Tanbarv_f.noeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then meghdar.SetFocus;
end;

procedure Tanbarv_f.n(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then daste_kala.SetFocus;
end;

procedure Tanbarv_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tanbarv_f.daste_kalaEnter(Sender: TObject);
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

procedure Tanbarv_f.daste_kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kala.SetFocus;
end;

procedure Tanbarv_f.kalaEnter(Sender: TObject);
var
  i :integer;
begin
kala.Clear;
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
end;

procedure Tanbarv_f.kalaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if kala.Text<>''
                      then begin
                              if amal.Caption<>'«÷«›Â' then
                                  begin
                                    anbarv_aq.Close;
                                    anbarv_aq.SQL.Clear;
                                    anbarv_aq.SQL.Add('select * from anbarv ');
                                    anbarv_aq.SQL.Add('where (sanad=:i0) and (kala=:i1)');
                                    anbarv_aq.Parameters[0].Value:=strtoint(sanad.Text);
                                    anbarv_aq.Parameters[1].Value:=kala.Text;
                                    anbarv_aq.Open;

                                    if anbarv_aq.RecordCount>0 then
                                        begin  // set kardane maghadire peida shode dar control ha
                                          //kala.Edit_Search.Text:=anbarv_aq['kala'];
                                          if (anbarv_aq['az']='') or (anbarv_aq['az']='’‰œÊﬁ') then noe.ItemIndex:=1 else noe.ItemIndex:=0;
                                          daste_kala.Text:=anbarv_aq['daste_kala'];
                                          meghdar.Text:=inttostr(anbarv_aq['meghdar']);
                                          gh_vahed.Value:=anbarv_aq['gh_vahed'];
                                          gh_kol.Value:=anbarv_aq['gh_kol'];
                                          tarikh.EditText:=anbarv_aq['tarikh'];
                                          mahal.Text:=anbarv_aq['mahal'];
                                          az.ItemIndex:=main_f.s_i_mp(anbarv_aq['az']);
                                          hesab.Edit_Search.Text:=vartostr(anbarv_aq['hesab']);
                                          chek.Text:=anbarv_aq['chek'];
                                          azSelect(sender);
                                          if amal.Caption='Õ–›'
                                                then amal.SetFocus
                                                      else noe.SetFocus;
                                        end else begin
                                                    Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                                    kala.SetFocus;
                                                    daste_kala.Text:='';
                                                    kala.Text:='';
                                                    meghdar.Clear;
                                                    gh_vahed.Clear;
                                                    gh_kol.Clear;
                                                    tarikh.Clear;
                                                    mahal.Clear;
                                                    hesab.Edit_Search.Clear;
                                                    chek.Clear;
                                                  end;
                                  end else begin // else of amal.Caption<>'«÷«›Â'
                                             noe.SetFocus;
                                            end;
                            end
                                     else begin // else of kala.Edit_Search.Text<>''
                                            Application.MessageBox('«Ì‰ ﬂ«·« Â‰Ê“ À»  ‰‘œÂ «” . »Â ﬁ”„  «ÿ·«⁄«  Å«ÌÂù >  ⁄ÊÌ÷ ﬂ«·« > «÷«›Â „—«Ã⁄Â ‰„«ÌÌœ','«Œÿ«—',0);
                                            kala.Text:='';
                                            kala.SetFocus;
                                           end;
                  end; // end of key=13
end;

procedure Tanbarv_f.kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if kala.Text='' then
              begin
                Application.MessageBox('·ÿ›« ‰«„ ﬂ«·« —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                kala.SetFocus;
               end;
end;

procedure Tanbarv_f.daste_kalaExit(Sender: TObject);
begin
if exitt.Focused then exit;
if daste_kala.Text='' then
              begin
                Application.MessageBox('·ÿ›« œ” Â ﬂ«·« —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                daste_kala.SetFocus;
               end;
end;

end.
