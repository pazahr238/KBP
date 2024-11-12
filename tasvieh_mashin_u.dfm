object tasvieh_mashin_f: Ttasvieh_mashin_f
  Left = 298
  Top = 324
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1605#1575#1588#1610#1606
  ClientHeight = 272
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
  object Page_Tasvieh: TPageControl
    Left = 19
    Top = 13
    Width = 294
    Height = 213
    ActivePage = Tab_Sandoogh
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = Page_TasviehChange
    object Tab_Sandoogh: TTabSheet
      Caption = #1662#1585#1583#1575#1582#1578' '#1575#1586' '#1589#1606#1583#1608#1602
      object txtname1: TLabel
        Left = 211
        Top = 11
        Width = 57
        Height = 16
        Caption = #1606#1575#1605' '#1588#1582#1589
      end
      object txtbabat: TLabel
        Left = 211
        Top = 45
        Width = 24
        Height = 16
        Caption = #1576#1575#1576#1578
      end
      object txttarikh1: TLabel
        Left = 211
        Top = 79
        Width = 49
        Height = 16
        Caption = #1578#1575#1585#1610#1582' '#1670#1603
      end
      object txtsanad: TLabel
        Left = 211
        Top = 113
        Width = 65
        Height = 16
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
      end
      object txtmablagh1: TLabel
        Left = 211
        Top = 147
        Width = 25
        Height = 16
        Caption = #1605#1576#1604#1594
      end
      object Label1: TLabel
        Left = 12
        Top = 148
        Width = 21
        Height = 16
        Caption = #1585#1610#1575#1604
      end
      object babat: TEdit
        Left = 40
        Top = 46
        Width = 152
        Height = 24
        TabOrder = 1
        OnExit = babatExit
        OnKeyDown = babatKeyDown
      end
      object tarikh1: TMaskEdit
        Left = 108
        Top = 78
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
        TabOrder = 2
        Text = '    /  /  '
        OnExit = tarikh1Exit
        OnKeyDown = tarikh1KeyDown
      end
      object sanad: TEdit
        Left = 40
        Top = 111
        Width = 152
        Height = 24
        TabOrder = 3
        OnExit = sanadExit
        OnKeyDown = sanadKeyDown
      end
      object name1: TDBGrid_Edit
        Left = 39
        Top = 33
        Width = 153
        Height = 12
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
        OnDrawColumnCell = name1DrawColumnCell
        OnEnter = name1Enter
        OnKeyDown = name1KeyDown
        EditPosition = lpMidlle
        EditSpacing = 0
        Edit_Width = 153
        FieldCodeSearch = 'mashin'
        FieldStrSearch = 'ranandeh'
        SQL = 'select * from Kamion'
        FieldReturn = 'mashin'
        Edit_Color = clInfoBk
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'ranandeh'
            Width = 125
            Visible = True
          end>
      end
      object mablagh1: TMonyEdit
        Left = 40
        Top = 144
        Width = 151
        Height = 26
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnExit = mablagh1Exit
        OnKeyDown = mablagh1KeyDown
      end
    end
    object Tab_Bank: TTabSheet
      Caption = #1662#1585#1583#1575#1582#1578' '#1575#1586' '#1576#1575#1606#1603
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object txttarikh: TLabel
        Left = 209
        Top = 80
        Width = 49
        Height = 16
        Caption = #1578#1575#1585#1610#1582' '#1670#1603
      end
      object txtshomareh: TLabel
        Left = 209
        Top = 114
        Width = 59
        Height = 16
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
      end
      object txtmablagh: TLabel
        Left = 209
        Top = 148
        Width = 48
        Height = 16
        Caption = #1605#1576#1604#1594' '#1670#1603
      end
      object txtbank: TLabel
        Left = 209
        Top = 46
        Width = 42
        Height = 16
        Caption = #1606#1575#1605' '#1576#1575#1606#1603
      end
      object txtname: TLabel
        Left = 209
        Top = 12
        Width = 57
        Height = 16
        Caption = #1606#1575#1605' '#1588#1582#1589
      end
      object Label2: TLabel
        Left = 12
        Top = 148
        Width = 21
        Height = 16
        Caption = #1585#1610#1575#1604
      end
      object tarikh: TMaskEdit
        Left = 107
        Top = 78
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
        TabOrder = 0
        Text = '    /  /  '
        OnExit = tarikhExit
        OnKeyDown = tarikhKeyDown
      end
      object shomareh: TEdit
        Left = 39
        Top = 112
        Width = 152
        Height = 24
        TabOrder = 1
        OnExit = shomarehExit
        OnKeyDown = shomarehKeyDown
      end
      object bank: TDBGrid_Edit
        Left = 2
        Top = 69
        Width = 273
        Height = 11
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
        TabOrder = 2
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
        FieldCodeSearch = 'shomareh'
        FieldStrSearch = 'bank'
        SQL = 'select * From Hesab'
        FieldReturn = 'shomareh'
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
          end
          item
            Expanded = False
            FieldName = 'shomareh'
            Width = 80
            Visible = True
          end>
      end
      object name: TDBGrid_Edit
        Left = 38
        Top = 34
        Width = 153
        Height = 12
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
        TabOrder = 4
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
        SQL = 'select * from Kamion'
        FieldReturn = 'mashin'
        Edit_Color = clInfoBk
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'ranandeh'
            Width = 125
            Visible = True
          end>
      end
      object mablagh: TMonyEdit
        Left = 39
        Top = 144
        Width = 151
        Height = 26
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnExit = mablaghExit
        OnKeyDown = mablaghKeyDown
      end
    end
  end
  object amal: TBitBtn
    Left = 178
    Top = 233
    Width = 97
    Height = 33
    Caption = #1578#1587#1608#1610#1607' '#1581#1587#1575#1576
    TabOrder = 1
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 51
    Top = 233
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    TabOrder = 2
    OnClick = exittClick
  end
  object person_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kamion')
    Left = 8
    Top = 48
  end
  object person_ds: TDataSource
    DataSet = person_aq
    Left = 34
    Top = 50
  end
  object bank_ds: TDataSource
    DataSet = bank_aq
    Left = 39
    Top = 83
  end
  object bank_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  * From Hesab')
    Left = 15
    Top = 83
  end
  object tasvieh_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from checks')
    Left = 285
    Top = 233
  end
end
