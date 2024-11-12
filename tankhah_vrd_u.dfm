object tankhah_vrd_f: Ttankhah_vrd_f
  Left = 283
  Top = 257
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583#1610' '#1578#1606#1582#1608#1575#1607
  ClientHeight = 283
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
  object txtmablagh: TLabel
    Left = 262
    Top = 81
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
  object txthesab: TLabel
    Left = 262
    Top = 149
    Width = 65
    Height = 18
    Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtsanad: TLabel
    Left = 262
    Top = 16
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
    Left = 262
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
  object txtbank: TLabel
    Left = 263
    Top = 116
    Width = 20
    Height = 18
    Caption = #1576#1575#1606#1603
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtshobeh: TLabel
    Left = 263
    Top = 184
    Width = 24
    Height = 18
    Caption = #1588#1593#1576#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtchek: TLabel
    Left = 263
    Top = 216
    Width = 50
    Height = 18
    Caption = #1588#1605#1575#1585#1607' '#1670#1603
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object shobeh: TEdit
    Left = 54
    Top = 180
    Width = 186
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
    OnExit = shobehExit
    OnKeyDown = shobehKeyDown
  end
  object hesab: TEdit
    Left = 55
    Top = 147
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
    TabOrder = 3
    OnExit = hesabExit
    OnKeyDown = hesabKeyDown
  end
  object mablagh: TMonyEdit
    Left = 55
    Top = 77
    Width = 185
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnEnter = mablaghEnter
    OnExit = mablaghExit
    OnKeyDown = mablaghKeyDown
  end
  object sanad: TEdit
    Left = 55
    Top = 14
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
    OnExit = sanadExit
    OnKeyDown = sanadKeyDown
  end
  object tarikh: TMaskEdit
    Left = 154
    Top = 45
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
    TabOrder = 1
    Text = '    /  /  '
    OnExit = tarikhExit
    OnKeyDown = tarikhKeyDown
  end
  object amal: TBitBtn
    Left = 191
    Top = 245
    Width = 105
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 47
    Top = 245
    Width = 105
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = exittClick
  end
  object bank: TDBGrid_Edit
    Left = 29
    Top = 136
    Width = 268
    Height = 15
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = clSkyBlue
    DataSource = bank_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = bankDrawColumnCell
    OnEnter = bankEnter
    OnKeyDown = bankKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'bank'
    FieldStrSearch = 'bank'
    SQL = 'select * from hesab'
    FieldReturn = 'bank'
    Edit_Color = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'shomareh'
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'shobeh'
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'bank'
        Width = 80
        Visible = True
      end>
  end
  object chek: TEdit
    Left = 54
    Top = 212
    Width = 186
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnExit = chekExit
    OnKeyDown = chekKeyDown
  end
  object bank_ds: TDataSource
    DataSet = bank_aq
    Left = 54
    Top = 110
  end
  object bank_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hesab')
    Left = 29
    Top = 110
  end
  object sanad_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tankhah_vrd')
    Left = 296
    Top = 249
  end
  object hesab_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Hesab')
    Left = 21
    Top = 154
  end
end
