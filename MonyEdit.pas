unit MonyEdit;
(**********************************************)
(**** TMonyEdit Component Version 1.0 *********)
(**** 2002 By Ali Akhavan   *******************)
(* If you have any comment send me at *********)
(**** ***** Ali_Akhavan2@yahoo.com ************)
(**********************************************)

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TMonyEdit = class(TCustomEdit)
  private
    FValue : real;
    FAddChar : string;

    procedure SetValue(Value : real);

  protected
    function convert2(in_str:String):String;
    function convert1(input_str:String):String;
    function ReverseStr(Str:String):string;

    procedure CreateParams(var Params: TCreateParams); override;

    procedure DoExit; override;
    procedure DoEnter; override;

    procedure KeyPress(var Key: Char); override;

    procedure Change;override;

  public
    constructor Create(AOwner : TComponent);override;
  published
    property Value : real read FValue write SetValue;

    property AutoSelect;
    property AutoSize;
    property BorderStyle;
    property CharCase;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property ImeMode;
    property ImeName;
    property MaxLength;
    property OEMConvert;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PasswordChar;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;

  end;

  function GetNumber( Value : string; var Number : real ) : boolean;

procedure Register;

implementation

function TMonyEdit.ReverseStr(Str:String):string;
var
  bflen : integer;
  temp  : string;
  count : integer;
begin
  temp:='';
  bflen := length(str);
  for count := bflen downto 1 do
  begin
    temp := temp + str[count];
  end;
ReverseStr:=temp;
end;

function TMonyEdit.convert1(input_str:String):String;
var
  temp : String;
  len : real;
  i,x : integer;
begin
  temp :='';
  len := length(input_str);
  input_str := ReverseStr(Input_Str);

  x:= 1;
  i := 0;

while true do
begin
  if (i mod 3 = 0) and (i<>0) then
  begin
    temp := temp + '/';
    i := 0;
    continue;
  end
  else
  begin
    temp := temp + input_str[x];
    inc(x);
    if x > len then break;
  end;
  inc(i);
end;
convert1 := Reversestr(temp);
end;
{**********************************}
function TMonyEdit.convert2(in_str:String):String;
var
  temp : String;
  i,len : integer;
begin
  temp:='';
  len := length(in_str);
  for i:=1 to len do
  begin
    if in_str[i] <> '/' then
      temp := temp + in_str[i];
  end;
convert2:=temp;
end;

function GetNumber( Value : string; var Number : real ) : boolean;
var
  i : Integer;
  sNumber : string;
begin
   Result := true;
   for i := 1 to Length(Value) do begin
    case Value[i] of
      '0'..'9' : sNumber := sNumber + Value[i];
      '+','-'  : begin
        if i = 1 then
          sNumber := sNumber + Value[i]
        else
          Result := false;
    end;
    else
      if Value[i] = DecimalSeparator then
        sNumber := sNumber + Value[i]
      else if not ( Value[i] = ThousandSeparator ) then
        Result := false;
    end;
  end;

//  Number := StrToFloat(sNumber);
  if sNumber = '' then
     sNumber:='0';
  Number := StrToFloat (sNumber);

end;


constructor TMonyEdit.Create(AOwner : TComponent);
begin
  inherited;
  FValue := 0;
  FAddChar := '';
end;

procedure TMonyEdit.SetValue(Value : real);
var
temp : string;
begin
  FValue := Value;
  Temp := floatToStr(FValue);
  Text := convert1(Temp);
end;


procedure TMonyEdit.Change;
begin
  inherited;
{  i := 0;
  if Parent <> nil then begin
    i := GetSelStart;
    OldLength := Length(Text);
  end;

  if GetNumber(Text, FValue ) then
    Text := FormatFloat(Mask, FValue);

  if i > 0 then begin
    delta := Length(Text) - OldLength;
    SetSelStart(i + delta);
  end;                     }

end;

procedure TMonyEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style + ES_RIGHT;
end;

procedure TMonyEdit.DoExit;
begin
  inherited;
  GetNumber(Text, FValue );
  Text := convert1(floatToStr(FValue));
end;

procedure TMonyEdit.DoEnter;
begin
  //Text := IntToStr(FValue);
  Text := convert1(floatToStr(FValue));
  inherited;
  SelectAll;
end;


procedure TMonyEdit.KeyPress(var Key: Char);
var
  lAbort : boolean;
  i : real;
begin
  lAbort := true;
  case Key of
    '0'..'9' :  lAbort := false;
  end;
  if Key = DecimalSeparator then
    lAbort := false;

  if Ord(Key) = 8 then
    lAbort := false;

  i := GetSelStart;
  if (i = 0) and ((Key = '-') or (Key = '+')) then
    lAbort := false;

  if lAbort then begin
    Beep;
    Abort;
  end;

end;



procedure Register;
begin
  RegisterComponents('New Com', [TMonyEdit]);
end;
end.
