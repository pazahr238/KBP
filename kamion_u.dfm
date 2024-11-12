object kamion_f: Tkamion_f
  Left = 328
  Top = 287
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1605#1575#1588#1610#1606#1607#1575
  ClientHeight = 279
  ClientWidth = 326
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
    Left = 234
    Top = 15
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
  object txtranandeh: TLabel
    Left = 234
    Top = 53
    Width = 45
    Height = 18
    Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtzarfiat: TLabel
    Left = 234
    Top = 93
    Width = 76
    Height = 18
    Caption = #1592#1585#1601#1610#1578' '#1576#1575#1585#1711#1610#1585#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtnoe: TLabel
    Left = 234
    Top = 124
    Width = 19
    Height = 18
    Caption = #1606#1608#1593
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtker_tan: TLabel
    Left = 127
    Top = 158
    Width = 52
    Height = 18
    Caption = #1603#1585#1575#1610#1607' '#1578#1575#1606#1603#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object txtmandeh: TLabel
    Left = 239
    Top = 190
    Width = 53
    Height = 18
    Caption = #1605#1575#1606#1583#1607' '#1575#1608#1604#1610#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 26
    Top = 188
    Width = 21
    Height = 18
    Caption = #1585#1610#1575#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 41
    Top = 93
    Width = 18
    Height = 18
    Caption = #1604#1610#1578#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh: TLabel
    Left = 241
    Top = 218
    Width = 48
    Height = 18
    Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object amal: TBitBtn
    Left = 179
    Top = 243
    Width = 97
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
    Left = 44
    Top = 243
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = exittClick
  end
  object mashin: TEdit
    Left = 70
    Top = 15
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
    OnExit = mashinExit
    OnKeyDown = mashinKeyDown
  end
  object zarfiat: TEdit
    Left = 71
    Top = 91
    Width = 151
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
    OnExit = zarfiatExit
    OnKeyDown = zarfiatKeyDown
  end
  object noe: TComboBox
    Left = 134
    Top = 121
    Width = 90
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
    Text = #1605#1604#1603#1610
    OnKeyDown = noeKeyDown
    Items.Strings = (
      #1605#1604#1603#1610
      #1575#1587#1578#1610#1580#1575#1585#1610)
  end
  object tanker: TComboBox
    Left = 187
    Top = 154
    Width = 106
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
    TabOrder = 5
    Text = #1576#1583#1608#1606' '#1578#1575#1606#1603#1585
    OnChange = tankerChange
    OnKeyDown = tankerKeyDown
    Items.Strings = (
      #1576#1583#1608#1606' '#1578#1575#1606#1603#1585
      #1578#1575#1606#1603#1585' '#1583#1575#1585)
  end
  object ranandeh: TDBGrid_Edit
    Left = 72
    Top = 76
    Width = 149
    Height = 16
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = clSkyBlue
    DataSource = person_ds
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
    OnDrawColumnCell = ranandehDrawColumnCell
    OnEnter = ranandehEnter
    OnKeyDown = ranandehKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'name'
    FieldStrSearch = 'name'
    SQL = 'select * from Person'
    FieldReturn = 'name'
    Edit_Color = clInfoBk
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'name'
        Width = 120
        Visible = True
      end>
  end
  object kosoorat: TComboBox
    Left = 22
    Top = 121
    Width = 104
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
    TabOrder = 4
    Text = #1576#1583#1608#1606' '#1603#1587#1608#1585#1575#1578
    OnKeyDown = kosooratKeyDown
    Items.Strings = (
      #1576#1583#1608#1606' '#1603#1587#1608#1585#1575#1578
      #1576#1575' '#1603#1587#1608#1585#1575#1578)
  end
  object mandeh: TMonyEdit
    Left = 56
    Top = 185
    Width = 174
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnExit = mandehExit
    OnKeyDown = mandehKeyDown
  end
  object ker_tan: TMonyEdit
    Left = 18
    Top = 154
    Width = 103
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
    OnExit = ker_tanExit
    OnKeyDown = ker_tanKeyDown
  end
  object tarikh: TMaskEdit
    Left = 142
    Top = 215
    Width = 88
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
    TabOrder = 11
    Text = '    /  /  '
    OnExit = tarikhExit
    OnKeyDown = tarikhKeyDown
  end
  object kamion_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kamion')
    Left = 289
    Top = 244
  end
  object person_ds: TDataSource
    DataSet = person_aq
    Left = 40
    Top = 50
  end
  object person_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 13
    Top = 50
  end
end
