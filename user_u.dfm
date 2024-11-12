object user_f: Tuser_f
  Left = 360
  Top = 328
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1578#1594#1610#1610#1585' '#1585#1605#1586' '#1608#1585#1608#1583' '#1576#1607' '#1576#1585#1606#1575#1605#1607
  ClientHeight = 166
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
  PixelsPerInch = 96
  TextHeight = 13
  object txtghadim: TLabel
    Left = 234
    Top = 15
    Width = 45
    Height = 19
    Caption = #1585#1605#1586' '#1602#1583#1610#1605
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtjadid: TLabel
    Left = 234
    Top = 58
    Width = 47
    Height = 19
    Caption = #1585#1605#1586' '#1580#1583#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtjadid2: TLabel
    Left = 234
    Top = 100
    Width = 79
    Height = 19
    Caption = #1578#1603#1585#1575#1585' '#1585#1605#1586' '#1580#1583#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object amal: TBitBtn
    Left = 179
    Top = 128
    Width = 96
    Height = 34
    Caption = #1578#1594#1610#1610#1585' '#1585#1605#1586
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 53
    Top = 128
    Width = 96
    Height = 34
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = exittClick
  end
  object ghadim: TEdit
    Left = 19
    Top = 15
    Width = 201
    Height = 27
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnExit = ghadimExit
    OnKeyDown = ghadimKeyDown
  end
  object jadid: TEdit
    Left = 19
    Top = 55
    Width = 201
    Height = 27
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnExit = jadidExit
    OnKeyDown = jadidKeyDown
  end
  object jadid2: TEdit
    Left = 19
    Top = 95
    Width = 201
    Height = 27
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
    OnExit = jadid2Exit
    OnKeyDown = jadid2KeyDown
  end
  object pass_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  *  from  pass')
    Left = 255
    Top = 128
  end
end
