object rpt_anbarv_f: Trpt_anbarv_f
  Left = 347
  Top = 298
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1582#1585#1610#1583' '#1575#1606#1576#1575#1585
  ClientHeight = 193
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
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 7
    Top = 6
    Width = 290
    Height = 147
    BevelInner = bvLowered
    TabOrder = 0
    object txttarikh2: TLabel
      Left = 222
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
      Left = 220
      Top = 81
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
    object txtkala: TLabel
      Left = 221
      Top = 51
      Width = 33
      Height = 18
      Caption = #1606#1575#1605' '#1603#1575#1604#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object txtdaste_kala: TLabel
      Left = 219
      Top = 18
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
    object tarikh1: TMaskEdit
      Left = 118
      Top = 78
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
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object tarikh2: TMaskEdit
      Left = 118
      Top = 111
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
    object daste_kala: TComboBox
      Left = 19
      Top = 15
      Width = 187
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
      OnEnter = daste_kalaEnter
      OnKeyDown = daste_kalaKeyDown
    end
    object kala: TComboBox
      Left = 19
      Top = 47
      Width = 187
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
      OnEnter = kalaEnter
      OnKeyDown = kalaKeyDown
    end
  end
  object amal: TBitBtn
    Left = 164
    Top = 159
    Width = 87
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
    Left = 51
    Top = 159
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
  object rpt_anbarv: TfrxReport
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
    ReportOptions.LastChange = 39659.633814189800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 261
    Top = 96
    Datasets = <
      item
        DataSet = rpt_anbarv_db
        DataSetName = 'rpt_anbarv_db'
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
        Color = 13807814
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 370.393940000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 188.976500000000000000
          Top = 13.984251968503880000
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
          Top = 13.984251968503880000
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
          Top = 13.984251968503880000
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
          Top = 13.984251968503880000
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
          Top = 13.984251968503880000
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
          Top = 13.984251968503880000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 29.480314960629900000
        Top = 211.653680000000000000
        Width = 778.205227000000000000
        DataSet = rpt_anbarv_db
        DataSetName = 'rpt_anbarv_db'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 7.181102360000000000
          Width = 156.212740000000000000
          Height = 29.480314960000000000
          DataField = 'az'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_anbarv_db."az"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 8.000000000000000000
          Top = 10.960629920000000000
          Width = 89.771800000000000000
          Height = 18.897650000000000000
          DataField = 'chek'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8210690
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[rpt_anbarv_db."chek"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 251.599832730000000000
          Width = 83.267779990000000000
          Height = 29.480314960000000000
          DataField = 'gh_vahed'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
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
            '[rpt_anbarv_db."gh_vahed"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 425.365680840000000000
          Width = 149.330006120000000000
          Height = 29.397650000000000000
          DataField = 'kala'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_anbarv_db."kala"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 162.519685040000000000
          Width = 87.181200000000000000
          Height = 29.397650000000000000
          DataField = 'gh_kol'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = 736648
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_anbarv_db."gh_kol"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 734.740177010000000000
          Width = 38.173228346456700000
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
          Left = 575.328076660000000000
          Width = 80.370029920000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_anbarv_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 655.482993330000000000
          Width = 79.370029920000000000
          Height = 29.397650000000000000
          DataField = 'sanad'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_anbarv_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 97.112863340000000000
          Top = 10.960629920000000000
          Width = 64.181200000000000000
          Height = 19.730983330000000000
          DataField = 'hesab'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[rpt_anbarv_db."hesab"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 336.378170000000000000
          Width = 88.857526120000000000
          Height = 29.397650000000000000
          DataField = 'meghdar'
          DataSet = rpt_anbarv_db
          DataSetName = 'rpt_anbarv_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_anbarv_db."meghdar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 131.652236650000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 425.384140850000000000
          Top = 90.077520020000000000
          Width = 149.363339450000000000
          Height = 41.440826660000000000
          Color = 13745370
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1592#402#1591#167#1592#8222#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 162.897637800000000000
          Top = 89.857606670000000000
          Width = 88.262442780000000000
          Height = 41.574803150000000000
          Color = 13745370
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8218#1592#1657#1592#8230#1591#1726' '#1592#402#1592#8222)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 251.620130010000000000
          Top = 89.994743330000000000
          Width = 83.394322780000000000
          Height = 41.657493320000000000
          Color = 13745370
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8218#1592#1657#1592#8230#1591#1726' '#1592#710#1591#167#1591#173#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 7.086580000000000000
          Top = 89.994743330000000000
          Width = 156.094488190000000000
          Height = 41.574803150000000000
          Color = 13745370
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
          Left = 734.795300000000000000
          Top = 89.994743330000000000
          Width = 38.354259920000000000
          Height = 41.574803150000000000
          Color = 13745370
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
          Left = 574.963203330000000000
          Top = 89.994743330000000000
          Width = 80.370029920000000000
          Height = 41.524159990000000000
          Color = 13745370
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
          Left = 655.451453330000000000
          Top = 89.994743330000000000
          Width = 79.370029920000000000
          Height = 41.524159990000000000
          Color = 13745370
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
          Top = 62.220470000000000000
          Width = 73.000000000000000000
          Height = 26.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1592#402#1591#167#1592#8222#1591#167)
          ParentFont = False
        end
        object memo_kala: TfrxMemoView
          Left = 251.661410000000000000
          Top = 62.362209610000000000
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
          Left = 121.527520000000000000
          Top = 110.661410000000000000
          Width = 29.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1593#8224#1592#402)
        end
        object Memo17: TfrxMemoView
          Left = 12.527520000000000000
          Top = 108.661410000000000000
          Width = 44.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1591#173#1591#179#1591#167#1591#168)
        end
        object Memo35: TfrxMemoView
          Left = 336.396630010000000000
          Top = 89.952760790000000000
          Width = 88.890859450000000000
          Height = 41.440826660000000000
          Color = 13745370
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1592#8218#1591#175#1591#167#1591#177)
          ParentFont = False
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
        Height = 44.204700000000000000
        Top = 302.362400000000000000
        Width = 778.205227000000000000
        object Memo18: TfrxMemoView
          Left = 485.000000000000000000
          Top = 19.637600000000020000
          Width = 138.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#8218#1592#1657#1592#8230#1591#1726' '#1592#402#1592#8222)
        end
        object Memo21: TfrxMemoView
          Left = 319.000000000000000000
          Top = 20.637600000000020000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = rpt_hes_melk_f.Hes_Melk_db
          DataSetName = 'Hes_Melk_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 736648
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rpt_anbarv_db."gh_kol">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo31: TfrxMemoView
          Left = 253.228510000000000000
          Top = 18.897650000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
      end
    end
  end
  object rpt_anbarv_db: TfrxDBDataset
    UserName = 'rpt_anbarv_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'daste_kala=daste_kala'
      'kala=kala'
      'meghdar=meghdar'
      'gh_vahed=gh_vahed'
      'gh_kol=gh_kol'
      'tarikh=tarikh'
      'mahal=mahal'
      'az=az'
      'hesab=hesab'
      'chek=chek')
    DataSet = main_aq
    Left = 260
    Top = 123
  end
  object main_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from anbarv order by tarikh')
    Left = 260
    Top = 155
  end
  object daste_kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from daste_kala')
    Left = 40
    Top = 16
  end
  object kala_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from anbarv')
    Left = 40
    Top = 48
  end
end
