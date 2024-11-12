unit person_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Buttons, Grids, DBGrids, DBGrid_Edit,
  MonyEdit;

type
  Tperson_f = class(TForm)
    exitt: TBitBtn;
    amal: TBitBtn;
    person_aq: TADOQuery;
    txtname: TLabel;
    txttel: TLabel;
    txttozih: TLabel;
    tel: TEdit;
    tozih: TEdit;
    name: TDBGrid_Edit;
    person_ds: TDataSource;
    mandeh: TMonyEdit;
    Label3: TLabel;
    txtmandeh: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exittClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure telKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tozihKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure nameDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mandehKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  person_f: Tperson_f;

implementation
uses main_u;

{$R *.dfm}

procedure Tperson_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure Tperson_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tperson_f.FormShow(Sender: TObject);
begin
name.Edit_Search.SetFocus;
name.BiDiMode:=bdRightToLeft;
name.Edit_Search.Ctl3D:=false;
mandeh.BiDiMode:=bdRightToLeft;
end;

procedure Tperson_f.telKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then tozih.SetFocus;
end;

procedure Tperson_f.tozihKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then mandeh.SetFocus;
end;

procedure Tperson_f.nameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=13) then begin
                   if (name.Edit_Search.Text<>'') then
                     begin
                          if amal.Caption<>'«÷«›Â' then

                             begin
                             if name.Is_Find_Field then
                              begin
                                if amal.Caption='Õ–›' then amal.SetFocus
                                      else tel.SetFocus;
                                tel.Text:=person_aq['tel'];
                                tozih.Text:=person_aq['tozih'];
                                mandeh.Value:=person_aq['mandeh'];
                               end
                                else begin
                                        Application.MessageBox('„Ê—œÌ ÅÌœ« ‰‘œ',' ÊÃÂ',0);
                                        name.Edit_Search.SetFocus;
                                        name.Edit_Search.Clear;
                                      end;
                              end

                                else begin  // else of amal.Caption<>'«÷«›Â'
                                       if name.Is_Find_Field then
                                         begin
                                           Application.MessageBox('«Ì‰ ‰«„ ﬁ»·« À»  ‘œÂ «” ','«Œÿ«—',0);
                                           name.Edit_Search.SetFocus;
                                           name.Edit_Search.Clear;
                                          end
                                            else begin
                                                   tel.SetFocus;
                                                   name.Hide;
                                                  end;
                                      end;
                      end
                        else begin
                              Application.MessageBox('·ÿ›« ‰«„ ‘Œ’ —« Ê«—œ ‰„«ÌÌœ','«Œÿ«—',0);
                              name.Edit_Search.Clear;
                              name.Edit_Search.SetFocus;
                             end;
                  end;
end;

procedure Tperson_f.amalClick(Sender: TObject);
begin
if amal.Caption='«÷«›Â' then begin
                               ///////////// check kardane recorde jadid baraye jologiri az ezafe shodane tekrari
                               if name.Edit_Search.Text='' then exit;
                               person_aq.Close;
                               person_aq.SQL.Clear;
                               person_aq.SQL.Add('select * from Person ');
                               person_aq.SQL.Add('where (name=:i0)');
                               person_aq.Parameters[0].Value:=name.Edit_Search.Text;
                               person_aq.Open;
                               if person_aq.RecordCount>0 then begin
                                                                 Application.MessageBox('‘Œ’Ì »« «Ì‰ „‘Œ’«  ﬁ»·« À»  ‘œÂ «” ',' ÊÃÂ',0);
                                                                 exit;
                                                                end
                                else begin
                                       person_aq.Close;
                                       person_aq.SQL.Clear;
                                       person_aq.SQL.Add('INSERT INTO Person(name,tel,tozih,mandeh) ');
                                       person_aq.SQL.Add('values (:i0,:i1,:i2,:i3)');
                                       person_aq.Parameters[0].Value:=name.Edit_Search.Text;
                                       person_aq.Parameters[1].Value:=tel.Text;
                                       person_aq.Parameters[2].Value:=tozih.Text;
                                       person_aq.Parameters[3].Value:=mandeh.Value;
                                       person_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ «›“ÊœÂ ‘œ',' ÊÃÂ',MB_OK+MB_ICONINFORMATION);
                                     end;
                              end;
if amal.Caption=' €ÌÌ—'then begin
                               if not name.Is_Find_Field then exit;
                               person_aq.Close;
                               person_aq.SQL.Clear;
                               person_aq.SQL.Add('UPDATE Person ');
                               person_aq.SQL.Add('SET name=:i0 , tel=:i1 , tozih=:i2 , mandeh=:i3 ');
                               person_aq.SQL.Add(' where (name=:i4)');
                               person_aq.Parameters[0].Value:=name.Edit_Search.Text;
                               person_aq.Parameters[1].Value:=tel.Text;
                               person_aq.Parameters[2].Value:=tozih.Text;
                               person_aq.Parameters[3].Value:=mandeh.Value;
                               person_aq.Parameters[4].Value:=name.Edit_Search.Text;
                               person_aq.ExecSQL;
                               Application.MessageBox('Ìﬂ „Ê—œ  €ÌÌ— Ì«› ',' ÊÃÂ',MB_OK+MB_ICONEXCLAMATION);
                               close;
                             end;
if amal.Caption='Õ–›' then begin
                              if not name.Is_Find_Field then exit;
                              if Application.MessageBox('¬Ì« «“ Õ–› «Ì‰ „Ê—œ «ÿ„Ì‰«‰ œ«—Ìœ ø','«Œÿ«—',MB_YESNO + MB_ICONQUESTION) = mrYes
                                then begin
                                       person_aq.Close;
                                       person_aq.SQL.Clear;
                                       person_aq.SQL.Add('DELETE FROM Person');
                                       person_aq.SQL.Add(' where (name=:i0)');
                                       person_aq.Parameters[0].Value:= name.Edit_Search.Text;
                                       person_aq.ExecSQL;
                                       Application.MessageBox('Ìò „Ê—œ Õ–› ‘œ',' ÊÃÂ',MB_OK+MB_ICONSTOP);
                                      end;
                            end;
name.Edit_Search.Clear;
tel.Clear;
tozih.Clear;
mandeh.Clear;
name.Edit_Search.SetFocus;
////////////////////////////////////// end of amal click ////////////////////////////////
end;

procedure Tperson_f.nameDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
name.Height:=55;
end;

procedure Tperson_f.mandehKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tperson_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
