object person_f: Tperson_f
  Left = 349
  Top = 370
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1575#1588#1582#1575#1589
  ClientHeight = 183
  ClientWidth = 304
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
  object txtname: TLabel
    Left = 230
    Top = 21
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
  object txttel: TLabel
    Left = 230
    Top = 56
    Width = 21
    Height = 18
    Caption = #1578#1604#1601#1606
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttozih: TLabel
    Left = 230
    Top = 88
    Width = 49
    Height = 18
    Caption = #1578#1608#1590#1610#1581#1575#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 118
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
  object txtmandeh: TLabel
    Left = 231
    Top = 119
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
  object exitt: TBitBtn
    Left = 35
    Top = 146
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 172
    Top = 146
    Width = 97
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = amalClick
  end
  object tel: TEdit
    Left = 60
    Top = 52
    Width = 152
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
    OnKeyDown = telKeyDown
  end
  object tozih: TEdit
    Left = 46
    Top = 82
    Width = 166
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
    OnKeyDown = tozihKeyDown
  end
  object name: TDBGrid_Edit
    Left = 59
    Top = 40
    Width = 153
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = nameDrawColumnCell
    OnKeyDown = nameKeyDown
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
  object mandeh: TMonyEdit
    Left = 46
    Top = 114
    Width = 166
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnKeyDown = mandehKeyDown
  end
  object person_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 269
    Top = 148
  end
  object person_ds: TDataSource
    DataSet = person_aq
    Left = 23
    Top = 14
  end
end
