unit user_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  Tuser_f = class(TForm)
    amal: TBitBtn;
    exitt: TBitBtn;
    ghadim: TEdit;
    jadid: TEdit;
    jadid2: TEdit;
    txtghadim: TLabel;
    txtjadid2: TLabel;
    txtjadid: TLabel;
    pass_aq: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ghadimExit(Sender: TObject);
    procedure jadidExit(Sender: TObject);
    procedure jadid2Exit(Sender: TObject);
    procedure ghadimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jadidKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jadid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure amalClick(Sender: TObject);
    procedure exittClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user_f: Tuser_f;

implementation
uses main_u;

{$R *.dfm}

procedure Tuser_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure Tuser_f.ghadimExit(Sender: TObject);
begin
if exitt.Focused then exit;
if ghadim.Text='' then begin
                         Application.MessageBox('·ÿ›« —„“ ﬁœÌ„ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                         ghadim.SetFocus;
                        end;
end;

procedure Tuser_f.jadidExit(Sender: TObject);
begin
if jadid.Text='' then begin
                         Application.MessageBox('·ÿ›« —„“ ÃœÌœ —« Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
                         jadid.SetFocus;
                        end;
end;

procedure Tuser_f.jadid2Exit(Sender: TObject);
begin
if jadid2.Text='' then begin
                         Application.MessageBox(' —„“ ÃœÌœ —« »Â œ—” Ì  ﬂ—«— ‰ﬂ—œÂ «Ìœ',' ÊÃÂ',0);
                         jadid2.SetFocus;        
                        end;
end;

procedure Tuser_f.ghadimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then jadid.SetFocus;
end;

procedure Tuser_f.jadidKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then jadid2.SetFocus;
end;

procedure Tuser_f.jadid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=13 then amal.SetFocus;
end;

procedure Tuser_f.amalClick(Sender: TObject);
begin
if jadid.Text<>jadid2.Text
    then begin
           Application.MessageBox('—„“ ÃœÌœ »«  ﬂ—«— ¬‰ Â„ŒÊ«‰Ì ‰œ«—œ. ·ÿ›«  ﬂ—«— ¬‰—« œ—”  Ê«—œ ‰„«ÌÌœ',' ÊÃÂ',0);
           jadid2.SetFocus;
           exit;
          end
             else
                if Application.MessageBox('¬Ì« «“  €ÌÌ— —„“ «ÿ„Ì‰«‰ œ«—Ìœ ø','Â‘œ«—',MB_YESNO+MB_ICONWARNING)=mryes
    then begin
           pass_aq.Close;
           pass_aq.SQL.Clear;
           pass_aq.sql.Add('select * from pass ');
           pass_aq.sql.Add('where (name=:i0) and (pass=:i1)');
           pass_aq.Parameters[0].Value:=main_u.current_user;
           pass_aq.Parameters[1].Value:=ghadim.Text;
           pass_aq.Open;
           pass_aq.Edit;
           pass_aq['name']:=main_u.current_user;
           pass_aq['pass']:=jadid.Text;
           pass_aq.Post;
           Application.MessageBox('—„“ »« „Ê›ﬁÌ   €ÌÌ— Ì«› ',' ÊÃÂ',0);
           close;
          end;
end;

procedure Tuser_f.exittClick(Sender: TObject);
begin
close;
end;

procedure Tuser_f.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssshift]) and (Key = 27)
        then close;
end;

end.
