object hesab_f: Thesab_f
  Left = 296
  Top = 223
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576#1607#1575
  ClientHeight = 226
  ClientWidth = 345
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
  object txtshomareh: TLabel
    Left = 248
    Top = 21
    Width = 69
    Height = 19
    Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtbank: TLabel
    Left = 248
    Top = 53
    Width = 39
    Height = 19
    Caption = #1606#1575#1605' '#1576#1575#1606#1603
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtshobeh: TLabel
    Left = 248
    Top = 85
    Width = 42
    Height = 19
    Caption = #1603#1583' '#1588#1593#1576#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtsaheb: TLabel
    Left = 248
    Top = 117
    Width = 88
    Height = 19
    Caption = #1606#1575#1605' '#1589#1575#1581#1576' '#1581#1587#1575#1576
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtman_aval: TLabel
    Left = 249
    Top = 152
    Width = 55
    Height = 19
    Caption = #1605#1575#1606#1583#1607' '#1575#1608#1604#1610#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object shobeh: TEdit
    Left = 65
    Top = 85
    Width = 153
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
    OnExit = shobehExit
    OnKeyDown = shobehKeyDown
  end
  object amal: TBitBtn
    Left = 201
    Top = 186
    Width = 105
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = amalClick
    OnKeyDown = amalKeyDown
  end
  object shomareh: TEdit
    Left = 65
    Top = 18
    Width = 153
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
    OnExit = shomarehExit
    OnKeyDown = shomarehKeyDown
  end
  object exitt: TBitBtn
    Left = 33
    Top = 185
    Width = 113
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = exittClick
  end
  object saheb: TComboBox
    Left = 66
    Top = 118
    Width = 153
    Height = 26
    Style = csDropDownList
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 18
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = #1570#1602#1575#1610' '#1603#1610#1608#1575#1606#1610
    OnKeyDown = sahebKeyDown
    Items.Strings = (
      #1570#1602#1575#1610' '#1603#1610#1608#1575#1606#1610
      #1588#1585#1603#1578' '#1603#1610#1608#1575#1606' '#1576#1575#1585' '#1580#1606#1608#1576)
  end
  object bank: TDBGrid_Edit
    Left = 45
    Top = 74
    Width = 193
    Height = 20
    TabStop = False
    BiDiMode = bdRightToLeft
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
    TabOrder = 1
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
    FieldCodeSearch = 'code'
    FieldStrSearch = 'bank'
    SQL = 'select * from bank'
    FieldReturn = 'code'
    Edit_Color = clInfoBk
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'bank'
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'shobeh'
        Width = 80
        Visible = True
      end>
  end
  object man_aval: TMonyEdit
    Left = 65
    Top = 151
    Width = 154
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnExit = man_avalExit
    OnKeyDown = man_avalKeyDown
  end
  object bank_ds: TDataSource
    DataSet = bank_aq
    Left = 35
    Top = 45
  end
  object bank_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Bank')
    Left = 5
    Top = 45
  end
  object shomareh_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hesab')
    Left = 304
    Top = 185
  end
end
