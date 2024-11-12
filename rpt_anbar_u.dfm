object rpt_anbar_f: Trpt_anbar_f
  Left = 346
  Top = 319
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1575#1606#1576#1575#1585
  ClientHeight = 186
  ClientWidth = 280
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
  object Panel1: TPanel
    Left = 3
    Top = 3
    Width = 273
    Height = 143
    BevelInner = bvLowered
    TabOrder = 0
    object txtkala: TLabel
      Left = 211
      Top = 47
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
    object txttarikh1: TLabel
      Left = 211
      Top = 77
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
      Left = 211
      Top = 110
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
    object txtdaste_kala: TLabel
      Left = 211
      Top = 13
      Width = 44
      Height = 18
      Caption = #1583#1587#1578#1607' '#1603#1575#1604#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object tarikh2: TMaskEdit
      Left = 108
      Top = 107
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
      TabOrder = 0
      Text = '    /  /  '
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
    object tarikh1: TMaskEdit
      Left = 108
      Top = 74
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
      TabOrder = 1
      Text = '    /  /  '
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object kala: TComboBox
      Left = 29
      Top = 42
      Width = 167
      Height = 26
      AutoDropDown = True
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnEnter = kalaEnter
      OnKeyDown = kalaKeyDown
    end
    object daste_kala: TComboBox
      Left = 29
      Top = 10
      Width = 167
      Height = 26
      AutoDropDown = True
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnEnter = daste_kalaEnter
      OnKeyDown = daste_kalaKeyDown
    end
  end
  object amal: TBitBtn
    Left = 152
    Top = 151
    Width = 97
    Height = 33
    Caption = #1606#1605#1575#1610#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 30
    Top = 151
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = exittClick
  end
  object kala_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Distinct kala from anbarv')
    Left = 43
    Top = 44
  end
  object anbar_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select tarikh , kala , sanad , meghdar as sharh , '#39#39' as dary , 0' +
        ' as bedehkar , gh_kol as bestankar , az , hesab , chek from anba' +
        'rv')
    Left = 244
    Top = 111
  end
  object anbarDB: TfrxDBDataset
    UserName = 'anbarDB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tarikh=tarikh'
      'kala=kala'
      'sanad=sanad'
      'sharh=sharh'
      'dary=dary'
      'bedehkar=bedehkar'
      'bestankar=bestankar'
      'az=az'
      'hesab=hesab'
      'chek=chek')
    DataSet = anbar_aq
    Left = 248
    Top = 87
  end
  object rpt_anbar: TfrxReport
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
    ReportOptions.LastChange = 39694.605254085610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 245
    Top = 64
    Datasets = <
      item
        DataSet = anbarDB
        DataSetName = 'anbarDB'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape2: TfrxShapeView
        Left = 41.795300000000000000
        Top = 5.112863330000000000
        Width = 699.213050000000000000
        Height = 52.913420000000000000
        Color = 13353404
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 445.984540000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 188.976500000000000000
          Top = 13.984251968503900000
          Width = 91.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
          RTLReading = True
        end
        object SysMemo3: TfrxSysMemoView
          Left = 476.220780000000000000
          Top = 13.984251968503900000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            ' [PAGE#]')
          ParentFont = False
          RTLReading = True
        end
        object Memo1: TfrxMemoView
          Left = 522.394043330000000000
          Top = 13.984251968503900000
          Width = 65.511853330000000000
          Height = 20.157493330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            #1591#181#1592#1662#1591#173#1592#8225)
          ParentFont = False
          RTLReading = True
        end
        object Memo19: TfrxMemoView
          Left = 455.779840000000000000
          Top = 13.984251968503900000
          Width = 18.897650000000000000
          Height = 20.157493330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1591#178)
          ParentFont = False
          RTLReading = True
        end
        object Memo20: TfrxMemoView
          Left = 381.105236660000000000
          Top = 13.984251968503900000
          Width = 72.154916670000000000
          Height = 25.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalPages#]')
          ParentFont = False
          RTLReading = True
        end
        object Memo_tarikh: TfrxMemoView
          Left = 279.685220000000000000
          Top = 13.984251970000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015748031496100000
        Top = 211.653680000000000000
        Width = 778.205227000000000000
        DataSet = anbarDB
        DataSetName = 'anbarDB'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 662.803340000000000000
          Top = 0.125850000000000000
          Width = 73.582870000000000000
          Height = 34.015770000000000000
          DataField = 'tarikh'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 582.614410000000000000
          Top = 0.125850000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'sanad'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 387.039580000000000000
          Width = 104.417440000000000000
          Height = 34.015770000000000000
          DataField = 'sharh'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 301.433210000000000000
          Width = 85.519790000000000000
          Height = 34.015770000000000000
          DataField = 'dary'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."dary"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 736.263079990000000000
          Width = 38.154259920000000000
          Height = 34.197650000000000000
          DataSetName = 'Main_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 216.566929130000000000
          Width = 83.905502050000000000
          Height = 34.015770000000000000
          DataField = 'bedehkar'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 134.606370000000000000
          Width = 81.637795280000000000
          Height = 34.015770000000000000
          DataField = 'bestankar'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7491084
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."bestankar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 3.023622050000000000
          Width = 130.771653540000000000
          Height = 34.015770000000000000
          DataField = 'az'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2969637
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."az"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.141732280000000000
          Width = 63.496041020000000000
          Height = 15.118120000000000000
          DataField = 'chek'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2969637
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[anbarDB."chek"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          Left = 66.519685040000000000
          Top = 18.141732280000000000
          Width = 67.275571020000000000
          Height = 15.118120000000000000
          DataField = 'hesab'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2969637
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[anbarDB."hesab"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          Left = 491.338900000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          DataField = 'kala'
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5849638
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[anbarDB."kala"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 131.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo2: TfrxMemoView
          Left = 662.874150000000000000
          Top = 97.000000000000000000
          Width = 73.582870000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 582.685220000000000000
          Top = 97.000000000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 387.110390000000000000
          Top = 97.000000000000000000
          Width = 104.417440000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clOlive
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1591#177#1591#173)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 301.504020000000000000
          Top = 97.102350000000000000
          Width = 85.519790000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#175#1591#177#1592#1657#1591#167#1592#1662#1591#1726' '#1592#402#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 736.251968503937000000
          Top = 97.102350000000000000
          Width = 38.354259920000000000
          Height = 34.015748030000000000
          Color = 16310481
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#175#1592#1657#1592#1662)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 216.566919370000000000
          Top = 97.102350000000000000
          Width = 83.905511810000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#175#1592#8225#1592#402#1591#167#1591#177)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 134.677180000000000000
          Top = 97.102350000000000000
          Width = 81.740260000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7491084
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 416.881880000000000000
          Top = 64.440940000000000000
          Width = 90.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1592#402#1591#167#1592#8222#1591#167)
          ParentFont = False
        end
        object Memo_kala: TfrxMemoView
          Left = 142.881880000000000000
          Top = 64.440940000000000000
          Width = 266.630180000000000000
          Height = 25.897650000000000000
          DataSet = anbarDB
          DataSetName = 'anbarDB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.023622050000000000
          Top = 97.133858270000000000
          Width = 130.874150000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3302173
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 491.409710000000000000
          Top = 97.133858270000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          Color = 16310481
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6642203
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1592#402#1591#167#1592#8222#1591#167)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 231.110390000000000000
        Top = 9.559060000000000000
        Width = 357.323026670000000000
        Height = 41.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1592#8230#1592#710#1591#172#1592#710#1591#175#1592#1657' '#1591#167#1592#8224#1591#168#1591#167#1591#177)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 115.677180000000000000
        Top = 306.141930000000000000
        Width = 778.205227000000000000
        object Memo21: TfrxMemoView
          Left = 464.000000000000000000
          Top = 13.976190000000000000
          Width = 176.000000000000000000
          Height = 20.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#175#1592#8225#1592#402#1591#167#1591#177#1592#1657#1592#8225#1591#167)
        end
        object Memo22: TfrxMemoView
          Left = 463.000000000000000000
          Top = 41.976190000000000000
          Width = 166.000000000000000000
          Height = 21.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177#1592#1657#1592#8225#1591#167)
        end
        object Memo23: TfrxMemoView
          Left = 232.000000000000000000
          Top = 12.976190000000000000
          Width = 223.000000000000000000
          Height = 25.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<anbarDB."bedehkar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 233.000000000000000000
          Top = 40.976190000000000000
          Width = 222.000000000000000000
          Height = 23.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7491084
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<anbarDB."bestankar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 181.000000000000000000
          Top = 74.976190000000000000
          Width = 487.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Memo25: TfrxMemoView
          Left = 464.000000000000000000
          Top = 81.976190000000000000
          Width = 138.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1591#168#1591#167#1592#8218#1592#1657#1592#8230#1591#167#1592#8224#1591#175#1592#8225)
        end
        object Memo26: TfrxMemoView
          Left = 205.000000000000000000
          Top = 80.976190000000000000
          Width = 248.000000000000000000
          Height = 24.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<anbarDB."bestankar">,MasterData1,2)-SUM(<anbarDB."bedehkar' +
              '">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
    end
  end
  object daste_kala_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  daste_kala')
    Left = 61
    Top = 17
  end
end
