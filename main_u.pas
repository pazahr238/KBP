unit main_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, XPMenu, ComCtrls, WinSkinData, WinSkinForm,
  ExtCtrls, ToolWin, ActnMan, ActnCtrls, ActnMenus, XPStyleActnCtrls , registry,
  ActnList, CustomizeDlg, DB, ADODB, StdActns, jpeg, frxClass, frxDBSet,
  ImgList, OleCtrls, Buttons,
  Mask, FileCtrl;

type
  Tmain_f = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Save1: TMenuItem;
    Exit1: TMenuItem;
    Edit3: TMenuItem;
    Paste1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N22: TMenuItem;
    StatusBar1: TStatusBar;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    N40: TMenuItem;
    N50: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    ActionToolBar1: TActionToolBar;
    MainConnection: TADOConnection;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    Image1: TImage;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N78: TMenuItem;
    N82: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    Anbar_Mojoudi_aq: TADOQuery;
    Anbar_Mojoudi_db: TfrxDBDataset;
    N90: TMenuItem;
    N91: TMenuItem;
    N21: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N83: TMenuItem;
    N94: TMenuItem;
    N96: TMenuItem;
    pass_aq: TADOQuery;
    pass: TEdit;
    txtpass: TLabel;
    Prog_time: TTimer;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N95: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N84: TMenuItem;
    N101: TMenuItem;
    rpt_anbar_mojoudi: TfrxReport;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N62: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    daftar_tel_aq: TADOQuery;
    daftar_tel_DB: TfrxDBDataset;
    rpt_daftar_tel: TfrxReport;
    N112: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    a_aq: TADOQuery;
    a_db: TfrxDBDataset;
    k_db: TfrxDBDataset;
    k_aq: TADOQuery;
    t_db: TfrxDBDataset;
    t_aq: TADOQuery;
    s_db: TfrxDBDataset;
    s_aq: TADOQuery;
    m_db: TfrxDBDataset;
    m_aq: TADOQuery;
    h_db: TfrxDBDataset;
    h_aq: TADOQuery;
    rpt_a: TfrxReport;
    rpt_k: TfrxReport;
    N120: TMenuItem;
    N121: TMenuItem;
    N122: TMenuItem;
    N123: TMenuItem;
    N124: TMenuItem;
    N125: TMenuItem;
    rpt_t: TfrxReport;
    rpt_s: TfrxReport;
    rpt_m: TfrxReport;
    rpt_h: TfrxReport;
    txtuser: TLabel;
    user: TComboBox;
    N126: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N132: TMenuItem;
    N133: TMenuItem;
    N134: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    N138: TMenuItem;
    N139: TMenuItem;
    N140: TMenuItem;
    N141: TMenuItem;
    N142: TMenuItem;
    d_aq: TADOQuery;
    d_db: TfrxDBDataset;
    rpt_d: TfrxReport;
    N143: TMenuItem;
    N144: TMenuItem;
    N145: TMenuItem;
    N146: TMenuItem;
    N147: TMenuItem;
    N148: TMenuItem;
    N149: TMenuItem;
    N150: TMenuItem;
    ImageList1: TImageList;
    N151: TMenuItem;
    N152: TMenuItem;
    N153: TMenuItem;
    sal: TComboBox;
    N154: TMenuItem;
    N155: TMenuItem;
    N156: TMenuItem;
    N157: TMenuItem;
    N158: TMenuItem;
    N159: TMenuItem;
    N160: TMenuItem;
    N161: TMenuItem;
    txtamaliatesal: TLabel;
    Skn: TSkinData;
    New_Year_conn: TADOConnection;
    N162: TMenuItem;
    N163: TMenuItem;
    New_Year_qu: TADOQuery;
    N164: TMenuItem;
    N165: TMenuItem;
    N166: TMenuItem;
    N167: TMenuItem;
    N169: TMenuItem;
    N170: TMenuItem;
    N171: TMenuItem;
    dk_aq: TADOQuery;
    dk_db: TfrxDBDataset;
    rpt_dk: TfrxReport;
    N168: TMenuItem;
    N172: TMenuItem;
    N173: TMenuItem;
    N174: TMenuItem;
    N175: TMenuItem;
    New_Year_cmd: TADOCommand;
    dlb: TDirectoryListBox;
    flb: TFileListBox;
    N176: TMenuItem;
    N177: TMenuItem;
    N178: TMenuItem;
    NewYear_Script: TMemo;

    function  MyExitWindows(RebootParam: Longword): Boolean;
    procedure Check_Delete(shomareh_check,hsb:string);
    function  Check_Valid(shomareh_check,hsb:string): int64;
    function  code_generator( tbl , fld :string ):int64;
    function  check_date(tarikh:string) : boolean;
    function  i_s_mp(a:integer):string;
    function  s_i_mp(a:string):integer;
    procedure FormShow(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N67Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N88Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N94Click(Sender: TObject);
    procedure N96Click(Sender: TObject);
    procedure passKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Prog_timeTimer(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure N98Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure N106Click(Sender: TObject);
    procedure N107Click(Sender: TObject);
    procedure N108Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N109Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N117Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure N125Click(Sender: TObject);
    procedure userKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure userExit(Sender: TObject);
    procedure N127Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N138Click(Sender: TObject);
    procedure N139Click(Sender: TObject);
    procedure N140Click(Sender: TObject);
    procedure N135Click(Sender: TObject);
    procedure N136Click(Sender: TObject);
    procedure N137Click(Sender: TObject);
    procedure N134Click(Sender: TObject);
    procedure N142Click(Sender: TObject);
    procedure N144Click(Sender: TObject);
    procedure N146Click(Sender: TObject);
    procedure N147Click(Sender: TObject);
    procedure N149Click(Sender: TObject);
    procedure N150Click(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure N152Click(Sender: TObject);
    procedure N153Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N155Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N157Click(Sender: TObject);
    procedure N158Click(Sender: TObject);
    procedure N159Click(Sender: TObject);
    procedure N161Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N162Click(Sender: TObject);
    procedure N165Click(Sender: TObject);
    procedure N167Click(Sender: TObject);
    procedure N169Click(Sender: TObject);
    procedure N171Click(Sender: TObject);
    procedure N172Click(Sender: TObject);
    procedure N174Click(Sender: TObject);
    procedure N175Click(Sender: TObject);
    procedure N177Click(Sender: TObject);
    procedure N178Click(Sender: TObject);
    procedure salKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_f: Tmain_f;
  noe_havaleh_afzoodan : string;
  pt : integer;
  current_mashin : string;
  current_hazineh : string;
  fff : boolean;
  current_user : string;
  saalejadid : string;
  f : textfile;

implementation
    uses hazineh_u,ras2,ras,date_assis, hazineh_search_u , user_u , hesab_u
    , bank_u , mahal_u , sherkat_u , kamion_u , residpk_u , havaleh_u , havaleh_jh_u
    , barnameh_u , rpt_sherkat_u , rpt_karmashin_u , hes_melk_u , rpt_hes_melk_u
    , person_u , tankhah_vrd_u , tankhah_vrd_search_u , taviz_u , anbarv_u
    , rpt_hogh_melk_u , vam_u , rpt_hes_esti_u , daftar_tel_u , megh_aval_sandoogh_u
    , havaleh_jc_u , sula_mashin_u , sula_anbar_u , rpt_sula_mashin_u
    , rpt_suriz_kilosherkat_u , anbarkh_u , rpt_hes_bank_u , rpt_anbar_u , daste_check_u
    , payaneh_sanad_u , payaneh_barnameh_u , rpt_payaneh_u , rpt_residpk_u , rpt_hes_pard_u
    , rpt_hes_person_u ,rpt_payaneh_barnameh_u , rpt_hazineh_sherkat_u , rpt_vam_u
    , setting_u , about_sherkat_u , rpt_mojsan_u , rpt_payaneh_sanad_u , help_u
    , payaneh_mandeh_u , rpt_payaneh_mandeh_u , rpt_anbarv_u , rpt_anbarkh_u , daste_kala_u
    , hazineh_sherkat_u , noe_bar_u;
{$R *.dfm}

procedure FileReplaceString(FileName, searchstring, replacestring: string);
var 
  fs: TFileStream; 
  S: widestring;
begin
  fs := TFileStream.Create(FileName, fmOpenread or fmShareDenyNone);
  try
    SetLength(S, fs.Size);
    fs.ReadBuffer(S[1], fs.Size);
  s[1]:=chr(127);
  finally
    fs.Free;
  end;
  S  := StringReplace(S, SearchString, replaceString, [rfReplaceAll, rfIgnoreCase]);
  fs := TFileStream.Create(FileName, fmCreate);
  try
    fs.WriteBuffer(S[1], Length(S));
  finally
    fs.Free;
  end; 
end;

function Tmain_f.MyExitWindows(RebootParam: Longword): Boolean;
var
  TTokenHd: THandle;
  TTokenPvg: TTokenPrivileges;
  cbtpPrevious: DWORD;
  rTTokenPvg: TTokenPrivileges;
  pcbtpPreviousRequired: DWORD;
  tpResult: Boolean;
const
  SE_SHUTDOWN_NAME = 'SeShutdownPrivilege';
begin 
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin 
    tpResult := OpenProcessToken(GetCurrentProcess(), 
      TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
      TTokenHd); 
    if tpResult then 
    begin 
      tpResult := LookupPrivilegeValue(nil, 
                                       SE_SHUTDOWN_NAME, 
                                       TTokenPvg.Privileges[0].Luid);
      TTokenPvg.PrivilegeCount := 1;
      TTokenPvg.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;
      cbtpPrevious := SizeOf(rTTokenPvg); 
      pcbtpPreviousRequired := 0;
      if tpResult then 
        Windows.AdjustTokenPrivileges(TTokenHd, 
                                      False, 
                                      TTokenPvg, 
                                      cbtpPrevious, 
                                      rTTokenPvg, 
                                      pcbtpPreviousRequired); 
    end;
  end; 
  Result := ExitWindowsEx(RebootParam, 0); 
end; 

procedure Tmain_f.Check_Delete(shomareh_check,hsb:string);
var
   qu : TADOQuery;
begin
qu:=TADOQuery.Create(Main_f);
qu.Connection:=MainConnection;
qu.SQL.add('Select * from daste_check ');
qu.SQL.add('where (ta=' + IntToStr((strtoint64(shomareh_check) - 1)) + ') and (hesab=' + hsb + ')');
qu.Open;
if qu.RecordCount>0 then begin
                            ShowMessage('œ” Â çò »« ‘„«—Â Õ”«» '+ IntToStr(qu['hesab']) + ' «“ ‘„«—Â  '+ IntToStr(qu['az']) + '  « ‘„«—Â  '+ IntToStr(qu['ta']) + ' »Â œ·Ì· «” ›«œÂ «“  „«„ çòÂ« »«ÿ· ‘œ. ·ÿ›« «ﬁœ«„ »Â À»  œ” Â çò »⁄œÌ ‰„«ÌÌœ');
                            qu.Close;
                            qu.SQL.Clear;
                            qu.SQL.add('Delete from daste_check ');
                            qu.SQL.add('where (ta=' + IntToStr((strtoint64(shomareh_check) - 1)) + ') and (hesab=' + hsb + ')');
                            qu.ExecSQL;
                          end;
qu.Close;
qu.Free;
end;

function Tmain_f.Check_Valid(shomareh_check,hsb:string): int64;
var
   qu : TADOQuery;
begin
qu:=TADOQuery.Create(Main_f);
qu.Connection:=MainConnection;
qu.SQL.add('select * from daste_check ');
qu.SQL.add('where (' + shomareh_check + '<=ta) and ('+ shomareh_check +'>=az) and (hesab=' + hsb + ')');
qu.Open;
qu.First;
if qu.RecordCount=0
        then begin
                Application.MessageBox('‘„«—Â çò €Ì— „Ã«“ „Ì »«‘œ Ì« «Ì‰òÂ œ” Â çòÌ ÃÂ  À»  ¬‰ ÊÃÊœ ‰œ«—œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                result:=0;
               end
                 else begin
                       result:=qu['feli'];
                       if (strtoint64(shomareh_check)<qu['feli']) then begin
                                                                         application.MessageBox('«Ì‰ çò ﬁ»·« ò‘ÌœÂ ‘œÂ «” ',' ÊÃÂ',MB_ok+MB_ICONEXCLAMATION);
                                                                         result:=0;
                                                                        end;
                       if (strtoint64(shomareh_check)>qu['feli']) then begin
                                                                         ShowMessage('çò ‘„«—Â '+ IntToStr(qu['feli']) + 'ò‘ÌœÂ ‰‘œÂ «” . ·ÿ›« Ê÷⁄Ì  ¬‰ »——”Ì ‘Êœ');
                                                                         result:=0;
                                                                        end;
                       end;
qu.Close;
qu.Free;
end;

function Tmain_f.i_s_mp(a:integer):string;
begin
if a=0 then result:='’‰œÊﬁ';
if a=1 then result:='Õ”«» »«‰ﬂÌ';
end;

function Tmain_f.s_i_mp(a:string):integer;
begin
if a='’‰œÊﬁ' then result:=0;
if a='Õ”«» »«‰ﬂÌ' then result:=1;
end;

function Tmain_f.code_generator( tbl , fld :string ):int64;
var
   qu : TADOQuery;
begin
qu:=TADOQuery.Create(Main_f);
qu.Connection:=MainConnection;
qu.SQL.add('select max('+ fld +') as num from ' + tbl );
qu.ExecSQL;
qu.Open;
qu.First;
if VarIsNull(qu.FieldValues['num'])
     then result:=1
        else
     result := qu.FieldValues['num']  + 1 ;
qu.Close;
qu.Free;
end;

function Tmain_f.check_date(tarikh:string) : boolean;
begin
if pos('_',tarikh)>0 then check_date:=false
  else
  begin
    if (date_assis.Mon(tarikh)>0) and (date_assis.Mon(tarikh)<13) then check_date:=true else check_date:=false;

    if (date_assis.Mon(tarikh)>0) and (date_assis.Mon(tarikh)<7)
      then begin
            if (date_assis.Day(tarikh)>0) and (date_assis.Day(tarikh)<32) then check_date:=true else check_date:=false;
            end;

    if (date_assis.Mon(tarikh)>6) and (date_assis.Mon(tarikh)<13)
      then begin
            if (date_assis.Day(tarikh)>0) and (date_assis.Day(tarikh)<31) then check_date:=true else check_date:=false;
            end;
  end;
end;

procedure Tmain_f.FormShow(Sender: TObject);
begin
MainMenu.BiDiMode:=bdRightToLeft;
StatusBar1.BiDiMode:=bdRightToLeft;
StatusBar1.SimpleText:= '                           «„—Ê“ : ' + long_date_format + '                           ' + 'ÿ—«Õ Ê »—‰«„Â ‰ÊÌ” : ⁄·Ì Å«“Â—';
sal.ItemIndex:=StrToInt(date_assis.Str_Short_Year(long_date_format));
sal.SetFocus;
//if long_date_format>='1385/12/10' then Application.Terminate;

if (Screen.Width=1024) and (Screen.Height=768) then begin
                                                      //main_f.Position:=poDesktopCenter;
                                                      main_f.Top:=95;
                                                      main_f.Left:=130;
                                                     end;
if (Screen.Width=800) and (Screen.Height=600) then begin
                                                     main_f.Top:=0;
                                                     main_f.Left:=0;
                                                    end;
//dlb.Directory:=dlb.Directory + '\newyear';
//flb.Directory:=dlb.Directory;
end;

procedure Tmain_f.N23Click(Sender: TObject);
var
  hazineh_f : Thazineh_f;
begin
  hazineh_f := Thazineh_f.Create(Application);
  hazineh_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N24Click(Sender: TObject);
var
  hazineh_f : Thazineh_f;
begin
  hazineh_f := Thazineh_f.Create(Application);
  hazineh_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N25Click(Sender: TObject);
var
  hazineh_f : Thazineh_f;
begin
  hazineh_f := Thazineh_f.Create(Application);
  hazineh_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.Exit1Click(Sender: TObject);
begin
if Application.MessageBox('¬Ì« «“ »—‰«„Â Œ«—Ã „Ì ‘ÊÌœ ø','Œ—ÊÃ «“ »—‰«„Â ø',MB_YESNO+MB_ICONQUESTION)=mryes
  then Application.Terminate;
end;

procedure Tmain_f.N26Click(Sender: TObject);
var
  hazineh_search_f : Thazineh_search_f;
begin
  hazineh_search_f := Thazineh_search_f.Create(Application);
end;

procedure Tmain_f.N45Click(Sender: TObject);
var
  hesab_f : Thesab_f;
begin
  hesab_f := Thesab_f.Create(Application);
  hesab_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N46Click(Sender: TObject);
var
  hesab_f : Thesab_f;
begin
  hesab_f := Thesab_f.Create(Application);
  hesab_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N47Click(Sender: TObject);
var
  hesab_f : Thesab_f;
begin
  hesab_f := Thesab_f.Create(Application);
  hesab_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N49Click(Sender: TObject);
var
  bank_f : Tbank_f;
begin
  bank_f := Tbank_f.Create(Application);
  bank_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N51Click(Sender: TObject);
var
  bank_f : Tbank_f;
begin
  bank_f := Tbank_f.Create(Application);
  bank_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N39Click(Sender: TObject);
var
  sherkat_f : Tsherkat_f;
begin
  sherkat_f := Tsherkat_f.Create(Application);
  sherkat_f.amal.Caption:='«÷«›Â';
end;



procedure Tmain_f.N41Click(Sender: TObject);
var
  sherkat_f : Tsherkat_f;
begin
  sherkat_f := Tsherkat_f.Create(Application);
  sherkat_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N42Click(Sender: TObject);
var
  mahal_f : Tmahal_f;
begin
  mahal_f := Tmahal_f.Create(Application);
  mahal_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N43Click(Sender: TObject);
var
  mahal_f : Tmahal_f;
begin
  mahal_f := Tmahal_f.Create(Application);
  mahal_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N44Click(Sender: TObject);
var
  mahal_f : Tmahal_f;
begin
  mahal_f := Tmahal_f.Create(Application);
  mahal_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N34Click(Sender: TObject);
var
  user_f : Tuser_f;
begin
  user_f := Tuser_f.Create(Application);
end;

procedure Tmain_f.N36Click(Sender: TObject);
var
  kamion_f : Tkamion_f;
begin
  kamion_f := Tkamion_f.Create(Application);
  kamion_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N37Click(Sender: TObject);
var
  kamion_f : Tkamion_f;
begin
  kamion_f := Tkamion_f.Create(Application);
  kamion_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N38Click(Sender: TObject);
var
  kamion_f : Tkamion_f;
begin
  kamion_f := Tkamion_f.Create(Application);
  kamion_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N33Click(Sender: TObject);
var
  residpk_f : Tresidpk_f;
begin
  residpk_f := Tresidpk_f.Create(Application);
  residpk_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N50Click(Sender: TObject);
var
  havaleh_f : Thavaleh_f;
begin
  noe_havaleh_afzoodan:='0';
  havaleh_f := Thavaleh_f.Create(Application);
  havaleh_f.amal.Caption:='À» ';
  havaleh_f.ins.Caption:='Ê—Êœ';
  havaleh_f.hazf.Visible:=false;
  havaleh_f.h_index.Visible:=false;
  havaleh_f.txth_index.Visible:=false;
end;

procedure Tmain_f.N54Click(Sender: TObject);
var
  havaleh_jh_f : Thavaleh_jh_f;
begin
  havaleh_jh_f := Thavaleh_jh_f.Create(Application);
end;

procedure Tmain_f.N56Click(Sender: TObject);
var
  barnameh_f : Tbarnameh_f;
begin
  barnameh_f := Tbarnameh_f.Create(Application);
  barnameh_f.amal.Caption:='À» ';
end;

procedure Tmain_f.N57Click(Sender: TObject);
var
  barnameh_f : Tbarnameh_f;
begin
  barnameh_f := Tbarnameh_f.Create(Application);
  barnameh_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N58Click(Sender: TObject);
var
  barnameh_f : Tbarnameh_f;
begin
  barnameh_f := Tbarnameh_f.Create(Application);
  barnameh_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N22Click(Sender: TObject);
var
  rpt_sherkat_f : Trpt_sherkat_f;
begin
  rpt_sherkat_f := Trpt_sherkat_f.Create(Application);
end;

procedure Tmain_f.N59Click(Sender: TObject);
begin
winexec('calc.exe',0);
end;

procedure Tmain_f.N40Click(Sender: TObject);
var
  residpk_f : Tresidpk_f;
begin
  residpk_f := Tresidpk_f.Create(Application);
  residpk_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N35Click(Sender: TObject);
var
  residpk_f : Tresidpk_f;
begin
  residpk_f := Tresidpk_f.Create(Application);
  residpk_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N60Click(Sender: TObject);
var
  rpt_karmashin_f : Trpt_karmashin_f;
begin
  rpt_karmashin_f := Trpt_karmashin_f.Create(Application);
end;

procedure Tmain_f.N61Click(Sender: TObject);
var
  havaleh_f : Thavaleh_f;
begin
  noe_havaleh_afzoodan:='1';
  havaleh_f := Thavaleh_f.Create(Application);
  havaleh_f.amal.Caption:='À» ';
  havaleh_f.ins.Caption:='Ê—Êœ';
  havaleh_f.h_index.Visible:=True;
  havaleh_f.txth_index.Visible:=True;
end;

procedure Tmain_f.N63Click(Sender: TObject);
var
  hes_melk_f : Thes_melk_f;
begin
  hes_melk_f := Thes_melk_f.Create(Application);
  hes_melk_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N64Click(Sender: TObject);
var
  hes_melk_f : Thes_melk_f;
begin
  hes_melk_f := Thes_melk_f.Create(Application);
  hes_melk_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N69Click(Sender: TObject);
var
  rpt_hes_melk_f : Trpt_hes_melk_f;
begin
  rpt_hes_melk_f := Trpt_hes_melk_f.Create(Application);
end;

procedure Tmain_f.N67Click(Sender: TObject);
var
  person_f : Tperson_f;
begin
  person_f := Tperson_f.Create(Application);

  person_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N68Click(Sender: TObject);
var
  person_f : Tperson_f;
begin
  person_f := Tperson_f.Create(Application);
  person_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N71Click(Sender: TObject);
var
  tankhah_vrd_f : Ttankhah_vrd_f;
begin
  tankhah_vrd_f := Ttankhah_vrd_f.Create(Application);
  tankhah_vrd_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N72Click(Sender: TObject);
var
  tankhah_vrd_f : Ttankhah_vrd_f;
begin
  tankhah_vrd_f := Ttankhah_vrd_f.Create(Application);
  tankhah_vrd_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N73Click(Sender: TObject);
var
  tankhah_vrd_f : Ttankhah_vrd_f;
begin
  tankhah_vrd_f := Ttankhah_vrd_f.Create(Application);
  tankhah_vrd_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N75Click(Sender: TObject);
var
  tankhah_vrd_search_f : Ttankhah_vrd_search_f;
begin
  tankhah_vrd_search_f := Ttankhah_vrd_search_f.Create(Application);
end;

procedure Tmain_f.N80Click(Sender: TObject);
var
  taviz_f : Ttaviz_f;
begin
  taviz_f := Ttaviz_f.Create(Application);
  taviz_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N81Click(Sender: TObject);
var
  taviz_f : Ttaviz_f;
begin
  taviz_f := Ttaviz_f.Create(Application);
  taviz_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N78Click(Sender: TObject);
var
  anbarv_f : Tanbarv_f;
begin
  anbarv_f := Tanbarv_f.Create(Application);
  anbarv_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N82Click(Sender: TObject);
var
  anbarv_f : Tanbarv_f;
begin
  anbarv_f := Tanbarv_f.Create(Application);
  anbarv_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N85Click(Sender: TObject);
var
  rpt_hogh_melk_f : Trpt_hogh_melk_f;
begin
  rpt_hogh_melk_f := Trpt_hogh_melk_f.Create(Application);
end;

procedure Tmain_f.N88Click(Sender: TObject);
var
  vam_f : Tvam_f;
begin
  vam_f := Tvam_f.Create(Application);
  vam_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N89Click(Sender: TObject);
var
  vam_f : Tvam_f;
begin
  vam_f := Tvam_f.Create(Application);
  vam_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N90Click(Sender: TObject);
var
  sherkat_f : Tsherkat_f;
begin
  sherkat_f := Tsherkat_f.Create(Application);
  sherkat_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N91Click(Sender: TObject);
var
  rpt_hes_esti_f : Trpt_hes_esti_f;
begin
  rpt_hes_esti_f := Trpt_hes_esti_f.Create(Application);
end;

procedure Tmain_f.N20Click(Sender: TObject);
var
  rpt_mojsan_f : Trpt_mojsan_f;
begin
  rpt_mojsan_f := Trpt_mojsan_f.Create(Application);

{rpt_etebar_sandoogh.LoadFromFile('Etebar_Sandoogh.fr3');
etebar_sandoogh_aq.Close;
hazineh_aq.Close;
hazineh_aq.SQL.Clear;
hazineh_aq.SQL.Add('SELECT     sanad, tarikh, bank AS name, mablagh AS mablagh2, 0 AS mablagh, chek AS babat FROM   Tankhah_vrd ');
hazineh_aq.SQL.Add(' UNION ');
hazineh_aq.SQL.Add('(SELECT     sanad, tarikh, name, 0 AS mablagh2, mablagh, babat FROM  Hazineh) Order By tarikh ');
hazineh_aq.Open;
hazineh_aq.First;
etebar_sandoogh_aq.Open;
if (etebar_sandoogh_aq.RecordCount=0) or (etebar_sandoogh_aq['sandoogh']=0)
    then
      Application.MessageBox('„ÊÃÊœÌ «Ê·ÌÂ ’‰œÊﬁ ’›— «”  . ·ÿ›« «“ „‰ÊÌ «ÿ·«⁄«  Å«ÌÂ „ﬁœ«— «Ê·ÌÂ ’‰œÊﬁ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0)
    else
  rpt_etebar_sandoogh.ShowReport;}
end;

procedure Tmain_f.N94Click(Sender: TObject);
var
  daftar_tel_f : Tdaftar_tel_f;
begin
  daftar_tel_f := Tdaftar_tel_f.Create(Application);
  daftar_tel_f.amal.Caption:='«÷«›Â'
end;

procedure Tmain_f.N96Click(Sender: TObject);
var                                  
  daftar_tel_f : Tdaftar_tel_f;
begin
  daftar_tel_f := Tdaftar_tel_f.Create(Application);
  daftar_tel_f.amal.Caption:='Õ–›'
end;

procedure Tmain_f.passKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
     i : integer;
     str : widestring;
     s : string;
begin
if key=13 then begin
                //-------------- agar sal haye badi vared shavad ke hanuz be an nareside im ---------
                if StrToInt64(sal.Text) > StrToInt(date_assis.Str_Long_Year(long_date_format))
                        then begin
                               Application.MessageBox('Â‰Ê“ »Â  «—ÌŒ «‰ Œ«»Ì ‘„« ‰—”ÌœÂ «Ì„','«Œÿ«—',MB_OK + MB_ICONSTOP);
                               sal.SetFocus;
                               exit;
                              end;

                //------------------- check mikonad agar file entekhab shode vaghean vojud darad vasl shavad ----------
                New_Year_qu.Close;
                New_Year_qu.SQL.Clear;
                New_Year_qu.SQL.Add('select * from setting ');
                New_Year_qu.Open;
                New_Year_qu.First;
                s:=New_Year_qu['sqlserver_path'];
                if s='' then s:='E:\Microsoft SQL Server';
                New_Year_qu.Close;
                if not FileExists(s + '\MSSQL.1\MSSQL\Data\KBP' + IntToStr(strtoint(sal.Text) mod 100) + '.mdf' )
                        then begin
                                Application.MessageBox('«Ì‰ »«‰ﬂ Â‰Ê“ «ÌÃ«œ ‰‘œÂ «” . ·ÿ›« ”«· œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONSTOP);
                                sal.SetFocus;
                                exit;
                               end;

                //----------------dar surate vorude adade sale dorost etesal be DB ------------------
                MainConnection.Connected:=false;
                MainConnection.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=usr;Initial Catalog=KBP' + IntToStr((StrToInt64(sal.Text) mod 100)) + ';Data Source=station1;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=STATION1;Use Encryption for Data=False;Tag with column collation when possible=False';
                MainConnection.DefaultDatabase:='kbp' + IntToStr((StrToInt64(sal.Text) mod 100));
                MainConnection.Connected:=true;
                pass_aq.Open;
                pass_aq.First;
                pass_aq.MoveBy(user.ItemIndex);

                if pass_aq['pass']=pass.Text then
                                             begin
                                                Prog_time.Enabled:=false;
                                                //Application.MessageBox('»Â ‰—„ «›“«— ⁄„·Ì«  ”Ì” „ Ã«„⁄ ‘—ﬂ  ﬂÌÊ«‰ »«— Ã‰Ê» ŒÊ‘ ¬„œÌœ','ŒÊ‘ ¬„œ êÊÌÌ',MB_OK+MB_ICONINFORMATION);
                                                txtpass.Visible:=false;
                                                pass.Visible:=false;
                                                txtuser.Visible:=false;
                                                user.Visible:=false;
                                                sal.Visible:=false;
                                                current_user:=pass_aq['name'];
                                                for i:=0 to 6 do MainMenu.Items[i].Visible:=True;
                                                txtamaliatesal.Caption:='⁄„·Ì«  ”«· ' + sal.Text;
                                                txtamaliatesal.Visible:=True;
                                              end
                                     else begin
                                            Application.MessageBox('·ÿ›« —„“ ’ÕÌÕ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',MB_OK+MB_ICONEXCLAMATION);
                                            pass.SetFocus;
                                            pass.Clear;
                                           end;
                pass_aq.Close;
                end;
saalejadid:=IntToStr((StrToInt64(sal.Text) mod 100)+1);
end;

procedure Tmain_f.Prog_timeTimer(Sender: TObject);
begin
 pt:=pt+1;
 if pt=60 then begin
                Application.MessageBox('»—‰«„Â »Â ⁄·  ⁄œ„ Ê—Êœ —„“ ’ÕÌÕ »” Â ŒÊ«Âœ ‘œ','Œ—ÊÃ',0);
                Application.Terminate;
               end;
end;

procedure Tmain_f.N1Click(Sender: TObject);
var
  megh_aval_sandoogh_f : Tmegh_aval_sandoogh_f;
begin
  megh_aval_sandoogh_f := Tmegh_aval_sandoogh_f.Create(Application);
end;

procedure Tmain_f.N2Click(Sender: TObject);
var
  havaleh_f : Thavaleh_f;
begin
  noe_havaleh_afzoodan:='1';
  havaleh_f := Thavaleh_f.Create(Application);
  havaleh_f.amal.Caption:='Õ–› ›«ﬂ Ê—';
  havaleh_f.ins.Caption:='Ê—Êœ';
  havaleh_f.h_index.Visible:=True;
  havaleh_f.txth_index.Visible:=True;
end;

procedure Tmain_f.N6Click(Sender: TObject);
var
  sula_mashin_f : Tsula_mashin_f;
begin
  sula_mashin_f := Tsula_mashin_f.Create(Application);
  sula_mashin_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N7Click(Sender: TObject);
var
  sula_mashin_f : Tsula_mashin_f;
begin
  sula_mashin_f := Tsula_mashin_f.Create(Application);
  sula_mashin_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N95Click(Sender: TObject);
var
  sula_anbar_f : Tsula_anbar_f;
begin
  sula_anbar_f := Tsula_anbar_f.Create(Application);
  sula_anbar_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N97Click(Sender: TObject);
var
  sula_anbar_f : Tsula_anbar_f;
begin
  sula_anbar_f := Tsula_anbar_f.Create(Application);
  sula_anbar_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N98Click(Sender: TObject);
var
  havaleh_jc_f : Thavaleh_jc_f;
begin
  havaleh_jc_f := Thavaleh_jc_f.Create(Application);
end;

procedure Tmain_f.N100Click(Sender: TObject);
begin
rpt_anbar_mojoudi.LoadFromFile('anbar_mojoudi.fr3');
Anbar_Mojoudi_aq.Close;
Anbar_Mojoudi_aq.Open;
if Anbar_Mojoudi_aq.RecordCount=0
    then
      Application.MessageBox('„ÊÃÊœÌ «‰»«— Œ«·Ì «” ',' ÊÃÂ',0)
    else
  rpt_anbar_mojoudi.ShowReport;
end;

procedure Tmain_f.N101Click(Sender: TObject);
var
  rpt_sula_mashin_f : Trpt_sula_mashin_f;
begin
  rpt_sula_mashin_f := Trpt_sula_mashin_f.Create(Application);
end;

procedure Tmain_f.N102Click(Sender: TObject);
var
  hes_melk_f : Thes_melk_f;
begin
  hes_melk_f := Thes_melk_f.Create(Application);
  hes_melk_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N103Click(Sender: TObject);
var
  sula_mashin_f : Tsula_mashin_f;
begin
  sula_mashin_f := Tsula_mashin_f.Create(Application);
  sula_mashin_f.amal.Caption:='Ã” ÃÊ';
end;

procedure Tmain_f.N104Click(Sender: TObject);
var
  sula_anbar_f : Tsula_anbar_f;
begin
  sula_anbar_f := Tsula_anbar_f.Create(Application);
  sula_anbar_f.amal.Caption:='Ã” ÃÊ';
end;

procedure Tmain_f.N105Click(Sender: TObject);
var
  rpt_suriz_kilosherkat_f : Trpt_suriz_kilosherkat_f;
begin
  rpt_suriz_kilosherkat_f := Trpt_suriz_kilosherkat_f.Create(Application);
end;

procedure Tmain_f.N106Click(Sender: TObject);
var
  anbarkh_f : Tanbarkh_f;
begin
  anbarkh_f := Tanbarkh_f.Create(Application);
  anbarkh_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N107Click(Sender: TObject);
var
  anbarkh_f : Tanbarkh_f;
begin
  anbarkh_f := Tanbarkh_f.Create(Application);
  anbarkh_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N108Click(Sender: TObject);
var
  anbarkh_f : Tanbarkh_f;
begin
  anbarkh_f := Tanbarkh_f.Create(Application);
  anbarkh_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N19Click(Sender: TObject);
var
  rpt_hes_bank_f : Trpt_hes_bank_f;
begin
  rpt_hes_bank_f := Trpt_hes_bank_f.Create(Application);
end;

procedure Tmain_f.N109Click(Sender: TObject);
var
  rpt_anbar_f : Trpt_anbar_f;
begin
  rpt_anbar_f := Trpt_anbar_f.Create(Application);
end;

procedure Tmain_f.N111Click(Sender: TObject);
begin
rpt_daftar_tel.LoadFromFile('daftar_tel.fr3');
daftar_tel_aq.Close;
daftar_tel_aq.Open;
if daftar_tel_aq.RecordCount=0
    then
      Application.MessageBox('„Ê—œÌ œ— œ› —çÂ  ·›‰ À»  ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_daftar_tel.ShowReport;
end;

procedure Tmain_f.N112Click(Sender: TObject);
var
  taviz_f : Ttaviz_f;
begin
  taviz_f := Ttaviz_f.Create(Application);
  taviz_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N113Click(Sender: TObject);
var
  anbarv_f : Tanbarv_f;
begin
  anbarv_f := Tanbarv_f.Create(Application);
  anbarv_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N115Click(Sender: TObject);
begin
rpt_a.LoadFromFile('person.fr3');
a_aq.Close;
a_aq.Open;
if a_aq.RecordCount=0
    then
      Application.MessageBox('‘Œ’Ì  ⁄—Ì› ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_a.ShowReport;
end;

procedure Tmain_f.N117Click(Sender: TObject);
begin
rpt_k.LoadFromFile('kamion.fr3');
k_aq.Close;
k_aq.Open;
if k_aq.RecordCount=0
    then
      Application.MessageBox('„«‘Ì‰Ì  ⁄—Ì› ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_k.ShowReport;
end;

procedure Tmain_f.N119Click(Sender: TObject);
begin
rpt_t.LoadFromFile('taviz.fr3');
t_aq.Close;
t_aq.Open;
if t_aq.RecordCount=0
    then
      Application.MessageBox('«ÿ·«⁄« Ì »—«Ì  ⁄ÊÌ÷ ò«·«Ì „«‘Ì‰Â« À»  ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_t.ShowReport;
end;

procedure Tmain_f.N121Click(Sender: TObject);
begin
rpt_s.LoadFromFile('sherkat.fr3');
s_aq.Close;
s_aq.Open;
if s_aq.RecordCount=0
    then
      Application.MessageBox('‘—ò Ì  ⁄—Ì› ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_s.ShowReport;
end;

procedure Tmain_f.N123Click(Sender: TObject);
begin
rpt_m.LoadFromFile('mahal.fr3');
m_aq.Close;
m_aq.Open;
if m_aq.RecordCount=0
    then
      Application.MessageBox('„Õ·  Œ·ÌÂ «Ì  ⁄—Ì› ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_m.ShowReport;
end;

procedure Tmain_f.N125Click(Sender: TObject);
begin
rpt_h.LoadFromFile('hesab.fr3');
h_aq.Close;
h_aq.Open;
if h_aq.RecordCount=0
    then
      Application.MessageBox('Õ”«»Ì  ⁄—Ì› ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_h.ShowReport;
end;

procedure Tmain_f.userKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then pass.SetFocus;
end;

procedure Tmain_f.userExit(Sender: TObject);
begin
if user.Text='' then begin
                        Application.MessageBox('·ÿ›« ‰«„ ò«—»—Ì —« „‘Œ’ ‰„«ÌÌœ',' ÊÃÂ',MB_ok+MB_ICONEXCLAMATION);
                        user.Clear;
                        user.SetFocus;
                      end;
end;

procedure Tmain_f.N127Click(Sender: TObject);
var
  daste_check_f : Tdaste_check_f;
begin
  daste_check_f := Tdaste_check_f.Create(Application);
  daste_check_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N128Click(Sender: TObject);
var
  daste_check_f : Tdaste_check_f;
begin
  daste_check_f := Tdaste_check_f.Create(Application);
  daste_check_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N129Click(Sender: TObject);
var
  daste_check_f : Tdaste_check_f;
begin
  daste_check_f := Tdaste_check_f.Create(Application);
  daste_check_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N130Click(Sender: TObject);
begin
if Application.MessageBox('¬Ì« «“ Œ«„Ê‘ ò—œ‰ ò«„ÅÌÊ — «ÿ„Ì‰«‰ œ«—Ìœ ø',' ÊÃÂ',MB_YESNO + MB_ICONEXCLAMATION)=mryes
      then begin
             MyExitWindows(EWX_POWEROFF or EWX_FORCE);
            end;
end;

procedure Tmain_f.FormCreate(Sender: TObject);
Var
  Reg: TRegistry;
  I:Integer;
begin
for i:=0 to 6 do MainMenu.Items[i].Visible:=False; {
reg:=TRegistry.Create;
i:=0;
reg.RootKey:=HKEY_CURRENT_USER;
if reg.OpenKey('software\AP',false) = true then
              begin
                i:=reg.ReadInteger('count');
                if i>=250 then
                          begin
                            Application.MessageBox('«‘ò«· œ— «Ã—«Ì »—‰«„Â','«‘ò«·',MB_OK+MB_ICONERROR);
                            Application.Terminate;
                           end;
                i:=i+1;
                reg.WriteInteger('count',i);
               end
                else
                  begin
                      reg.OpenKey('software\AP',true);
                      reg.WriteInteger('count',1);
                   end;  }
end;

procedure Tmain_f.N138Click(Sender: TObject);
var
  payaneh_sanad_f : Tpayaneh_sanad_f;
begin
  payaneh_sanad_f := Tpayaneh_sanad_f.Create(Application);
  payaneh_sanad_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N139Click(Sender: TObject);
var
  payaneh_sanad_f : Tpayaneh_sanad_f;
begin
  payaneh_sanad_f := Tpayaneh_sanad_f.Create(Application);
  payaneh_sanad_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N140Click(Sender: TObject);
var
  payaneh_sanad_f : Tpayaneh_sanad_f;
begin
  payaneh_sanad_f := Tpayaneh_sanad_f.Create(Application);
  payaneh_sanad_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N135Click(Sender: TObject);
var
  payaneh_barnameh_f : Tpayaneh_barnameh_f;
begin
  payaneh_barnameh_f := Tpayaneh_barnameh_f.Create(Application);
  payaneh_barnameh_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N136Click(Sender: TObject);
var
  payaneh_barnameh_f : Tpayaneh_barnameh_f;
begin
  payaneh_barnameh_f := Tpayaneh_barnameh_f.Create(Application);
  payaneh_barnameh_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N137Click(Sender: TObject);
var
  payaneh_barnameh_f : Tpayaneh_barnameh_f;
begin
  payaneh_barnameh_f := Tpayaneh_barnameh_f.Create(Application);
  payaneh_barnameh_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N134Click(Sender: TObject);
var
  rpt_payaneh_f : Trpt_payaneh_f;
begin
  rpt_payaneh_f := Trpt_payaneh_f.Create(Application);
end;

procedure Tmain_f.N142Click(Sender: TObject);
begin
rpt_d.LoadFromFile('daste_check.fr3');
d_aq.Close;
d_aq.Open;
if d_aq.RecordCount=0
    then
      Application.MessageBox('œ” Â çòÌ  ⁄—Ì› ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_d.ShowReport;
end;

procedure Tmain_f.N144Click(Sender: TObject);
var
  rpt_residpk_f : Trpt_residpk_f;
begin
  rpt_residpk_f := Trpt_residpk_f.Create(Application);
end;

procedure Tmain_f.N146Click(Sender: TObject);
var
  rpt_hes_pard_f : Trpt_hes_pard_f;
begin
  rpt_hes_pard_f := Trpt_hes_pard_f.Create(Application);
end;

procedure Tmain_f.N147Click(Sender: TObject);
var
  rpt_hes_person_f : Trpt_hes_person_f;
begin
  rpt_hes_person_f := Trpt_hes_person_f.Create(Application);
end;

procedure Tmain_f.N149Click(Sender: TObject);
var
  rpt_payaneh_barnameh_f : Trpt_payaneh_barnameh_f;
begin
  rpt_payaneh_barnameh_f := Trpt_payaneh_barnameh_f.Create(Application);
end;

procedure Tmain_f.N150Click(Sender: TObject);
var
  rpt_hazineh_sherkat_f : Trpt_hazineh_sherkat_f;
begin
  rpt_hazineh_sherkat_f := Trpt_hazineh_sherkat_f.Create(Application);
end;

procedure Tmain_f.N151Click(Sender: TObject);
var
  person_f : Tperson_f;
begin
  person_f := Tperson_f.Create(Application);
  person_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N152Click(Sender: TObject);
var
  rpt_vam_f : Trpt_vam_f;
begin
  rpt_vam_f := Trpt_vam_f.Create(Application);
end;

procedure Tmain_f.N153Click(Sender: TObject);
var
  setting_f : Tsetting_f;
begin
  setting_f := Tsetting_f.Create(Application);
end;

procedure Tmain_f.N10Click(Sender: TObject);
var
  about_sherkat_f : Tabout_sherkat_f;
begin
  about_sherkat_f := Tabout_sherkat_f.Create(Application);
end;

procedure Tmain_f.N9Click(Sender: TObject);
begin
Application.MessageBox('‰—„ «›“«— ⁄„·Ì«  ”Ì” „ ‘—ò  òÌÊ«‰ »«— Ã‰Ê»' + chr(13) + chr(13) + '            ò«—Ì «“ : ⁄·Ì Å«“Â—' ,'œ—„Ê—œ »—‰«„Â',mb_ok+MB_ICONINFORMATION);
end;

procedure Tmain_f.N155Click(Sender: TObject);
var
  rpt_payaneh_sanad_f : Trpt_payaneh_sanad_f;
begin
  rpt_payaneh_sanad_f := Trpt_payaneh_sanad_f.Create(Application);
end;

procedure Tmain_f.N28Click(Sender: TObject);
var
  help_f : Thelp_f;
begin
  help_f := Thelp_f.Create(Application);
end;

procedure Tmain_f.N157Click(Sender: TObject);
var
  payaneh_mandeh_f : Tpayaneh_mandeh_f;
begin
  payaneh_mandeh_f := Tpayaneh_mandeh_f.Create(Application);
  payaneh_mandeh_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N158Click(Sender: TObject);
var
  payaneh_mandeh_f : Tpayaneh_mandeh_f;
begin
  payaneh_mandeh_f := Tpayaneh_mandeh_f.Create(Application);
  payaneh_mandeh_f.amal.Caption:=' €ÌÌ—';
end;

procedure Tmain_f.N159Click(Sender: TObject);
var
  payaneh_mandeh_f : Tpayaneh_mandeh_f;
begin
  payaneh_mandeh_f := Tpayaneh_mandeh_f.Create(Application);
  payaneh_mandeh_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N161Click(Sender: TObject);
var
  rpt_payaneh_mandeh_f : Trpt_payaneh_mandeh_f;
begin
  rpt_payaneh_mandeh_f := Trpt_payaneh_mandeh_f.Create(Application);
end;


procedure Tmain_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('¬Ì« «“ »—‰«„Â Œ«—Ã „Ì ‘ÊÌœ ø','Œ—ÊÃ «“ »—‰«„Â ø',MB_YESNO + MB_ICONQUESTION) = mryes
  then Application.Terminate
    else action:=canone;
end;

procedure Tmain_f.N162Click(Sender: TObject);
var
  a , s , x , y : string;
  txt : WideString;
  i , j : integer;
begin
New_Year_qu.Close;
New_Year_qu.SQL.Clear;
New_Year_qu.SQL.Add('select * from setting ');
New_Year_qu.Open;
New_Year_qu.First;
s:=New_Year_qu['sqlserver_path'];
if s='' then s:='E:\Microsoft SQL Server';
New_Year_qu.Close;

ShowMessage('‘„« „«Ì· »Â  ÂÌÂ »«‰ﬂ «ÿ·«⁄« Ì ”«· '+ inttostr(strtoint(sal.text)+1) +' Â” Ìœ ');
if Application.MessageBox('¬„«œÂ  ÂÌÂ »«‰ﬂ «ÿ·«⁄« Ì ”«· ÃœÌœ Â” Ìœø','”Ê«·',MB_YESNO+MB_ICONQUESTION)=mryes
    then begin
           if FileExists(s + '\MSSQL.1\MSSQL\Data\KBP' + saalejadid + '.mdf' )
                then Application.MessageBox('«Ì‰ »«‰ﬂ ﬁ»·« ”«Œ Â ‘œÂ «” ','«Œÿ«—',MB_OK+MB_ICONSTOP)
                    else begin
                            //------------ bank e khali sakhte mishavad -----------------
                           { New_Year_qu.Close;
                            New_Year_qu.SQL.Clear;
                            New_Year_qu.SQL.Add('CREATE DATABASE KBP' + saalejadid + ' ON ');
                            New_Year_qu.SQL.Add('( NAME = KBP' + saalejadid + ', FILENAME =' +chr(39) + s + '\MSSQL.1\MSSQL\Data\KBP' + saalejadid + '.mdf' +chr(39)+ ','); //baraye sql2000 : 'E:\Microsoft SQL Server\MSSQL\Data\KBP'
                            New_Year_qu.SQL.Add('   SIZE = 20MB,MAXSIZE = 70MB,FILEGROWTH = 5MB )');
                            New_Year_qu.ExecSQL;
                            //--------------- etesal be DB saale jadid ------------------
                            New_Year_conn.Connected:=false;
                            New_Year_conn.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=usr;Initial Catalog=KBP' + saalejadid + ';Data Source=station1;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=STATION1;Use Encryption for Data=False;Tag with column collation when possible=False';
                            New_Year_conn.DefaultDatabase:='KBP' + saalejadid;
                            New_Year_conn.Connected:=true;    }
                            //---------------------------- update saale script ha ----------
                               flb.Directory := flb.Directory + '\NewYear';
                               x := 'KBP' + IntToStr(StrToInt(sal.text) mod 100);
                               y := 'KBP' + saalejadid;
                             for i:=0 to flb.Items.Count-1 do
                                                        FileReplaceString(flb.Directory + '\' + flb.Items[i] , x , y);
                             //------------------- ejraye sql script ha ---------------------
                             {for i:=0 to flb.Items.Count-1 do
                                  begin
                                     winexec(Pchar(s + '\90\Tools\Binn\' + 'sqlcmd -i ' + flb.Directory + '\' + flb.Items[i]),0);
                                     //Sleep(3000);
                                   end;
                             //--------------- etesal be DB saale jaari ------------------
                              New_Year_conn.Connected:=false;
                              New_Year_conn.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;User ID=usr;Initial Catalog=KBP' + IntToStr((StrToInt64(sal.Text) mod 100)) + ';Data Source=station1;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=STATION1;Use Encryption for Data=False;Tag with column collation when possible=False';
                              New_Year_conn.DefaultDatabase:='KBP' + IntToStr((StrToInt64(sal.Text) mod 100));
                              New_Year_conn.Connected:=true; }
                              Application.MessageBox('⁄„·Ì«  »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',' ÊÃÂ',MB_OK + MB_ICONINFORMATION)
                          end;
          end;
end;

procedure Tmain_f.N165Click(Sender: TObject);
var
  rpt_anbarv_f : Trpt_anbarv_f;
begin
  rpt_anbarv_f := Trpt_anbarv_f.Create(Application);
end;

procedure Tmain_f.N167Click(Sender: TObject);
var
  daste_kala_f : Tdaste_kala_f;
begin
  daste_kala_f := Tdaste_kala_f.Create(Application);
  daste_kala_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N169Click(Sender: TObject);
var
  daste_kala_f : Tdaste_kala_f;
begin
  daste_kala_f := Tdaste_kala_f.Create(Application);
  daste_kala_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N171Click(Sender: TObject);
begin
rpt_dk.LoadFromFile('daste_kala.fr3');
dk_aq.Close;
dk_aq.Open;
if dk_aq.RecordCount=0
    then
      Application.MessageBox('œ” Â ﬂ«·«ÌÌ À»  ‰‘œÂ «” ',' ÊÃÂ',0)
    else
  rpt_dk.ShowReport;
end;

procedure Tmain_f.N172Click(Sender: TObject);
var
  rpt_anbarkh_f : Trpt_anbarkh_f;
begin
  rpt_anbarkh_f := Trpt_anbarkh_f.Create(Application);
end;

procedure Tmain_f.N174Click(Sender: TObject);
var
  hazineh_sherkat_f : Thazineh_sherkat_f;
begin
  hazineh_sherkat_f := Thazineh_sherkat_f.Create(Application);
  hazineh_sherkat_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N175Click(Sender: TObject);
var
  hazineh_sherkat_f : Thazineh_sherkat_f;
begin
  hazineh_sherkat_f := Thazineh_sherkat_f.Create(Application);
  hazineh_sherkat_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.N177Click(Sender: TObject);
var
  noe_bar_f : Tnoe_bar_f;
begin
  noe_bar_f := Tnoe_bar_f.Create(Application);
  noe_bar_f.amal.Caption:='«÷«›Â';
end;

procedure Tmain_f.N178Click(Sender: TObject);
var
  noe_bar_f : Tnoe_bar_f;
begin
  noe_bar_f := Tnoe_bar_f.Create(Application);
  noe_bar_f.amal.Caption:='Õ–›';
end;

procedure Tmain_f.salKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 m , e : integer;
begin
if key=13 then begin
                 Val(sal.Text , m ,e);
                 if e=0 then 
                        if (StrToInt64(sal.Text)>1469) or (StrToInt64(sal.Text)<1370)
                          then begin
                                  ShowMessage('·ÿ›« ”«· ﬂ«—Ì —« »Â œ—” Ì Ê«—œ ‰„«ÌÌœ');
                                  sal.SetFocus;
                                end
                                  else user.SetFocus;
                end;
end;

end.
