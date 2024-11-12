object sula_mashin_f: Tsula_mashin_f
  Left = 331
  Top = 301
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1589#1608#1585#1578' '#1582#1585#1610#1583' '#1604#1608#1575#1586#1605' '#1605#1575#1588#1610#1606#1607#1575#1610' '#1605#1604#1603#1610
  ClientHeight = 217
  ClientWidth = 339
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
  object txtmashin: TLabel
    Left = 262
    Top = 22
    Width = 28
    Height = 18
    Caption = #1585#1575#1606#1606#1583#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh: TLabel
    Left = 262
    Top = 57
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
  object txtsharh: TLabel
    Left = 262
    Top = 90
    Width = 24
    Height = 18
    Caption = #1588#1585#1581
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmablagh: TLabel
    Left = 262
    Top = 122
    Width = 21
    Height = 18
    Caption = #1605#1576#1604#1594
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmahal: TLabel
    Left = 262
    Top = 154
    Width = 64
    Height = 18
    Caption = #1605#1581#1604' '#1578#1593#1605#1610#1585#1575#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object tarikh: TMaskEdit
    Left = 148
    Top = 53
    Width = 91
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
    TabOrder = 0
    Text = '    /  /  '
    OnExit = tarikhExit
    OnKeyDown = tarikhKeyDown
  end
  object exitt: TBitBtn
    Left = 54
    Top = 181
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 189
    Top = 181
    Width = 97
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = amalClick
  end
  object mahal: TEdit
    Left = 32
    Top = 149
    Width = 207
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
    OnExit = mahalExit
    OnKeyDown = mahalKeyDown
  end
  object mablagh: TMonyEdit
    Left = 32
    Top = 117
    Width = 207
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnExit = mablaghExit
    OnKeyDown = mablaghKeyDown
  end
  object mashin: TEdit
    Left = 32
    Top = 19
    Width = 207
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    OnExit = mashinExit
    OnKeyDown = mashinKeyDown
  end
  object sharh: TComboBox
    Left = 31
    Top = 86
    Width = 208
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
    TabOrder = 6
    OnExit = sharhExit
    OnKeyDown = sharhKeyDown
    Items.Strings = (
      #1602#1576#1590' '#1578#1604#1601#1606
      #1602#1576#1590' '#1570#1576
      #1602#1576#1590' '#1576#1585#1602
      #1602#1576#1590' '#1605#1608#1576#1575#1610#1604
      #1602#1576#1590' '#1711#1575#1586
      #1578#1575#1705#1587#1610' '#1587#1585#1608#1610#1587
      #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1581#1602#1608#1602
      #1575#1610#1575#1576' '#1608' '#1584#1607#1575#1576
      #1576#1610#1605#1607
      #1605#1608#1578#1608#1585
      #1583#1601#1585#1606#1587#1610#1575#1604' '#1593#1602#1576
      #1583#1601#1585#1606#1587#1610#1575#1604' '#1580#1604#1608
      #1711#1575#1585#1583#1608#1606#1711
      #1670#1585#1582
      #1711#1610#1585#1576#1705#1587
      #1576#1585#1602' '#1705#1575#1585#1610
      #1602#1587#1605#1578' '#1607#1608#1575
      #1662#1605#1662' '#1576#1575#1583)
  end
  object mashin_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kamion_Melki')
    Left = 14
    Top = 24
  end
  object sula_mashin_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sula_mashin')
    Left = 290
    Top = 180
  end
end
