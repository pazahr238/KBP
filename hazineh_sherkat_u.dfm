object hazineh_sherkat_f: Thazineh_sherkat_f
  Left = 384
  Top = 365
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1588#1585#1603#1578
  ClientHeight = 96
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 323
    Height = 53
    BevelInner = bvLowered
    TabOrder = 0
    object txthazineh_sherkat: TLabel
      Left = 224
      Top = 18
      Width = 86
      Height = 18
      Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1588#1585#1603#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object hazineh_sherkat: TComboBox
      Left = 13
      Top = 15
      Width = 201
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
      TabOrder = 0
      OnEnter = hazineh_sherkatEnter
      OnExit = hazineh_sherkatExit
      OnKeyDown = hazineh_sherkatKeyDown
    end
  end
  object amal: TBitBtn
    Left = 179
    Top = 62
    Width = 87
    Height = 31
    Caption = #1606#1605#1575#1610#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 66
    Top = 62
    Width = 88
    Height = 31
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = exittClick
  end
  object hazineh_sherkat_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hazineh_sherkat')
    Left = 268
    Top = 62
  end
end
