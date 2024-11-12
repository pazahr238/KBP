object tankhah_vrd_search_f: Ttankhah_vrd_search_f
  Left = 233
  Top = 234
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608#1610' '#1608#1585#1608#1583#1610' '#1578#1606#1582#1608#1575#1607
  ClientHeight = 280
  ClientWidth = 640
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
    Left = 445
    Top = 112
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
    Left = 195
    Top = 14
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
    Left = 445
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
  object txttarikh1: TLabel
    Left = 445
    Top = 45
    Width = 40
    Height = 18
    Caption = #1575#1586' '#1578#1575#1585#1610#1582
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh2: TLabel
    Left = 445
    Top = 81
    Width = 38
    Height = 18
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtbank: TLabel
    Left = 194
    Top = 44
    Width = 37
    Height = 18
    Caption = #1606#1575#1605' '#1576#1575#1606#1603
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtshobeh: TLabel
    Left = 195
    Top = 75
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
    Left = 195
    Top = 107
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
  object Label1: TLabel
    Left = 593
    Top = 116
    Width = 31
    Height = 18
    BiDiMode = bdRightToLeft
    Caption = #1578#1593#1583#1575#1583' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object txttedad: TLabel
    Left = 493
    Top = 117
    Width = 4
    Height = 18
    Align = alCustom
    Alignment = taRightJustify
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object shobeh: TEdit
    Left = 31
    Top = 70
    Width = 154
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
    OnKeyDown = shobehKeyDown
  end
  object hesab: TEdit
    Left = 31
    Top = 9
    Width = 154
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
    OnKeyDown = hesabKeyDown
  end
  object sanad: TEdit
    Left = 270
    Top = 7
    Width = 160
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
    OnKeyDown = sanadKeyDown
  end
  object amal: TBitBtn
    Left = 506
    Top = 9
    Width = 102
    Height = 30
    Caption = #1580#1587#1578#1580#1608
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 506
    Top = 81
    Width = 102
    Height = 30
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
  object tarikh1: TMaskEdit
    Left = 341
    Top = 39
    Width = 89
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
    OnExit = tarikh1Exit
    OnKeyDown = tarikh1KeyDown
  end
  object tarikh2: TMaskEdit
    Left = 340
    Top = 76
    Width = 89
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
    TabOrder = 6
    Text = '    /  /  '
    OnExit = tarikh2Exit
    OnKeyDown = tarikh2KeyDown
  end
  object rep_tankhah_vrd: TBitBtn
    Left = 506
    Top = 45
    Width = 102
    Height = 30
    Caption = #1711#1586#1575#1585#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = rep_tankhah_vrdClick
  end
  object chek: TEdit
    Left = 31
    Top = 102
    Width = 154
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
    OnKeyDown = chekKeyDown
  end
  object bank: TDBGrid_Edit
    Left = 15
    Top = 63
    Width = 185
    Height = 16
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
    TabOrder = 9
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
    SQL = 'select * from Bank'
    FieldReturn = 'code'
    Edit_Color = clInfoBk
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bank'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shobeh'
        Width = 80
        Visible = True
      end>
  end
  object mablagh: TMonyEdit
    Left = 272
    Top = 109
    Width = 157
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnKeyDown = mablaghKeyDown
  end
  object hazineh_list: TDBGrid
    Left = 2
    Top = 146
    Width = 636
    Height = 132
    TabStop = False
    BiDiMode = bdRightToLeft
    DataSource = sanad_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sanad'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'hesab'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bank'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1606#1603
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shobeh'
        Title.Alignment = taCenter
        Title.Caption = #1588#1593#1576#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'chek'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end>
  end
  object sanad_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tankhah_vrd')
    Left = 281
    Top = 17
  end
  object bank_ds: TDataSource
    DataSet = bank_aq
    Left = 106
    Top = 48
  end
  object bank_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from bank')
    Left = 134
    Top = 49
  end
  object sanad_ds: TDataSource
    DataSet = sanad_aq
    Left = 459
    Top = 184
  end
  object rpt_tankhah_vrd: TfrxReport
    Version = '3.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.Author = 'Ali Pazahr'
    ReportOptions.CreateDate = 38695.853953807900000000
    ReportOptions.Description.Strings = (
      #1606#1585#1605' '#1575#1601#1586#1575#1585' '#1580#1575#1605#1593' '#1593#1605#1604#1610#1575#1578' '#1588#1585#1603#1578' '#1581#1605#1604' '#1608' '#1606#1602#1604)
    ReportOptions.LastChange = 39346.522480104170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 605
    Top = 87
    Datasets = <
      item
        DataSet = Tankhah_vrd_db
        DataSetName = 'Tankhah_vrd_db'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Style1'
        Color = clNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
      end>
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape2: TfrxShapeView
        Left = 22.897650000000000000
        Top = 4.112863330000000000
        Width = 699.213050000000000000
        Height = 52.913420000000000000
        Color = 8967931
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 181.417440000000000000
          Top = 13.984251968503940000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[TIME]')
          RTLReading = True
        end
        object SysMemo3: TfrxSysMemoView
          Left = 491.338900000000000000
          Top = 13.984251968503940000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ' [PAGE#]')
          RTLReading = True
        end
        object Memo1: TfrxMemoView
          Left = 545.512163330000000000
          Top = 13.984251968503940000
          Width = 65.511853330000000000
          Height = 20.157493330000000000
          Memo.UTF8 = (
            #1591#181#1592#1662#1591#173#1592#8225)
          RTLReading = True
        end
        object Memo19: TfrxMemoView
          Left = 476.220780000000000000
          Top = 13.984251968503940000
          Width = 18.897650000000000000
          Height = 20.157493330000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1591#178)
          RTLReading = True
        end
        object Memo20: TfrxMemoView
          Left = 379.212843330000000000
          Top = 13.984251968503940000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalPages#]')
          RTLReading = True
        end
        object Memo_tarikh: TfrxMemoView
          Left = 275.905690000000000000
          Top = 13.984251968503940000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 29.941866680000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        DataSet = Tankhah_vrd_db
        DataSetName = 'Tankhah_vrd_db'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 7.580086670000000000
          Top = 2.133890000000008000
          Width = 31.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 149.213932730000000000
          Top = 0.294216680000005200
          Width = 113.837353330000000000
          Height = 29.647650000000000000
          DataField = 'shobeh'
          DataSet = Tankhah_vrd_db
          DataSetName = 'Tankhah_vrd_db'
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Tankhah_vrd_db."shobeh"]')
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 377.539263830000000000
          Top = 0.405380000000008100
          Width = 114.206308980000000000
          Height = 29.397650000000000000
          DataField = 'hesab'
          DataSet = Tankhah_vrd_db
          DataSetName = 'Tankhah_vrd_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Tankhah_vrd_db."hesab"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 596.951024170000000000
          Top = 0.405380000000008100
          Width = 108.356289450000000000
          Height = 29.397650000000000000
          DataField = 'sanad'
          DataSet = Tankhah_vrd_db
          DataSetName = 'Tankhah_vrd_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Tankhah_vrd_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 42.281880000000000000
          Top = 0.405380000000008100
          Width = 106.412183330000000000
          Height = 29.397650000000000000
          DataField = 'mablagh'
          DataSet = Tankhah_vrd_db
          DataSetName = 'Tankhah_vrd_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Tankhah_vrd_db."mablagh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 492.698206670000000000
          Top = 0.236363310000001500
          Width = 103.847248980000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = Tankhah_vrd_db
          DataSetName = 'Tankhah_vrd_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Tankhah_vrd_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 263.313036060000000000
          Top = 0.294216680000005200
          Width = 113.637353330000000000
          Height = 29.647650000000000000
          DataField = 'bank'
          DataSet = Tankhah_vrd_db
          DataSetName = 'Tankhah_vrd_db'
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Tankhah_vrd_db."bank"]')
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 130.341373330000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 596.636150840000000000
          Top = 89.518460020000000000
          Width = 109.056289450000000000
          Height = 41.440826660000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 377.441057160000000000
          Top = 89.091836690000000000
          Width = 114.106308980000000000
          Height = 41.424159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 41.250339990000000000
          Top = 89.165213340000000000
          Width = 107.160092780000000000
          Height = 41.824159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 148.900896670000000000
          Top = 89.102350000000000000
          Width = 113.630562780000000000
          Height = 41.657493320000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1591#185#1591#168#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 492.000000000000000000
          Top = 89.102350000000000000
          Width = 104.147248980000000000
          Height = 41.824159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 263.000000000000000000
          Top = 89.102350000000000000
          Width = 114.030562780000000000
          Height = 41.657493320000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#167#1592#8224#1592#402)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 230.551330000000000000
        Top = 8.559060000000000000
        Width = 297.323026670000000000
        Height = 45.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1592#710#1591#177#1592#710#1591#175#1592#1657' '#1591#1726#1592#8224#1591#174#1592#710#1591#167#1592#8225)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 41.574830000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        object Memo14: TfrxMemoView
          Left = 419.527830000000000000
          Top = 7.559060000000045000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1593#169#1592#8222)
        end
        object Memo15: TfrxMemoView
          Left = 200.315090000000000000
          Top = 7.559059999999988000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Tankhah_vrd_db."mablagh">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo16: TfrxMemoView
          Left = 143.622140000000000000
          Top = 7.559059999999988000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
      end
    end
  end
  object Tankhah_vrd_db: TfrxDBDataset
    UserName = 'Tankhah_vrd_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'mablagh=mablagh'
      'bank=bank'
      'shobeh=shobeh'
      'hesab=hesab'
      'chek=chek')
    DataSet = sanad_aq
    Left = 605
    Top = 56
  end
end
