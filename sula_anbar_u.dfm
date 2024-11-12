object sula_anbar_f: Tsula_anbar_f
  Left = 322
  Top = 277
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1589#1608#1585#1578' '#1582#1585#1610#1583' '#1604#1608#1575#1586#1605' '#1575#1606#1576#1575#1585
  ClientHeight = 255
  ClientWidth = 362
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
  object txtkala: TLabel
    Left = 283
    Top = 20
    Width = 33
    Height = 18
    Caption = #1606#1575#1605' '#1603#1575#1604#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmeghdar: TLabel
    Left = 283
    Top = 53
    Width = 26
    Height = 18
    Caption = #1605#1602#1583#1575#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh: TLabel
    Left = 283
    Top = 153
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
  object Label3: TLabel
    Left = 11
    Top = 55
    Width = 67
    Height = 18
    Caption = #1578#1593#1583#1575#1583' '#1610#1575' '#1604#1610#1578#1585#1575#1688
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtgh_vahed: TLabel
    Left = 283
    Top = 87
    Width = 53
    Height = 18
    Caption = #1602#1610#1605#1578' '#1608#1575#1581#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtgh_kol: TLabel
    Left = 283
    Top = 120
    Width = 41
    Height = 18
    Caption = #1602#1610#1605#1578' '#1603#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmahal: TLabel
    Left = 283
    Top = 187
    Width = 48
    Height = 18
    Caption = #1605#1581#1604' '#1582#1585#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object amal: TBitBtn
    Left = 199
    Top = 215
    Width = 105
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 58
    Top = 215
    Width = 105
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
  object meghdar: TEdit
    Left = 89
    Top = 50
    Width = 164
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
    OnExit = meghdarExit
    OnKeyDown = meghdarKeyDown
  end
  object mahal: TEdit
    Left = 89
    Top = 180
    Width = 164
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
    OnExit = mahalExit
    OnKeyDown = mahalKeyDown
  end
  object tarikh: TMaskEdit
    Left = 166
    Top = 146
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
  object kala: TDBGrid_Edit
    Left = 101
    Top = 41
    Width = 148
    Height = 10
    TabStop = False
    BiDiMode = bdRightToLeft
    Color = clSkyBlue
    DataSource = kala_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = kalaDrawColumnCell
    OnEnter = kalaEnter
    OnKeyDown = kalaKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'kala'
    FieldStrSearch = 'kala'
    SQL = 'select Distinct kala from taviz'
    FieldReturn = 'kala'
    Edit_Color = clInfoBk
    Columns = <
      item
        Expanded = False
        FieldName = 'kala'
        Width = 120
        Visible = True
      end>
  end
  object gh_vahed: TMonyEdit
    Left = 89
    Top = 82
    Width = 164
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnExit = gh_vahedExit
    OnKeyDown = gh_vahedKeyDown
  end
  object gh_kol: TMonyEdit
    Left = 89
    Top = 114
    Width = 164
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnEnter = gh_kolEnter
    OnExit = gh_kolExit
    OnKeyDown = gh_kolKeyDown
  end
  object kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Distinct kala from taviz')
    Left = 35
    Top = 15
  end
  object kala_ds: TDataSource
    DataSet = kala_aq
    Left = 66
    Top = 15
  end
  object sula_anbar_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Sula_Anbar')
    Left = 311
    Top = 215
  end
end
