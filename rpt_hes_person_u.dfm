object rpt_hes_person_f: Trpt_hes_person_f
  Left = 350
  Top = 320
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1581#1587#1575#1576' '#1575#1588#1582#1575#1589
  ClientHeight = 188
  ClientWidth = 310
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
    Left = 5
    Top = 5
    Width = 300
    Height = 145
    BevelInner = bvLowered
    TabOrder = 0
    object txtsharh: TLabel
      Left = 233
      Top = 46
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
    object txttarikh2: TLabel
      Left = 233
      Top = 114
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
      Left = 233
      Top = 79
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
    object txtperson: TLabel
      Left = 233
      Top = 13
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
    object tarikh1: TMaskEdit
      Left = 126
      Top = 76
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
      TabOrder = 0
      Text = '    /  /  '
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object tarikh2: TMaskEdit
      Left = 126
      Top = 111
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
      TabOrder = 1
      Text = '    /  /  '
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
    object sharh: TEdit
      Left = 11
      Top = 43
      Width = 201
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
      OnKeyDown = sharhKeyDown
    end
    object person: TComboBox
      Left = 36
      Top = 10
      Width = 176
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
      OnEnter = personEnter
      OnExit = personExit
      OnKeyDown = personKeyDown
      Items.Strings = (
        #1606#1592#1575#1605#1610#1607' '#1575#1607#1608#1575#1586
        #1605#1575#1607#1588#1607#1585
        #1575#1585#1575#1705
        #1588#1610#1585#1575#1586
        #1575#1606#1583#1610#1605#1588#1705)
    end
  end
  object amal: TBitBtn
    Left = 172
    Top = 154
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
    Left = 40
    Top = 154
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
  object rpt_hes_person: TfrxReport
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
    ReportOptions.LastChange = 39346.484873043970000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 94
    Top = 114
    Datasets = <
      item
        DataSet = Hes_person_db
        DataSetName = 'Hes_person_db'
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
        Color = 9415377
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 408.189240000000000000
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
        Height = 29.941866680000000000
        Top = 204.094620000000000000
        Width = 778.205227000000000000
        DataSet = Hes_person_db
        DataSetName = 'Hes_person_db'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 37.908163340000000000
          Width = 156.212740000000000000
          Height = 29.480314960000000000
          DataField = 'mahal'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_person_db."mahal"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 38.236240000000000000
          Top = 9.448818899999992000
          Width = 101.110390000000000000
          Height = 18.897650000000000000
          DataField = 'p3'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8210690
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[Hes_person_db."p3"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          Left = 281.836072730000000000
          Width = 83.267779990000000000
          Height = 29.647650000000000000
          DataField = 'bedehkar'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
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
            '[Hes_person_db."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 364.893200840000000000
          Width = 179.566246120000000000
          Height = 29.397650000000000000
          DataField = 'babat'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_person_db."babat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 193.622140000000000000
          Width = 87.181200000000000000
          Height = 29.397650000000000000
          DataField = 'bestankar'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
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
            '[Hes_person_db."bestankar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 704.503937010000000000
          Width = 37.354259920000000000
          Height = 29.397650000000000000
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
          Left = 545.091836660000000000
          Width = 80.370029920000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_person_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 625.246753330000000000
          Width = 79.370029920000000000
          Height = 29.397650000000000000
          DataField = 'sanad'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_person_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 127.349103340000000000
          Top = 12.875850000000010000
          Width = 64.181200000000000000
          Height = 19.730983330000000000
          DataField = 'p2'
          DataSet = Hes_person_db
          DataSetName = 'Hes_person_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Hes_person_db."p2"]')
          ParentFont = False
          RTLReading = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 124.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 364.911660850000000000
          Top = 82.518460020000000000
          Width = 179.599579450000000000
          Height = 41.440826660000000000
          Color = 11848930
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
        object Memo8: TfrxMemoView
          Left = 194.257266660000000000
          Top = 82.298546669999990000
          Width = 88.262442780000000000
          Height = 41.824159990000000000
          Color = 11848930
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 281.856370010000000000
          Top = 82.435683330000000000
          Width = 83.394322780000000000
          Height = 41.657493320000000000
          Color = 11848930
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
          Top = 82.435683330000000000
          Width = 156.293982780000000000
          Height = 41.824159990000000000
          Color = 11848930
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
          Top = 82.435683330000000000
          Width = 38.354259920000000000
          Height = 41.324159990000000000
          Color = 11848930
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
          Left = 544.726963330000000000
          Top = 82.435683330000000000
          Width = 80.370029920000000000
          Height = 41.524159990000000000
          Color = 11848930
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
          Left = 625.215213330000000000
          Top = 82.435683330000000000
          Width = 79.370029920000000000
          Height = 41.524159990000000000
          Color = 11848930
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
        object Memo4: TfrxMemoView
          Left = 447.692950000000000000
          Top = 54.661410000000010000
          Width = 73.000000000000000000
          Height = 26.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 251.661410000000000000
          Top = 56.881879999999990000
          Width = 185.630180000000000000
          Height = 21.897650000000000000
          DataSet = rpt_hes_melk_f.Hes_Melk_db
          DataSetName = 'Hes_Melk_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[(<Hes_person_db."name">)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo16: TfrxMemoView
          Left = 151.763760000000000000
          Top = 103.102350000000000000
          Width = 29.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1593#8224#1592#402)
        end
        object Memo17: TfrxMemoView
          Left = 42.763760000000000000
          Top = 101.102350000000000000
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
          #1591#173#1591#179#1591#167#1591#168' '#1591#167#1591#180#1591#174#1591#167#1591#181)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 89.559060000000000000
        Top = 294.803340000000000000
        Width = 778.205227000000000000
        object Memo18: TfrxMemoView
          Left = 485.000000000000000000
          Top = 8.299009999999953000
          Width = 138.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177#1592#1657)
        end
        object Memo21: TfrxMemoView
          Left = 319.000000000000000000
          Top = 9.299010000000010000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = rpt_hes_melk_f.Hes_Melk_db
          DataSetName = 'Hes_Melk_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7487491
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Hes_person_db."bestankar">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo22: TfrxMemoView
          Left = 485.000000000000000000
          Top = 30.299010000000010000
          Width = 138.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#175#1592#8225#1592#402#1591#167#1591#177#1592#1657)
        end
        object Memo26: TfrxMemoView
          Left = 319.000000000000000000
          Top = 31.299010000000010000
          Width = 151.181200000000000000
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
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Hes_person_db."bedehkar">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Line1: TfrxLineView
          Left = 208.000000000000000000
          Top = 59.078539999999920000
          Width = 465.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 485.000000000000000000
          Top = 64.078539999999920000
          Width = 89.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1591#168#1591#167#1592#8218#1592#1657#1592#8230#1591#167#1592#8224#1591#175#1592#8225)
        end
        object Memo30: TfrxMemoView
          Left = 319.000000000000000000
          Top = 63.858070000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = rpt_hes_melk_f.Hes_Melk_db
          DataSetName = 'Hes_Melk_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<Hes_person_db."bestankar">,MasterData1) - SUM(<Hes_person_' +
              'db."bedehkar">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo31: TfrxMemoView
          Left = 253.228510000000000000
          Top = 7.559059999999988000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo32: TfrxMemoView
          Left = 253.228510000000000000
          Top = 30.236240000000010000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo33: TfrxMemoView
          Left = 253.228510000000000000
          Top = 64.252009999999990000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
      end
    end
  end
  object hes_person_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     sanad, tarikh, babat, mablagh AS bedehkar, 0 AS besta' +
        'nkar, '#39#39' AS mahal, char(0) AS p2, char(0) AS p3 , name FROM     ' +
        'Hazineh ')
    Left = 34
    Top = 114
  end
  object Hes_person_db: TfrxDBDataset
    UserName = 'Hes_person_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'babat=babat'
      'bedehkar=bedehkar'
      'bestankar=bestankar'
      'mahal=mahal'
      'p2=p2'
      'p3=p3'
      'name=name')
    DataSet = hes_person_aq
    Left = 66
    Top = 114
  end
  object person_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 26
    Top = 16
  end
end
