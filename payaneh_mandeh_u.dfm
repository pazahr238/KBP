object payaneh_mandeh_f: Tpayaneh_mandeh_f
  Left = 340
  Top = 308
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1662#1575#1610#1575#1606#1607
  ClientHeight = 181
  ClientWidth = 308
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
  object txtmablagh: TLabel
    Left = 240
    Top = 115
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
  object txtsharh: TLabel
    Left = 240
    Top = 82
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
  object txtsanad: TLabel
    Left = 240
    Top = 17
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
    Left = 240
    Top = 50
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
  object sharh: TEdit
    Left = 39
    Top = 78
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
    OnExit = sharhExit
    OnKeyDown = sharhKeyDown
  end
  object mablagh: TMonyEdit
    Left = 39
    Top = 111
    Width = 185
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnExit = mablaghExit
    OnKeyDown = mablaghKeyDown
  end
  object sanad: TEdit
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
    OnExit = sanadExit
    OnKeyDown = sanadKeyDown
  end
  object tarikh: TMaskEdit
    Left = 138
    Top = 47
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
  object exitt: TBitBtn
    Left = 33
    Top = 144
    Width = 105
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 169
    Top = 144
    Width = 105
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = amalClick
  end
  object Payaneh_mandeh_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from payaneh_mandeh')
    Left = 274
    Top = 145
  end
end
