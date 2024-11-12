object vam_f: Tvam_f
  Left = 323
  Top = 262
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1608#1575#1605' '#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610' '#1575#1601#1585#1575#1583
  ClientHeight = 223
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
  object txtname: TLabel
    Left = 246
    Top = 23
    Width = 50
    Height = 18
    Caption = #1606#1575#1605' '#1588#1582#1589
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtbabat: TLabel
    Left = 246
    Top = 59
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
  object txtkol: TLabel
    Left = 246
    Top = 91
    Width = 57
    Height = 18
    Caption = #1603#1604' '#1605#1576#1604#1594' '#1608#1575#1605
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtghest: TLabel
    Left = 246
    Top = 125
    Width = 71
    Height = 18
    Caption = #1605#1610#1586#1575#1606' '#1607#1585' '#1602#1587#1591
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh: TLabel
    Left = 246
    Top = 156
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
  object babat: TEdit
    Left = 24
    Top = 55
    Width = 201
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyDown = babatKeyDown
  end
  object amal: TBitBtn
    Left = 188
    Top = 184
    Width = 97
    Height = 33
    TabOrder = 2
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 47
    Top = 184
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    TabOrder = 3
    OnClick = exittClick
  end
  object tarikh: TMaskEdit
    Left = 138
    Top = 152
    Width = 87
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
    TabOrder = 5
    Text = '    /  /  '
    OnExit = tarikhExit
    OnKeyDown = tarikhKeyDown
  end
  object name: TDBGrid_Edit
    Left = 72
    Top = 43
    Width = 153
    Height = 16
    TabStop = False
    BiDiMode = bdRightToLeft
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = nameDrawColumnCell
    OnEnter = nameEnter
    OnKeyDown = nameKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'mashin'
    FieldStrSearch = 'ranandeh'
    SQL = 'select * from Kamion_melki'
    FieldReturn = 'mashin'
    Edit_Color = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'ranandeh'
        Width = 125
        Visible = True
      end>
  end
  object kol: TMonyEdit
    Left = 72
    Top = 88
    Width = 151
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnExit = kolExit
    OnKeyDown = kolKeyDown
  end
  object ghest: TMonyEdit
    Left = 72
    Top = 120
    Width = 151
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnExit = ghestExit
    OnKeyDown = ghestKeyDown
  end
  object person_ds: TDataSource
    DataSet = person_aq
    Left = 45
    Top = 17
  end
  object person_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kamion_melki')
    Left = 20
    Top = 15
  end
  object vam_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vam')
    Left = 293
    Top = 183
  end
end
