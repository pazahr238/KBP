object rpt_mojsan_f: Trpt_mojsan_f
  Left = 428
  Top = 367
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1608#1580#1608#1583#1610' '#1589#1606#1583#1608#1602
  ClientHeight = 117
  ClientWidth = 211
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
    Left = 4
    Top = 5
    Width = 203
    Height = 76
    BevelInner = bvLowered
    TabOrder = 0
    object txttarikh2: TLabel
      Left = 135
      Top = 43
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
      Left = 135
      Top = 9
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
    object tarikh1: TMaskEdit
      Left = 20
      Top = 8
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
      TabOrder = 0
      Text = '    /  /  '
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object tarikh2: TMaskEdit
      Left = 21
      Top = 42
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
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
  end
  object amal: TBitBtn
    Left = 112
    Top = 85
    Width = 88
    Height = 31
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
    Left = 13
    Top = 85
    Width = 88
    Height = 31
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
  object rpt_etebar_sandoogh: TfrxReport
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
    ReportOptions.LastChange = 39346.486815497690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 165
    Top = 12
    Datasets = <
      item
        DataSet = etebar_sandoogh_db
        DataSetName = 'etebar_sandoogh_db'
      end
      item
        DataSet = hazineh_db
        DataSetName = 'hazineh_db'
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
        Color = 11448063
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 487.559370000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 188.976500000000000000
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 29.647650000000000000
        Top = 204.094620000000000000
        Width = 778.205227000000000000
        DataSet = hazineh_db
        DataSetName = 'hazineh_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 33.387092730000000000
          Width = 105.944959990000000000
          Height = 29.647650000000000000
          DataField = 'mablagh'
          DataSet = hazineh_db
          DataSetName = 'hazineh_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8409088
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_db."mablagh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 248.727770840000000000
          Width = 179.566246120000000000
          Height = 29.397650000000000000
          DataField = 'babat'
          DataSet = hazineh_db
          DataSetName = 'hazineh_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_db."babat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 716.329189990000000000
          Width = 38.154259920000000000
          Height = 29.197650000000000000
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
          Left = 428.926406660000000000
          Width = 75.590499920000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = hazineh_db
          DataSetName = 'hazineh_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 636.585343330000000000
          Width = 79.170029920000000000
          Height = 29.397650000000000000
          DataField = 'sanad'
          DataSet = hazineh_db
          DataSetName = 'hazineh_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 504.990043330000000000
          Width = 130.826739920000000000
          Height = 29.397650000000000000
          DataField = 'name'
          DataSet = hazineh_db
          DataSetName = 'hazineh_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_db."name"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 3.307050000000000000
          Top = 3.684910000000000000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo15: TfrxMemoView
          Left = 139.097822720000000000
          Width = 109.724489990000000000
          Height = 29.480314960000000000
          DataField = 'mablagh2'
          DataSet = hazineh_db
          DataSetName = 'hazineh_db'
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
            '[hazineh_db."mablagh2"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 124.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 248.746230850000000000
          Top = 82.518460020000000000
          Width = 179.599579450000000000
          Height = 41.440826660000000000
          Color = 11448063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1591#177#1591#173' / '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1593#8224#1592#402)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 32.407390010000000000
          Top = 82.435683330000000000
          Width = 106.071502780000000000
          Height = 41.657493320000000000
          Color = 11448063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1593#8224#1592#402)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 716.097650000000000000
          Top = 82.393700790000000000
          Width = 38.354259920000000000
          Height = 41.574803150000000000
          Color = 11448063
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
          Left = 428.561533330000000000
          Top = 82.435683330000000000
          Width = 76.590499920000000000
          Height = 41.524159990000000000
          Color = 11448063
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
          Left = 636.553803330000000000
          Top = 82.435683330000000000
          Width = 79.370078740157500000
          Height = 41.524159990000000000
          Color = 11448063
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
        object Memo5: TfrxMemoView
          Left = 505.425170000000000000
          Top = 82.102350000000000000
          Width = 130.826739920000000000
          Height = 41.924159990000000000
          Color = 11448063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1591#180#1591#174#1591#181' / '#1591#168#1591#167#1592#8224#1592#402)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 139.118120000000000000
          Top = 82.102350000000000000
          Width = 109.851032780000000000
          Height = 41.657493320000000000
          Color = 11448063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1591#168#1591#177#1591#175#1591#167#1591#180#1591#1726)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 213.110390000000000000
        Top = 10.559060000000000000
        Width = 397.323026670000000000
        Height = 41.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1592#8230#1592#1657#1591#178#1591#167#1592#8224' '#1591#167#1591#185#1591#1726#1591#168#1591#167#1591#177' '#1591#181#1592#8224#1591#175#1592#710#1592#8218)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 143.795300000000000000
        Top = 321.260050000000000000
        Width = 778.205227000000000000
        object Memo14: TfrxMemoView
          Left = 471.070810000000000000
          Top = 22.606060000000000000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1591#168#1591#177#1591#175#1591#167#1591#180#1591#1726' '#1591#167#1591#178' '#1591#181#1592#8224#1591#175#1592#710#1592#8218)
        end
        object Line1: TfrxLineView
          Left = 152.866110000000000000
          Top = 105.826530000000000000
          Width = 543.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          Left = 375.582560000000000000
          Top = 115.606060000000000000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1592#8230#1592#710#1591#172#1592#710#1591#175#1592#1657' '#1592#1662#1591#185#1592#8222#1592#1657' '#1591#181#1592#8224#1591#175#1592#710#1592#8218)
        end
        object Memo30: TfrxMemoView
          Left = 305.795300000000000000
          Top = 20.928880000000000000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo32: TfrxMemoView
          Left = 168.000000000000000000
          Top = 113.606060000000000000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo8: TfrxMemoView
          Left = 346.000000000000000000
          Top = 22.078540000000000000
          Width = 117.000000000000000000
          Height = 18.000000000000000000
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
            '[SUM(<hazineh_db."mablagh2">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo13: TfrxMemoView
          Left = 196.000000000000000000
          Top = 115.755720000000000000
          Width = 172.000000000000000000
          Height = 21.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 217788
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<hazineh_db."mablagh">,MasterData1,2) - SUM(<hazineh_db."ma' +
              'blagh2">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo18: TfrxMemoView
          Left = 471.417440000000000000
          Top = 49.133858270000000000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#710#1591#177#1592#710#1591#175#1592#1657' '#1591#1726#1592#8224#1591#174#1592#710#1591#167#1592#8225)
        end
        object Memo22: TfrxMemoView
          Left = 306.141930000000000000
          Top = 49.133858267716500000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo24: TfrxMemoView
          Left = 346.346630000000000000
          Top = 49.133858270000000000
          Width = 117.000000000000000000
          Height = 18.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7290408
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hazineh_db."mablagh">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
      end
      object MasterData2: TfrxMasterData
        Height = 4.677180000000000000
        Top = 257.008040000000000000
        Width = 778.205227000000000000
        DataSet = etebar_sandoogh_db
        DataSetName = 'etebar_sandoogh_db'
        RowCount = 0
      end
    end
  end
  object etebar_sandoogh_db: TfrxDBDataset
    UserName = 'etebar_sandoogh_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Bank=Bank'
      'Sandoogh=Sandoogh')
    DataSet = etebar_sandoogh_aq
    Left = 140
    Top = 20
  end
  object etebar_sandoogh_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Etebar')
    Left = 108
    Top = 12
  end
  object hazineh_db: TfrxDBDataset
    UserName = 'hazineh_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'name=name'
      'mablagh2=mablagh2'
      'mablagh=mablagh'
      'babat=babat')
    DataSet = hazineh_aq
    Left = 68
    Top = 12
  end
  object hazineh_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     sanad, tarikh, bank AS name, mablagh AS mablagh2, 0 A' +
        'S mablagh, chek AS babat'
      'FROM         dbo.Tankhah_vrd'
      'UNION'
      'SELECT     sanad, tarikh, name, 0 AS mablagh2, mablagh, babat'
      'FROM         dbo.Hazineh')
    Left = 28
    Top = 4
  end
end
