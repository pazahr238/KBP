object pass_f: Tpass_f
  Left = 300
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1576#1607' '#1606#1585#1605' '#1575#1601#1586#1575#1585
  ClientHeight = 93
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object txtpass: TLabel
    Left = 193
    Top = 27
    Width = 68
    Height = 18
    Caption = '  '#1606#1575#1605' '#1603#1575#1585#1576#1585#1610'  '
    Color = clYellow
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object pass: TEdit
    Left = 44
    Top = 23
    Width = 139
    Height = 26
    BiDiMode = bdRightToLeft
    Color = clYellow
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
  end
  object amal: TBitBtn
    Left = 153
    Top = 59
    Width = 89
    Height = 25
    Caption = #1608#1585#1608#1583' '#1576#1607' '#1587#1610#1587#1578#1605
    TabOrder = 1
  end
  object exitt: TBitBtn
    Left = 39
    Top = 59
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 2
  end
  object pass_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pass')
    Left = 21
    Top = 18
  end
end
