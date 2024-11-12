object payaneh_barnameh_f: Tpayaneh_barnameh_f
  Left = 353
  Top = 254
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1576#1575#1585#1606#1575#1605#1607' '#1583#1601#1578#1585' '#1662#1575#1610#1575#1606#1607
  ClientHeight = 343
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object txtkerayeh: TLabel
    Left = 240
    Top = 117
    Width = 25
    Height = 18
    Caption = #1705#1585#1575#1610#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtnoebar: TLabel
    Left = 240
    Top = 281
    Width = 37
    Height = 18
    Caption = #1606#1608#1593' '#1576#1575#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtshomareh: TLabel
    Left = 240
    Top = 20
    Width = 68
    Height = 18
    Caption = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh: TLabel
    Left = 240
    Top = 51
    Width = 26
    Height = 18
    Caption = #1578#1575#1585#1610#1582
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmashin: TLabel
    Left = 240
    Top = 84
    Width = 31
    Height = 18
    Caption = #1605#1575#1588#1610#1606
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txthaghp: TLabel
    Left = 240
    Top = 150
    Width = 47
    Height = 18
    Caption = #1581#1602' '#1662#1575#1610#1575#1606#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtdaramad: TLabel
    Left = 240
    Top = 183
    Width = 26
    Height = 18
    Caption = #1583#1585#1570#1605#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmaghsad: TLabel
    Left = 240
    Top = 248
    Width = 28
    Height = 18
    Caption = #1605#1602#1589#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmabda: TLabel
    Left = 240
    Top = 216
    Width = 19
    Height = 18
    Caption = #1605#1576#1583#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object noebar: TEdit
    Left = 39
    Top = 278
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnExit = noebarExit
    OnKeyDown = noebarKeyDown
  end
  object kerayeh: TMonyEdit
    Left = 39
    Top = 114
    Width = 185
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnExit = kerayehExit
    OnKeyDown = kerayehKeyDown
  end
  object shomareh: TEdit
    Left = 39
    Top = 16
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnExit = shomarehExit
    OnKeyDown = shomarehKeyDown
  end
  object tarikh: TMaskEdit
    Left = 138
    Top = 48
    Width = 86
    Height = 26
    BiDiMode = bdRightToLeft
    EditMask = '!9999/99/99;1;_'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    Text = '    /  /  '
    OnExit = tarikhExit
    OnKeyDown = tarikhKeyDown
  end
  object mashin: TEdit
    Left = 39
    Top = 81
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnExit = mashinExit
    OnKeyDown = mashinKeyDown
  end
  object haghp: TMonyEdit
    Left = 39
    Top = 147
    Width = 185
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnEnter = haghpEnter
    OnExit = haghpExit
    OnKeyDown = haghpKeyDown
  end
  object daramad: TMonyEdit
    Left = 39
    Top = 179
    Width = 185
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnEnter = daramadEnter
    OnExit = daramadExit
    OnKeyDown = daramadKeyDown
  end
  object maghsad: TEdit
    Left = 39
    Top = 245
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    OnExit = maghsadExit
    OnKeyDown = maghsadKeyDown
  end
  object mabda: TEdit
    Left = 39
    Top = 212
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
    OnExit = mabdaExit
    OnKeyDown = mabdaKeyDown
  end
  object exitt: TBitBtn
    Left = 44
    Top = 307
    Width = 105
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 177
    Top = 307
    Width = 105
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = amalClick
  end
  object Payaneh_barnameh_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Payaneh_barnameh')
    Left = 282
    Top = 308
  end
end
