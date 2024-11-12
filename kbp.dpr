program kbp;

uses
  Forms,
  Windows,
  dialogs,
  main_u in 'main_u.pas' {main_f},
  hazineh_u in 'hazineh_u.pas' {hazineh_f},
  Date_Assis in 'DATE_ASSIS.PAS',
  RAS2 in 'RAS2.PAS',
  ras in 'RAS.PAS',
  hazineh_search_u in 'hazineh_search_u.pas' {hazineh_search_f},
  user_u in 'user_u.pas' {user_f},
  hesab_u in 'hesab_u.pas' {hesab_f},
  bank_u in 'bank_u.pas' {bank_f},
  mahal_u in 'mahal_u.pas' {mahal_f},
  sherkat_u in 'sherkat_u.pas' {sherkat_f},
  kamion_u in 'kamion_u.pas' {kamion_f},
  residpk_u in 'residpk_u.pas' {residpk_f},
  havaleh_u in 'havaleh_u.pas' {havaleh_f},
  havaleh_jh_u in 'havaleh_jh_u.pas' {havaleh_jh_f},
  barnameh_u in 'barnameh_u.pas' {barnameh_f},
  rpt_sherkat_u in 'rpt_sherkat_u.pas' {rpt_sherkat_f},
  rpt_karmashin_u in 'rpt_karmashin_u.pas' {rpt_karmashin_f},
  hes_melk_u in 'hes_melk_u.pas' {hes_melk_f},
  rpt_hes_melk_u in 'rpt_hes_melk_u.pas' {rpt_hes_melk_f},
  person_u in 'person_u.pas' {person_f},
  tankhah_vrd_u in 'tankhah_vrd_u.pas' {tankhah_vrd_f},
  tankhah_vrd_search_u in 'tankhah_vrd_search_u.pas' {tankhah_vrd_search_f},
  taviz_u in 'taviz_u.pas' {taviz_f},
  anbarv_u in 'anbarv_u.pas' {anbarv_f},
  rpt_hogh_melk_u in 'rpt_hogh_melk_u.pas' {rpt_hogh_melk_f},
  vam_u in 'vam_u.pas' {vam_f},
  rpt_hes_esti_u in 'rpt_hes_esti_u.pas' {rpt_hes_esti_f},
  tasvieh_mashin_u in 'tasvieh_mashin_u.pas' {tasvieh_mashin_f},
  daftar_tel_u in 'daftar_tel_u.pas' {daftar_tel_f},
  megh_aval_sandoogh_u in 'megh_aval_sandoogh_u.pas' {megh_aval_sandoogh_f},
  havaleh_jc_u in 'havaleh_jc_u.pas' {havaleh_jc_f},
  sula_mashin_u in 'sula_mashin_u.pas' {sula_mashin_f},
  sula_anbar_u in 'sula_anbar_u.pas' {sula_anbar_f},
  rpt_sula_mashin_u in 'rpt_sula_mashin_u.pas' {rpt_sula_mashin_f},
  rpt_suriz_kilosherkat_u in 'rpt_suriz_kilosherkat_u.pas' {rpt_suriz_kilosherkat_f},
  anbarkh_u in 'anbarkh_u.pas' {anbarkh_f},
  rpt_hes_bank_u in 'rpt_hes_bank_u.pas' {rpt_hes_bank_f},
  rpt_anbar_u in 'rpt_anbar_u.pas' {rpt_anbar_f},
  daste_check_u in 'daste_check_u.pas' {daste_check_f},
  payaneh_sanad_u in 'payaneh_sanad_u.pas' {payaneh_sanad_f},
  payaneh_barnameh_u in 'payaneh_barnameh_u.pas' {payaneh_barnameh_f},
  rpt_payaneh_u in 'rpt_payaneh_u.pas' {rpt_payaneh_f},
  rpt_residpk_u in 'rpt_residpk_u.pas' {rpt_residpk_f},
  rpt_hes_pard_u in 'rpt_hes_pard_u.pas' {rpt_hes_pard_f},
  rpt_hes_person_u in 'rpt_hes_person_u.pas' {rpt_hes_person_f},
  rpt_payaneh_barnameh_u in 'rpt_payaneh_barnameh_u.pas' {rpt_payaneh_barnameh_f},
  rpt_hazineh_sherkat_u in 'rpt_hazineh_sherkat_u.pas' {rpt_hazineh_sherkat_f},
  rpt_vam_u in 'rpt_vam_u.pas' {rpt_vam_f},
  setting_u in 'setting_u.pas' {setting_f},
  about_sherkat_u in 'about_sherkat_u.pas' {about_sherkat_f},
  rpt_mojsan_u in 'rpt_mojsan_u.pas' {rpt_mojsan_f},
  rpt_payaneh_sanad_u in 'rpt_payaneh_sanad_u.pas' {rpt_payaneh_sanad_f},
  help_u in 'help_u.pas' {help_f},
  payaneh_mandeh_u in 'payaneh_mandeh_u.pas' {payaneh_mandeh_f},
  rpt_payaneh_mandeh_u in 'rpt_payaneh_mandeh_u.pas' {rpt_payaneh_mandeh_f},
  rpt_anbarv_u in 'rpt_anbarv_u.pas' {rpt_anbarv_f},
  daste_kala_u in 'daste_kala_u.pas' {daste_kala_f},
  rpt_anbarkh_u in 'rpt_anbarkh_u.pas' {rpt_anbarkh_f},
  hazineh_sherkat_u in 'hazineh_sherkat_u.pas' {hazineh_sherkat_f},
  noe_bar_u in 'noe_bar_u.pas' {noe_bar_f};

{$R *.res}
var
  Hmutex:THandle;

begin
Hmutex := CreateMutex(nil,False,'KeivanBar Jonoub');
if WaitForSingleObject(Hmutex,0) <> WAIT_TIMEOUT then
begin
  Application.Initialize;
  Application.BiDiKeyboard:='00000429';  // farsi kardane keyboard
  Application.CreateForm(Tmain_f, main_f);
  Application.Run;
  End
    {else
    ShowMessage('»—‰«„Â òÌÊ«‰ »«— œ— Õ«· Õ«÷— œ—Õ«· «Ã—«” '+#13+#13+'You Can See Application Icon In Taskbar!!!');}
end.
