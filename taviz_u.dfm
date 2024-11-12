object taviz_f: Ttaviz_f
  Left = 327
  Top = 353
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1578#1593#1608#1610#1590' '#1603#1575#1604#1575
  ClientHeight = 220
  ClientWidth = 353
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
  object exitt: TBitBtn
    Left = 55
    Top = 185
    Width = 105
    Height = 34
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 193
    Top = 185
    Width = 105
    Height = 34
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = amalClick
  end
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 346
    Height = 177
    BevelInner = bvLowered
    TabOrder = 2
    object txtmashin: TLabel
      Left = 211
      Top = 12
      Width = 65
      Height = 18
      Caption = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtkala: TLabel
      Left = 211
      Top = 81
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
    object txtmasafat: TLabel
      Left = 211
      Top = 115
      Width = 125
      Height = 18
      Caption = #1605#1587#1575#1601#1578' '#1604#1575#1586#1605' '#1580#1607#1578' '#1578#1593#1608#1610#1590
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtmeghdar: TLabel
      Left = 211
      Top = 148
      Width = 71
      Height = 18
      Caption = #1605#1602#1583#1575#1585' '#1578#1593#1608#1610#1590#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtdaste_kala: TLabel
      Left = 211
      Top = 49
      Width = 61
      Height = 18
      Caption = #1606#1575#1605' '#1583#1587#1578#1607' '#1603#1575#1604#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object masafat: TEdit
      Left = 17
      Top = 110
      Width = 180
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
      OnExit = masafatExit
      OnKeyDown = masafatKeyDown
    end
    object meghdar: TEdit
      Left = 17
      Top = 143
      Width = 180
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
    object mashin: TEdit
      Left = 18
      Top = 13
      Width = 179
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
      OnExit = mashinExit
      OnKeyDown = mashinKeyDown
    end
    object daste_kala: TComboBox
      Left = 15
      Top = 45
      Width = 182
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
      TabOrder = 3
      OnEnter = daste_kalaEnter
      OnExit = daste_kalaExit
      OnKeyDown = daste_kalaKeyDown
    end
    object kala: TComboBox
      Left = 15
      Top = 77
      Width = 182
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
  end
  object taviz_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from taviz')
    Left = 305
    Top = 183
  end
  object mashin_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kamion_melki')
    Left = 39
    Top = 12
  end
  object kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Distinct kala from taviz')
    Left = 77
    Top = 80
  end
  object daste_kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from daste_kala')
    Left = 53
    Top = 48
  end
end
