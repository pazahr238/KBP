unit barnameh_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBGrid_Edit, DB, ADODB, Mask, Buttons,
  frxClass, frxDBSet, MonyEdit;

type
  Tbarnameh_f = class(TForm)
    exitt: TButton;
    amal: TButton;
    shomareh: TEdit;
    txtshomareh: TLabel;
    txtsherkat: TLabel;
    sherkat_aq: TADOQuery;
    txtmahal: TLabel;
    mahal_aq: TADOQuery;
    txtkamion: TLabel;
    kamion_aq: TADOQuery;
    tarikh: TMaskEdit;
    txttarikh: TLabel;
    txtmeghdarl: TLabel;
    meghdarl: TEdit;
    havaleh: TEdit;
    txthavaleh: TLabel;
    txtnoe: TLabel;
    noe: TComboBox;
    barnameh_aq: TADOQuery;
    reff: TBitBtn;
    txtmahal_bar: TLabel;
    masafat: TEdit;
    txtmasafat: TLabel;
    txtmeghdark: TLabel;
    meghdark: TEdit;
    Label1: TLabel;
    txtkerayehl: TLabel;
    Label3: TLabel;
    barrasi: TButton;
    sharh: TEdit;
    txtsharh: TLabel;
    kamion: TEdit;
    txtkerayehk: TLabel;
    Label4: TLabel;
    mahal_bar: TComboBox;
    hogh_melk: TMonyEdit;
    Label2: TLabel;
    txthogh_melk: TLabel;
    mahal: TComboBox;
    setting_aq: TADOQuery;
    sherkat: TComboBox;
    kerayehl: TEdit;
    kerayehk: TEdit;
    noe_bar_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure shomarehExit(Sender: TObject);
    procedure shomarehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure sherkatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kamionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tarikhExit(Sender: TObject);
    procedure tarikhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meghdarlExit(Sender: TObject);
    procedure meghdarlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure havalehExit(Sender: TObject);
    procedure havalehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure noeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure reffClick(Sender: TObject);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure reffEnter(Sender: TObject);
    procedure mahal_barExit(Sender: TObject);
    procedure mahal_barKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahal_barEnter(Sender: TObject);
    procedure masafatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure masafatExit(Sender: TObject);
    procedure meghdarkExit(Sender: TObject);
    procedure meghdarkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mahalDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Check_Taviz_Kala;
    procedure kerayehlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kerayehlExit(Sender: TObject);
    procedure barrasiClick(Sender: TObject);
    procedure sharhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kamionExit(Sender: TObject);
    procedure kerayehkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kerayehkExit(Sender: TObject);
    procedure kerayehlEnter(Sender: TObject);
    procedure kerayehkEnter(Sender: TObject);
    procedure hogh_melkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure hogh_melkEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure shomarehEnter(Sender: TObject);
    procedure noeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  barnameh_f: Tbarnameh_f;
  fff : boolean;
  current_mashin , current_ranandeh : string;

implementation

uses main_u , ras, ras2, date_assis, Math;


{$R *.dfm}

procedure Tbarnameh_f.Check_Taviz_Kala;
label l;
var
 qu , qm : TADOQuery;
 i ,  e : integer;
 npt : string;
 sum , num : int64;
 sum_kala : variant;
 max_tarikh : string;
 gh_v : int64;    //------ jadid tarin (az nazare tarikh) gheymate vahede kalaei ke mashin taviz karde dar -------

begin
if amal.Caption='Õ–›' then exit;
if current_mashin='' then begin
                            current_mashin:=kamion.Text;
                            current_ranandeh:=kamion_aq['ranandeh'];
                           end;
qu:=TADOQuery.Create(Main_f);
qu.Connection:=main_f.MainConnection;
qu.SQL.add('SELECT SUM(masafat) as S FROM barnameh ');
qu.SQL.Add('Where kamion=:i0');
qu.Parameters[0].Value:=barnameh_u.current_mashin;
qu.ExecSQL;
qu.Open;
if varisnull(qu['S']) then begin
                             Application.MessageBox('·ÿ›« ‰«„ —«‰‰œÂ —«  ⁄ÌÌ‰ ‰„«ÌÌœ',' ÊÃÂ',0);
                             exit;
                            end;
qu.First;
sum:=qu['S'];   // qu['S'] = Sum of masafat in Barnameh For each Mashin
qu.Close;
/////////////////////////////////////////////////////////////////////
qm:=TADOQuery.Create(Main_f);
qm.Connection:=main_f.MainConnection;
qm.SQL.Add('Select * From Barnameh_Kamion_Taviz ');
qm.SQL.Add('Where mashin=:i0');
qm.Parameters[0].Value:=barnameh_u.current_mashin;
qm.ExecSQL;
qm.Open;
qm.First;
for i:=1 to qm.RecordCount do
                  begin
                    if ( sum >= (qm['masafat'] * qm['dafe']) )
                      then begin
                              ShowMessage( qm['kala']  +  ' „«‘Ì‰ '+ current_mashin + ' »«Ì” Ì  ⁄ÊÌ÷ ê—œœ ');
                              if Application.MessageBox('¬Ì« „«Ì· »Â  ⁄ÊÌ÷ ¬‰ Â” Ìœ ø',' ÊÃÂ', MB_YESNO + MB_ICONQUESTION)=mryes
                                then begin
                                        //----- check kardane mojoodie anbar (boodan) jahate sabt taviz -----
                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Select SUM(meghdar) AS S From anbarv where kala=:i0 ');
                                        qu.Parameters[0].Value:=qm['kala'];
                                        qu.Open;
                                        if (qu.RecordCount=0) or (VarIsNull(qu['S'])) or (qu['S']='0') then
                                                                 begin
                                                                   Application.MessageBox('«Ì‰ ﬂ«·« œ— «‰»«— „ÊÃÊœ ‰Ì” . ·ÿ›« „ÊÃÊœÌ «‰»«— —« »——”Ì ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                                                   qm.Next;
                                                                   Continue;
                                                                  end;

                                        //------------- check kardane mojoodie anbar (be andazeye kafi boodan) jahate sabt taviz -----
                                        if qu['S']<qm['meghdar'] then begin
                                                                          Application.MessageBox('«Ì‰ ﬂ«·« »Â «‰œ«“Â ﬂ«›Ì œ— «‰»«— „ÊÃÊœ ‰Ì” . ·ÿ›« „ÊÃÊœÌ «‰»«— —« »——”Ì ‰„«ÌÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                                                          qm.Next;
                                                                          Continue;
                                                                        end;
                                        //----------- anjame amaliate sanad khordan va sabt -------

                                        l : npt:=InputBox(' ÊÃÂ','·ÿ›« ‘„«—Â ”‰œ ÃÂ  À»   ⁄ÊÌ÷ ﬂ«·« Ê«—œ ‰„«ÌÌœ','');
                                        val(npt , num , e );
                                        if e<>0 then begin
                                                       Application.MessageBox('·ÿ›« Ìﬂ ⁄œœ ÃÂ  ‘„«—Â ”‰œ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                       goto l;
                                                      end;
                                        //--- checke : aya ba in saand ghablan record dar khorujie anvar ezafe shode ? ------
                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Select * From Anbarkh Where sanad=:i0');
                                        qu.Parameters[0].Value:=npt;
                                        qu.Open;
                                        if qu.RecordCount>0 then begin
                                                                    Application.MessageBox('«Ì‰ ‘„«—Â ”‰œ ﬁ»·« œ— Œ—ÊÃÌ «‰»«— À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                    goto l;
                                                                  end;

                                        //--- checke : aya ba in saand ghablan record dar hesab mashin ezafe shode ? -----
                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Select * From hes_melk Where sanad=:i0');
                                        qu.Parameters[0].Value:=npt;
                                        qu.Open;
                                        if qu.RecordCount>0 then begin
                                                                    Application.MessageBox('«Ì‰ ‘„«—Â ”‰œ ﬁ»·« œ— Õ”«» „«‘Ì‰ À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                    goto l;
                                                                  end;
                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Insert Into Anbarkh(sanad,kala,tarikh,meghdar,kamion) ');
                                        qu.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4)');
                                        qu.Parameters[0].Value:=npt;
                                        qu.Parameters[1].Value:=qm['kala'];
                                        qu.Parameters[2].Value:=long_date_format;
                                        qu.Parameters[3].Value:=qm['meghdar'];
                                        qu.Parameters[4].Value:=current_ranandeh;
                                        qu.ExecSQL;
                                        //----------- mashin be ezaye bardasht az anbar bayad bedehkar shavad -------
                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Select Max(tarikh) AS t From Anbarv Where kala=:i0');
                                        qu.Parameters[0].Value:=qm['kala'];
                                        qu.Open;
                                        qu.First;
                                        max_tarikh:=qu['t'];

                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Select gh_vahed From anbarv where (kala=:i0) and (tarikh=:i1)');
                                        qu.Parameters[0].Value:=qm['kala'];
                                        qu.Parameters[1].Value:=max_tarikh;
                                        qu.Open;
                                        qu.First;
                                        gh_v:=qu['gh_vahed'];

                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('INSERT INTO hes_melk(sanad , mashin , tarikh , sharh , mablagh , mahal , az , hesab , chek)');
                                        qu.SQL.Add('Values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8)');
                                        qu.Parameters[0].Value:=npt;
                                        qu.Parameters[1].Value:=barnameh_u.current_mashin;
                                        qu.Parameters[2].Value:=long_date_format;
                                        qu.Parameters[3].Value:='»—œ«‘  ﬂ«·« «“ «‰»«—';
                                        qu.Parameters[4].Value:=gh_v * qm['meghdar'];
                                        qu.Parameters[5].Value:='';
                                        qu.Parameters[6].Value:='’‰œÊﬁ';
                                        qu.Parameters[7].Value:='';
                                        qu.Parameters[8].Value:='';
                                        qu.ExecSQL;

                                        ////-----------------------------------------------
                                        qu.Close;
                                        qu.SQL.Clear;
                                        qu.SQL.Add('Select * From Taviz ');
                                        qu.SQL.Add('Where (mashin=:i0) and (kala=:i1)');
                                        qu.Parameters[0].Value:=qm['mashin'];
                                        qu.Parameters[1].Value:=qm['kala'];
                                        qu.Open;
                                        qu.First;
                                        qu.Edit;
                                        qu['dafe']:=qu['dafe'] + 1 ;
                                        qu.Post;
                                        
                                      end;
                            end;

                    qm.Next;
                   end;
qm.Close;
qm.Free;
qu.Close;
qu.Free;

end;

procedure Tbarnameh_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Delete from mahal_temp ');
mahal_aq.ExecSQL;
action:=cafree;
end;

procedure Tbarnameh_f.shomarehExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if exitt.Focused then exit;
val(shomareh.Text,num,e);
if amal.Caption<>'À» ' then
    begin
      barnameh_aq.Close;
      barnameh_aq.SQL.Clear;
      barnameh_aq.SQL.Add('select * from barnameh ');
      barnameh_aq.SQL.Add('where (shomareh=:i0)');
      if e=0 then barnameh_aq.Parameters[0].Value:=strtoint(shomareh.Text) else barnameh_aq.Parameters[0].Value:=0;
      barnameh_aq.Open;

      if barnameh_aq.RecordCount>0 then
          begin  // set kardane maghadire peida shode dar control ha
            sherkat.Text:=barnameh_aq['sherkat'];
            mahal_bar.Text:=barnameh_aq['mahal_bar'];
            mahal.Text:=barnameh_aq['mahal'];
            kamion.Text:=barnameh_aq['kamion'];
            tarikh.EditText:=barnameh_aq['tarikh'];
            meghdarl.Text:=inttostr(barnameh_aq['meghdarl']);
            meghdark.Text:=inttostr(barnameh_aq['meghdark']);
            havaleh.Text:=inttostr(barnameh_aq['havaleh']);
            noe.Text:=barnameh_aq['noe'];
            masafat.Text:=inttostr(barnameh_aq['masafat']);
            kerayehl.Text:=vartostr(barnameh_aq['kerayehl']);
            kerayehk.Text:=vartostr(barnameh_aq['kerayehk']);
            sharh.Text:=vartostr(barnameh_aq['sharh']);
            hogh_melk.Value:=barnameh_aq['hogh_melk'];
          end else begin
                      Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                      shomareh.SetFocus;
                      shomareh.Clear;
                      sherkat.Text:='';
                      mahal.Clear;
                      kamion.Clear;
                      tarikh.Clear;
                      meghdarl.Clear;
                      meghdark.Clear;
                      havaleh.Clear;
                      //sh_ch.Clear;
                      mahal_bar.Clear;
                      masafat.Clear;
                      kerayehl.Clear;
                      kerayehk.Clear;
                      sharh.Clear;
                      hogh_melk.Clear;
                    end;
    end else begin // else of amal.Caption<>'À» '
              //tarikh.EditText:='____/__/__';
              //////////////////////////// check e motabar boodane shomare sanad baraye vorood
              if (e<>0) or (shomareh.Text='') then begin
                                                  Application.MessageBox('·ÿ›« ‘„«—Â »«—‰«„Â —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                                                  shomareh.SetFocus;
                                                  shomareh.Clear;
                                                end;
              end;
end;

procedure Tbarnameh_f.shomarehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
              begin
                 if amal.Caption='Õ–›' then amal.SetFocus else sherkat.SetFocus;
               end;
end;

procedure Tbarnameh_f.FormShow(Sender: TObject);
begin
fff:=false;
shomareh.SetFocus;
//sherkat.Edit_Search.Ctl3D:=false;
sherkat.BiDiMode:=bdRightToLeft;
//mahal.Edit_Search.Ctl3D:=false;
//mahal.BiDiMode:=bdRightToLeft;
kerayehl.BiDiMode:=bdRightToLeft;
kerayehk.BiDiMode:=bdRightToLeft;
hogh_melk.BiDiMode:=bdRightToLeft;
end;

procedure Tbarnameh_f.sherkatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (sherkat.Text<>'')
                      then begin
                             mahal_bar.SetFocus;
                             fff:=true;
                            end
                        else begin
                              Application.MessageBox('·ÿ›« „ﬁ’œ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              sherkat.SetFocus;
                             end;
                  end;
end;

procedure Tbarnameh_f.mahalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (mahal.Text<>'')
                      then begin
                             kamion.SetFocus;
                             mahal_aq.close;
                             mahal_aq.SQL.Clear;
                             mahal_aq.SQL.Add('select * from mahal ');
                             mahal_aq.SQL.Add('where (sherkat=' + chr(39) + sherkat.text + chr(39) + ') and (mahal=' + chr(39) + mahal.text + chr(39) + ') ');
                             mahal_aq.Open;
                             mahal_aq.First;
                             if not VarIsNull(mahal_aq['masafat2'])
                                  then masafat.Text:=mahal_aq['masafat2'];
                            end
                        else begin
                              Application.MessageBox('·ÿ›« „Õ·  Œ·ÌÂ —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
                              mahal.SetFocus;
                             end;
                  end ;
                   { else
                        if fff=false then reff.SetFocus; }
end;

procedure Tbarnameh_f.kamionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then tarikh.SetFocus;
end;

procedure Tbarnameh_f.tarikhExit(Sender: TObject);
begin
if Not main_f.check_date(tarikh.EditText)
    then
      begin
        Application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì  «—ÌŒ Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
        tarikh.Clear;
        tarikh.SetFocus;
       end;
end;

procedure Tbarnameh_f.tarikhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then meghdarl.SetFocus;
end;

procedure Tbarnameh_f.meghdarlExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(meghdarl.Text,num,e);
if (meghdarl.Text='') or (e<>0) or (meghdarl.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „ﬁœ«— »«— „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
      meghdarl.Clear;
      meghdarl.SetFocus;
     end;
end;

procedure Tbarnameh_f.meghdarlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then begin
                    meghdark.SetFocus;
                  end;
end;

procedure Tbarnameh_f.havalehExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
if noe.Text<>'‰› ﬂÊ—Â' then begin
val(havaleh.Text,num,e);
if (e<>0) or (havaleh.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« ‘„«—Â ÕÊ«·Â „— »ÿ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
      havaleh.Clear;
      havaleh.SetFocus;
     end;
                             end
                               else if havaleh.Text='' then havaleh.Text:='0';
end;

procedure Tbarnameh_f.havalehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then masafat.SetFocus;
end;

procedure Tbarnameh_f.noeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then havaleh.SetFocus;
end;

procedure Tbarnameh_f.reffClick(Sender: TObject);
var
  i : integer;
begin
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Delete from mahal_temp ');
mahal_aq.ExecSQL;
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('Insert into mahal_temp ');
mahal_aq.SQL.Add('select * from mahal ');
mahal_aq.SQL.Add('where (sherkat=:i0) order by mahal');
mahal_aq.Parameters[0].Value:= sherkat.Text;
mahal_aq.ExecSQL;
mahal_aq.Close;
mahal_aq.SQL.Clear;
mahal_aq.SQL.Add('select * from mahal_temp order by mahal');
mahal_aq.Open;

mahal.Clear;
mahal_aq.First;
for i:=1 to mahal_aq.RecordCount do
                      begin
                        mahal.Items.Add(mahal_aq['mahal']);
                        mahal_aq.Next;
                       end;
fff:=False;
end;

procedure Tbarnameh_f.amalClick(Sender: TObject);
begin
if amal.Caption='À» ' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               barnameh_aq.Close;
                               barnameh_aq.SQL.Clear;
                               barnameh_aq.SQL.Add('select * from barnameh ');
                               barnameh_aq.SQL.Add('where (shomareh=:i0)');
                               barnameh_aq.Parameters[0].Value:=shomareh.Text;
                               barnameh_aq.Open;
                               if barnameh_aq.RecordCount>0 then begin
                                                                   Application.MessageBox('»«—‰«„Â «Ì »« «Ì‰ ‘„«—Â ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                   exit;
                                                                  end
                                else begin
                                       barnameh_aq.Close;
                                       barnameh_aq.SQL.Clear;
                                       barnameh_aq.SQL.Add('INSERT INTO barnameh(shomareh,sherkat,mahal_bar,mahal,kamion,tarikh,meghdarl,meghdark,havaleh,noe,masafat,kerayehl,kerayehk,sharh,username,hogh_melk)');
                                       barnameh_aq.SQL.Add('values (:i0,:i1,:i2,:i3,:i4,:i5,:i6,:i7,:i8,:i9,:i10,:i11,:i12,:i13,:i14,:i15)');
                                       barnameh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                                       barnameh_aq.Parameters[1].Value:=sherkat.Text;
                                       barnameh_aq.Parameters[2].Value:=mahal_bar.Text;
                                       barnameh_aq.Parameters[3].Value:=mahal.Text;
                                       barnameh_aq.Parameters[4].Value:=kamion.Text;
                                       barnameh_aq.Parameters[5].Value:=tarikh.EditText;
                                       barnameh_aq.Parameters[6].Value:=strtoint(meghdarl.Text);
                                       barnameh_aq.Parameters[7].Value:=strtoint(meghdark.Text);
                                       barnameh_aq.Parameters[8].Value:=strtoint(havaleh.Text);
                                       barnameh_aq.Parameters[9].Value:=noe.Text;
                                       barnameh_aq.Parameters[10].Value:=strtoint(masafat.Text);
                                       barnameh_aq.Parameters[11].Value:=StrToFloat(kerayehl.Text);
                                       barnameh_aq.Parameters[12].Value:=StrToFloat(kerayehk.Text);
                                       barnameh_aq.Parameters[13].Value:=sharh.Text;
                                       barnameh_aq.Parameters[14].Value:=main_u.current_user;
                                       barnameh_aq.Parameters[15].Value:=hogh_melk.Value;
                                       barnameh_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ »«—‰«„Â »« „Ê›ﬁÌ  À»  ê—œÌœ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               barnameh_aq.Close;
                               barnameh_aq.SQL.Clear;
                               barnameh_aq.SQL.Add('UPDATE Barnameh ');
                               barnameh_aq.SQL.Add('SET shomareh=:i0 , sherkat=:i1 , mahal_bar=:i2 , mahal=:i3 , kamion=:i4 , tarikh=:i5 , meghdarl=:i6 , meghdark=:i7 , havaleh=:i8 , noe=:i9 , masafat=:i10 , kerayehl=:i11 , kerayehk=:i12 , sharh=:i13 , username=:i14 , hogh_melk=:i15 ');
                               barnameh_aq.SQL.Add(' where (shomareh=:i16)');
                               barnameh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                               barnameh_aq.Parameters[1].Value:=sherkat.Text;
                               barnameh_aq.Parameters[2].Value:=mahal_bar.Text;
                               barnameh_aq.Parameters[3].Value:=mahal.Text;
                               barnameh_aq.Parameters[4].Value:=kamion.Text;
                               barnameh_aq.Parameters[5].Value:=tarikh.EditText;
                               barnameh_aq.Parameters[6].Value:=strtoint(meghdarl.Text);
                               barnameh_aq.Parameters[7].Value:=strtoint(meghdark.Text);
                               barnameh_aq.Parameters[8].Value:=strtoint(havaleh.Text);
                               barnameh_aq.Parameters[9].Value:=noe.Text;
                               barnameh_aq.Parameters[10].Value:=StrToInt64(masafat.Text);
                               barnameh_aq.Parameters[11].Value:=StrToFloat(kerayehl.Text);
                               barnameh_aq.Parameters[12].Value:=StrToFloat(kerayehk.Text);
                               barnameh_aq.Parameters[13].Value:=sharh.Text;
                               barnameh_aq.Parameters[14].Value:=main_u.current_user;                               
                               barnameh_aq.Parameters[15].Value:=hogh_melk.Value;
                               barnameh_aq.Parameters[16].Value:=strtoint(shomareh.Text);
                               barnameh_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                             end;

if amal.Caption='Õ–›' then begin
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       barnameh_aq.Close;
                                       barnameh_aq.SQL.Clear;
                                       barnameh_aq.SQL.Add('DELETE FROM Barnameh');
                                       barnameh_aq.SQL.Add(' where (shomareh=:i0)');
                                       barnameh_aq.Parameters[0].Value:=strtoint(shomareh.Text);
                                       barnameh_aq.ExecSQL;
                                       Application.MessageBox('Ìﬂ „Ê—œ Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
current_mashin:=kamion.Text;
current_ranandeh:=kamion.Text;
shomareh.SetFocus;
shomareh.Clear;
sherkat.Text:='';
mahal_bar.Text:='';
mahal.Clear;
kamion.Clear;
tarikh.Clear;
meghdarl.Clear;
meghdark.Clear;
havaleh.Clear;
//sh_ch.Clear;
masafat.Clear;
kerayehl.Clear;
kerayehk.Clear;
sharh.Clear;
hogh_melk.Clear;
//----------------------------------------------------------
Check_Taviz_Kala;
//----------------------------------------------------------

end;

procedure Tbarnameh_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tbarnameh_f.reffEnter(Sender: TObject);
begin
if fff then reffClick(sender);
mahal.SetFocus;
end;

procedure Tbarnameh_f.mahal_barExit(Sender: TObject);
begin
if mahal_bar.Text=''
      then
         begin
           Application.MessageBox('·ÿ›« „Õ· »«—êÌ—Ì —« „‘Œ’ ‰„«ÌÌœ','«Œÿ«—',0);
           mahal_bar.SetFocus;
          end;
end;

procedure Tbarnameh_f.mahal_barKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then reff.SetFocus;
end;

procedure Tbarnameh_f.mahal_barEnter(Sender: TObject);
begin
if amal.Caption='À» ' then mahal_bar.Text:='«‰»«— ‰Ÿ«„ÌÂ';
end;

procedure Tbarnameh_f.masafatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kerayehl.SetFocus;
end;

procedure Tbarnameh_f.masafatExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(masafat.Text,num,e);
if (masafat.Text='') or (e<>0) or (masafat.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« „Ì“«‰ „”«›  ÿÌ ‘œÂ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
      masafat.Clear;
      masafat.SetFocus;
     end;
end;

procedure Tbarnameh_f.meghdarkExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
val(meghdark.Text ,num ,e);
if (meghdark.Text='') or (e<>0) or (meghdark.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« „ﬁœ«— ’ÕÌÕÌ »—«Ì „ﬁœ«— »«— „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
      meghdark.Clear;
      meghdark.SetFocus;
     end;
end;

procedure Tbarnameh_f.meghdarkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then begin
                    noe.SetFocus;
                   end;
end;

procedure Tbarnameh_f.mahalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
mahal.Height:=55;
end;

procedure Tbarnameh_f.kerayehlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then kerayehk.SetFocus;
end;

procedure Tbarnameh_f.kerayehlExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
{val(vartostr(kerayehl.value),num,e);
if (e<>0) or (kerayehl.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« ﬂ—«ÌÂ »«— —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
      kerayehl.Clear;
      kerayehl.SetFocus;
     end;}
end;

procedure Tbarnameh_f.barrasiClick(Sender: TObject);
begin
Check_Taviz_Kala;
end;

procedure Tbarnameh_f.sharhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tbarnameh_f.kamionExit(Sender: TObject);
begin
kamion_aq.Close;
kamion_aq.SQL.Clear;
kamion_aq.SQL.Add('select * from kamion where (mashin=:i0)');
kamion_aq.Parameters[0].Value:=kamion.Text;
kamion_aq.open;
kamion_aq.First;
if (kamion_aq.RecordCount<=0) or (kamion.Text='')
                        then begin
                              Application.MessageBox('·ÿ›« ﬂ«„ÌÊ‰ ‰ﬁ· ﬂ‰‰œÂ —«  ⁄ÌÌ‰ ‰„«ÌÌœ','«Œÿ«—',0);
                              kamion.SetFocus;
                              kamion.Clear;
                             end;
end;

procedure Tbarnameh_f.kerayehkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then hogh_melk.SetFocus;
end;

procedure Tbarnameh_f.kerayehkExit(Sender: TObject);
var
  num : int64;
  e : integer;
begin
{val(vartostr(kerayehk.Value),num,e);
if (e<>0) or (kerayehk.Text='0')
  then
    begin
      application.MessageBox('·ÿ›« ﬂ—«ÌÂ »«— —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',0);
      kerayehk.Clear;
      kerayehk.SetFocus;
     end;  }
end;


procedure Tbarnameh_f.kerayehlEnter(Sender: TObject);
begin
sherkat_aq.Close;
sherkat_aq.SQL.Clear;
sherkat_aq.SQL.Add('select * from sherkat ');
sherkat_aq.SQL.Add('where sherkat=' + chr(39) + sherkat.Text + chr(39));
sherkat_aq.Open;
if sherkat_aq.RecordCount>0 then
        kerayehl.Text:=vartostr(RoundTo(sherkat_aq['mablaghl']*strtoint64(meghdarl.Text),0))
                else kerayehl.Text:='0'; 
//--------------------------------------------------------------------------------------
if (sherkat.Text='Ã«»Ã«ÌÌ Õ›«—Ì') or (sherkat.Text='‰Ÿ«„ÌÂ Õ›«—Ì') or (sherkat.Text='„«Â‘Â— Õ›«—Ì') or (sherkat.Text='Õ›«—Ì') or (sherkat.Text='¬»«œ«‰ Õ›«—Ì')
  then kerayehl.Text:=VarToStr(RoundTo(StrToInt64(meghdark.Text)*(strtoint64(masafat.Text))*StrToFloat(setting_aq['hafari']),0));
end;

procedure Tbarnameh_f.kerayehkEnter(Sender: TObject);
begin
kerayehk.Text:=vartostr(RoundTo(sherkat_aq['mablaghk']*strtoint64(meghdark.Text),0));
//--------------------------------------------------------------------------------------
if (sherkat.Text='Ã«»Ã«ÌÌ Õ›«—Ì') or (sherkat.Text='‰Ÿ«„ÌÂ Õ›«—Ì') or (sherkat.Text='„«Â‘Â— Õ›«—Ì') or (sherkat.Text='Õ›«—Ì') or (sherkat.Text='¬»«œ«‰ Õ›«—Ì')
  then kerayehk.Text:=VarToStr(RoundTo(StrToInt64(meghdark.Text)*strtoint64(masafat.Text)*StrToFloat(setting_aq['hafari']),0));
end;

procedure Tbarnameh_f.hogh_melkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then sharh.SetFocus;
end;

procedure Tbarnameh_f.hogh_melkEnter(Sender: TObject);
begin
if (StrToInt64(masafat.Text)>0) and (StrToInt64(masafat.Text)<=100) then hogh_melk.Text:='50000';
if (StrToInt64(masafat.Text)>=101) and (StrToInt64(masafat.Text)<=150) then hogh_melk.Text:='60000';
if (StrToInt64(masafat.Text)>=151) and (StrToInt64(masafat.Text)<=250) then hogh_melk.Text:='90000';
if (StrToInt64(masafat.Text)>=251) and (StrToInt64(masafat.Text)<=350) then hogh_melk.Text:='120000';
if (StrToInt64(masafat.Text)>=351) then hogh_melk.Text:='150000';
end;

procedure Tbarnameh_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

procedure Tbarnameh_f.shomarehEnter(Sender: TObject);
var
  i : integer;
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

procedure Tbarnameh_f.noeEnter(Sender: TObject);
var
  i : integer;
begin
      noe.Clear;
      noe_bar_aq.Close;
      noe_bar_aq.SQL.Clear;
      noe_bar_aq.SQL.Add('Select * From noe_bar order by name');
      noe_bar_aq.Open;
      noe_bar_aq.First;
      for i:=1 to noe_bar_aq.RecordCount do
            begin
               noe.Items.Add(noe_bar_aq['name']);
               noe_bar_aq.Next;
             end;
end;

end.

