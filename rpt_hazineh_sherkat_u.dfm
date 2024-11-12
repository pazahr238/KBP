object rpt_hazineh_sherkat_f: Trpt_hazineh_sherkat_f
  Left = 358
  Top = 363
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1588#1585#1705#1578
  ClientHeight = 146
  ClientWidth = 240
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
    Top = 4
    Width = 234
    Height = 107
    BevelInner = bvLowered
    TabOrder = 0
    object txttarikh2: TLabel
      Left = 188
      Top = 78
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
    object txttarikh1: TLabel
      Left = 187
      Top = 44
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
    object txtsharh: TLabel
      Left = 188
      Top = 11
      Width = 24
      Height = 18
      Caption = #1588#1585#1581
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sharh: TComboBox
      Left = 19
      Top = 9
      Width = 153
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
      TabOrder = 0
      OnEnter = sharhEnter
      OnKeyDown = sharhKeyDown
      Items.Strings = (
        #1602#1576#1590' '#1578#1604#1601#1606
        #1602#1576#1590' '#1570#1576
        #1602#1576#1590' '#1576#1585#1602
        #1602#1576#1590' '#1605#1608#1576#1575#1610#1604
        #1602#1576#1590' '#1711#1575#1586
        #1578#1575#1705#1587#1610' '#1587#1585#1608#1610#1587
        #1593#1604#1610' '#1575#1604#1581#1587#1575#1576' '#1581#1602#1608#1602
        #1575#1610#1575#1576' '#1608' '#1584#1607#1575#1576
        #1576#1610#1605#1607
        #1605#1608#1578#1608#1585
        #1583#1601#1585#1606#1587#1610#1575#1604' '#1593#1602#1576
        #1583#1601#1585#1606#1587#1610#1575#1604' '#1580#1604#1608
        #1711#1575#1585#1583#1608#1606#1711
        #1670#1585#1582
        #1711#1610#1585#1576#1705#1587
        #1576#1585#1602' '#1705#1575#1585#1610
        #1602#1587#1605#1578' '#1607#1608#1575
        #1662#1605#1662' '#1576#1575#1583)
    end
    object tarikh1: TMaskEdit
      Left = 84
      Top = 41
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
    object tarikh2: TMaskEdit
      Left = 84
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
      TabOrder = 2
      Text = '    /  /  '
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
  end
  object exitt: TBitBtn
    Left = 27
    Top = 114
    Width = 88
    Height = 31
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
    Left = 132
    Top = 114
    Width = 87
    Height = 31
    Caption = #1606#1605#1575#1610#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = amalClick
  end
  object rpt_hazineh_sherkat: TfrxReport
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
    ReportOptions.LastChange = 39346.476321793980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 211
    Top = 51
    Datasets = <
      item
        DataSet = hazineh_sherkat_db
        DataSetName = 'hazineh_sherkat_db'
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
        Height = 49.133890000000000000
        Color = 9013957
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 355.275820000000000000
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
        Height = 32.606833330000000000
        Top = 196.535560000000000000
        Width = 778.205227000000000000
        DataSet = hazineh_sherkat_db
        DataSetName = 'hazineh_sherkat_db'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 37.908163340000000000
          Width = 171.590560940000000000
          Height = 32.125984251968500000
          DataField = 'mahal'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_sherkat_db."mahal"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 39.685039370078700000
          Top = 12.094488190000000000
          Width = 108.669450000000000000
          Height = 18.897650000000000000
          DataField = 'p3'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8210690
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[hazineh_sherkat_db."p3"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 209.385817010000000000
          Width = 113.385826770000000000
          Height = 32.125984250000000000
          DataField = 'bedehkar'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
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
            '[hazineh_sherkat_db."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 323.318370840000000000
          Width = 194.684366120000000000
          Height = 32.125984251968500000
          DataField = 'sharh'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_sherkat_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 704.503937010000000000
          Width = 37.354259920000000000
          Height = 32.125984251968500000
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
        object Memo11: TfrxMemoView
          Left = 518.635126660000000000
          Width = 87.929089920000000000
          Height = 32.125984251968500000
          DataField = 'tarikh'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_sherkat_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 606.349103330000000000
          Width = 98.267679920000000000
          Height = 32.125984251968500000
          DataField = 'sanad'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_sherkat_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 144.377952760000000000
          Top = 15.118110236220500000
          Width = 64.181200000000000000
          Height = 19.730983330000000000
          DataField = 'p2'
          DataSet = hazineh_sherkat_db
          DataSetName = 'hazineh_sherkat_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[hazineh_sherkat_db."p2"]')
          ParentFont = False
          RTLReading = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 116.700783320000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 323.336830850000000000
          Top = 74.959400020000000000
          Width = 194.717699450000000000
          Height = 41.440826660000000000
          Color = 11513816
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1591#177#1591#173)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 209.385817010000000000
          Top = 74.876623330000000000
          Width = 113.385826770000000000
          Height = 41.657493320000000000
          Color = 11513816
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#175#1592#8225#1592#402#1591#167#1591#177)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 37.322820000000000000
          Top = 74.876623330000000000
          Width = 171.590560940000000000
          Height = 41.824159990000000000
          Color = 11513816
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726
            '   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 704.559060000000000000
          Top = 74.876623330000000000
          Width = 38.354259920000000000
          Height = 41.324159990000000000
          Color = 11513816
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
        object Memo12: TfrxMemoView
          Left = 518.270253330000000000
          Top = 74.876623330000000000
          Width = 87.929089920000000000
          Height = 41.524159990000000000
          Color = 11513816
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
        object Memo7: TfrxMemoView
          Left = 606.317563330000000000
          Top = 74.876623330000000000
          Width = 98.267679920000000000
          Height = 41.524159990000000000
          Color = 11513816
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 163.102350000000000000
          Top = 95.543290000000000000
          Width = 29.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1593#8224#1592#402)
        end
        object Memo17: TfrxMemoView
          Left = 50.322820000000000000
          Top = 93.543290000000000000
          Width = 44.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1591#173#1591#179#1591#167#1591#168)
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
          #1592#8225#1591#178#1592#1657#1592#8224#1592#8225' '#1592#8225#1591#167#1592#1657' '#1591#180#1591#177#1593#169#1591#1726)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 40.425170000000000000
        Top = 291.023810000000000000
        Width = 778.205227000000000000
        object Memo22: TfrxMemoView
          Left = 469.881880000000000000
          Top = 11.401360000000000000
          Width = 138.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222)
        end
        object Memo26: TfrxMemoView
          Left = 266.086580000000000000
          Top = 12.401360000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = rpt_hes_melk_f.Hes_Melk_db
          DataSetName = 'Hes_Melk_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hazineh_sherkat_db."bedehkar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
      end
    end
  end
  object hazineh_sherkat_db: TfrxDBDataset
    UserName = 'hazineh_sherkat_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'sharh=sharh'
      'bedehkar=bedehkar'
      'mahal=mahal'
      'p2=p2'
      'p3=p3'
      'name=name')
    DataSet = hazineh_sherkat_aq
    Left = 210
    Top = 75
  end
  object hazineh_sherkat_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     sanad, tarikh, sharh, mablagh AS bedehkar , az AS mah' +
        'al, chek AS p2, hesab AS p3, mashin as name FROM         hes_mel' +
        'k ')
    Left = 210
    Top = 107
  end
  object sharh_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hazineh_sherkat')
    Left = 52
    Top = 14
  end
end
