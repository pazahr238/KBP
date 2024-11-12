object hazineh_f: Thazineh_f
  Left = 344
  Top = 312
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1606#1582#1608#1575#1607
  ClientHeight = 219
  ClientWidth = 351
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
  object Panel1: TPanel
    Left = 7
    Top = 5
    Width = 337
    Height = 210
    BevelInner = bvLowered
    TabOrder = 0
    object txtmablagh: TLabel
      Left = 261
      Top = 78
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
    object txtbabat: TLabel
      Left = 261
      Top = 111
      Width = 22
      Height = 18
      Caption = #1576#1575#1576#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtsanad: TLabel
      Left = 261
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
    object txttarikh: TLabel
      Left = 261
      Top = 45
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
    object txtname: TLabel
      Left = 262
      Top = 142
      Width = 27
      Height = 18
      Caption = #1576#1607' '#1606#1575#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mablagh: TMonyEdit
      Left = 53
      Top = 74
      Width = 185
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = mablaghEnter
      OnExit = mablaghExit
      OnKeyDown = mablaghKeyDown
    end
    object sanad: TEdit
      Left = 53
      Top = 11
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
      TabOrder = 1
      OnEnter = sanadEnter
      OnExit = sanadExit
      OnKeyDown = sanadKeyDown
    end
    object amal: TBitBtn
      Left = 183
      Top = 171
      Width = 105
      Height = 33
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = amalClick
      OnEnter = amalEnter
      OnKeyDown = amalKeyDown
    end
    object exitt: TBitBtn
      Left = 48
      Top = 171
      Width = 105
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
    object tarikh: TMaskEdit
      Left = 152
      Top = 42
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
      TabOrder = 4
      Text = '    /  /  '
      OnExit = tarikhExit
      OnKeyDown = tarikhKeyDown
    end
    object babat: TComboBox
      Left = 53
      Top = 106
      Width = 185
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
      OnExit = babatExit
      OnKeyDown = babatKeyDown
      Items.Strings = (
        #1608#1575#1605' '#1583#1585#1610#1575#1601#1578#1610
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
    object name: TComboBox
      Left = 53
      Top = 139
      Width = 185
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
      OnEnter = nameEnter
      OnExit = nameExit
      OnKeyDown = nameKeyDown
    end
  end
  object sanad_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hazineh')
    Left = 294
    Top = 180
  end
  object person_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kamion')
    Left = 23
    Top = 146
  end
end
