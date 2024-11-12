object daste_check_f: Tdaste_check_f
  Left = 328
  Top = 286
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1583#1587#1578#1607' '#1670#1705
  ClientHeight = 188
  ClientWidth = 321
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
  object txthesab: TLabel
    Left = 247
    Top = 20
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
  object txttarikh: TLabel
    Left = 247
    Top = 119
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
  object txtaz: TLabel
    Left = 247
    Top = 57
    Width = 44
    Height = 18
    Caption = #1575#1586' '#1588#1605#1575#1585#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtta: TLabel
    Left = 247
    Top = 89
    Width = 42
    Height = 18
    Caption = #1578#1575' '#1588#1605#1575#1585#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object exitt: TBitBtn
    Left = 37
    Top = 150
    Width = 97
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
  object amal: TBitBtn
    Left = 182
    Top = 150
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
  object tarikh: TMaskEdit
    Left = 143
    Top = 116
    Width = 83
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
  object az: TEdit
    Left = 63
    Top = 50
    Width = 163
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
    OnExit = azExit
    OnKeyDown = azKeyDown
  end
  object ta: TEdit
    Left = 63
    Top = 82
    Width = 163
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
    OnExit = taExit
    OnKeyDown = taKeyDown
  end
  object hesab: TDBGrid_Edit
    Left = 23
    Top = 41
    Width = 251
    Height = 15
    TabStop = False
    BiDiMode = bdRightToLeft
    Color = clSkyBlue
    DataSource = hesab_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = hesabDrawColumnCell
    OnEnter = hesabEnter
    OnKeyDown = hesabKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'shomareh'
    FieldStrSearch = 'bank'
    SQL = 'select * From Hesab'
    FieldReturn = 'shomareh'
    Edit_Color = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'bank'
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shomareh'
        Width = 100
        Visible = True
      end>
  end
  object hesab_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  * From Hesab')
    Left = 30
    Top = 11
  end
  object hesab_ds: TDataSource
    DataSet = hesab_aq
    Left = 54
    Top = 11
  end
  object daste_check_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from daste_check')
    Left = 280
    Top = 145
  end
end
