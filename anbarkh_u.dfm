object anbarkh_f: Tanbarkh_f
  Left = 361
  Top = 269
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1582#1585#1608#1580#1610' '#1575#1606#1576#1575#1585
  ClientHeight = 278
  ClientWidth = 323
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
  object amal: TBitBtn
    Left = 175
    Top = 242
    Width = 105
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 45
    Top = 242
    Width = 105
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = exittClick
  end
  object Panel1: TPanel
    Left = 5
    Top = 8
    Width = 313
    Height = 230
    BevelInner = bvLowered
    TabOrder = 2
    object txtkala: TLabel
      Left = 255
      Top = 75
      Width = 33
      Height = 18
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtmeghdar: TLabel
      Left = 253
      Top = 139
      Width = 26
      Height = 18
      Caption = #1605#1602#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 137
      Width = 67
      Height = 18
      Caption = #1578#1593#1583#1575#1583' '#1610#1575' '#1604#1610#1578#1585#1575#1688
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txttarikh: TLabel
      Left = 253
      Top = 170
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
    object txtsanad: TLabel
      Left = 253
      Top = 12
      Width = 52
      Height = 18
      Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtgh_vahed: TLabel
      Left = 253
      Top = 201
      Width = 53
      Height = 18
      Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 49
      Top = 199
      Width = 21
      Height = 18
      Caption = #1585#1610#1575#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtdaste_kala: TLabel
      Left = 254
      Top = 42
      Width = 44
      Height = 18
      Caption = #1583#1587#1578#1607' '#1603#1575#1604#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object txtmashin: TLabel
      Left = 253
      Top = 111
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
    object sanad: TEdit
      Left = 81
      Top = 8
      Width = 160
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
      OnExit = sanadExit
      OnKeyDown = sanadKeyDown
    end
    object meghdar: TEdit
      Left = 81
      Top = 134
      Width = 160
      Height = 26
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnExit = meghdarExit
      OnKeyDown = meghdarKeyDown
    end
    object tarikh: TMaskEdit
      Left = 155
      Top = 165
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
      TabOrder = 2
      Text = '    /  /  '
      OnExit = tarikhExit
      OnKeyDown = tarikhKeyDown
    end
    object gh_vahed: TMonyEdit
      Left = 80
      Top = 195
      Width = 161
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = gh_vahedExit
      OnKeyDown = gh_vahedKeyDown
    end
    object kala: TComboBox
      Left = 54
      Top = 71
      Width = 187
      Height = 26
      AutoDropDown = True
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnEnter = kalaEnter
      OnExit = kalaExit
      OnKeyDown = kalaKeyDown
    end
    object daste_kala: TComboBox
      Left = 54
      Top = 39
      Width = 187
      Height = 26
      AutoDropDown = True
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      OnEnter = daste_kalaEnter
      OnExit = daste_kalaExit
      OnKeyDown = daste_kalaKeyDown
    end
    object mashin: TEdit
      Left = 81
      Top = 103
      Width = 160
      Height = 26
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      OnExit = mashinExit
      OnKeyDown = mashinKeyDown
    end
  end
  object anbarkh_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from anbarkh')
    Left = 285
    Top = 245
  end
  object kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from anbarv')
    Left = 93
    Top = 80
  end
  object daste_kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  daste_kala')
    Left = 93
    Top = 48
  end
  object kamion_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kamion')
    Left = 95
    Top = 110
  end
end
