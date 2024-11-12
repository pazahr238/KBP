object rpt_hes_esti_f: Trpt_hes_esti_f
  Left = 360
  Top = 339
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1581#1587#1575#1576' '#1605#1575#1588#1610#1606' '#1575#1587#1578#1610#1580#1575#1585#1610
  ClientHeight = 171
  ClientWidth = 276
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
    Width = 270
    Height = 132
    BevelInner = bvLowered
    TabOrder = 0
    object txttarikh2: TLabel
      Left = 202
      Top = 104
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
      Left = 202
      Top = 70
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
    object txtmashin: TLabel
      Left = 202
      Top = 9
      Width = 31
      Height = 18
      Caption = #1605#1575#1588#1610#1606
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtsharh: TLabel
      Left = 202
      Top = 39
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
    object tarikh1: TMaskEdit
      Left = 96
      Top = 65
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
      Left = 96
      Top = 100
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
    object mashin: TEdit
      Left = 33
      Top = 6
      Width = 151
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
      OnExit = mashinExit
      OnKeyDown = mashinKeyDown
    end
    object sharh: TEdit
      Left = 17
      Top = 36
      Width = 167
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
      OnKeyDown = sharhKeyDown
    end
  end
  object tasvieh: TBitBtn
    Left = 96
    Top = 137
    Width = 86
    Height = 33
    Caption = #1578#1587#1608#1610#1607' '#1576#1583#1607#1610' '#1607#1575
    Enabled = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = tasviehClick
  end
  object exitt: TBitBtn
    Left = 20
    Top = 137
    Width = 72
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
  object amal: TBitBtn
    Left = 187
    Top = 137
    Width = 72
    Height = 33
    Caption = #1606#1605#1575#1610#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = amalClick
  end
  object rpt_hes_esti: TfrxReport
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
    ReportOptions.LastChange = 39346.476802118050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 76
    Top = 110
    Datasets = <
      item
        DataSet = Hes_Esti_db
        DataSetName = 'Hes_Esti_db'
      end
      item
        DataSet = rpt_tanker_db
        DataSetName = 'rpt_tanker_db'
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
        Color = 11522220
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 487.559370000000000000
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
          Left = 280.818897640000000000
          Top = 13.984251970000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 29.989941600000000000
        Top = 215.433210000000000000
        Width = 778.205227000000000000
        DataSet = Hes_Esti_db
        DataSetName = 'Hes_Esti_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 270.717952730000000000
          Width = 109.724489990000000000
          Height = 29.647650000000000000
          DataField = 'bedehkar'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
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
            '[Hes_Esti_db."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 735.226839990000000000
          Width = 38.154259920000000000
          Height = 29.480314960000000000
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
          Left = 554.834645670000000000
          Width = 75.590499920000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_Esti_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 377.797773330000000000
          Width = 177.437809920000000000
          Height = 29.397650000000000000
          DataField = 'sharh'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_Esti_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 164.031498500000000000
          Width = 106.204724410000000000
          Height = 29.647650000000000000
          DataField = 'bestankar'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6769953
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_Esti_db."bestankar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 8.144403340000000000
          Width = 156.212740000000000000
          Height = 29.730983330000000000
          DataField = 'mahal'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_Esti_db."mahal"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 95.464535200000000000
          Top = 9.070866139999990000
          Width = 67.960730000000000000
          Height = 19.730983330000000000
          DataField = 'p2'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Hes_Esti_db."p2"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559059999999990000
          Width = 101.110390000000000000
          Height = 18.897650000000000000
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8210690
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[Hes_Esti_db."p3"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Left = 631.181102360000000000
          Width = 103.937007870000000000
          Height = 29.397650000000000000
          DataField = 'sanad'
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Hes_Esti_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 135.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo25: TfrxMemoView
          Left = 270.738250010000000000
          Top = 92.994743330000000000
          Width = 107.851032780000000000
          Height = 41.574803150000000000
          Color = 10930569
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
        object Memo29: TfrxMemoView
          Left = 734.995300000000000000
          Top = 92.976377950000000000
          Width = 38.354259920000000000
          Height = 41.574803150000000000
          Color = 10930569
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
          Left = 554.834645670000000000
          Top = 92.994743330000000000
          Width = 76.590499920000000000
          Height = 41.524159990000000000
          Color = 10930569
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
          Left = 377.766233330000000000
          Top = 92.994743330000000000
          Width = 177.637809920000000000
          Height = 41.524159990000000000
          Color = 10930569
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
        object Memo34: TfrxMemoView
          Left = 164.031498500000000000
          Top = 92.976377950000000000
          Width = 106.204724410000000000
          Height = 41.657493320000000000
          Color = 10930569
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
        object Memo4: TfrxMemoView
          Left = 157.000000000000000000
          Top = 64.881880000000000000
          Width = 238.630180000000000000
          Height = 22.897650000000000000
          DataSet = Hes_Esti_db
          DataSetName = 'Hes_Esti_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6769953
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[(<Hes_Esti_db."mashin">)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo5: TfrxMemoView
          Left = 406.000000000000000000
          Top = 64.881880000000000000
          Width = 200.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1592#8230#1591#167#1591#180#1592#1657#1592#8224)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 7.559060000000000000
          Top = 92.976377950000000000
          Width = 156.293982780000000000
          Height = 41.824159990000000000
          Color = 10930569
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
        object Memo35: TfrxMemoView
          Left = 122.000000000000000000
          Top = 115.154916670000000000
          Width = 29.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1593#8224#1592#402)
        end
        object Memo36: TfrxMemoView
          Left = 9.220470000000000000
          Top = 113.154916670000000000
          Width = 44.000000000000000000
          Height = 18.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            #1591#173#1591#179#1591#167#1591#168)
        end
        object Memo6: TfrxMemoView
          Left = 631.181102360000000000
          Top = 92.976377950000000000
          Width = 103.937007870000000000
          Height = 41.524159990000000000
          Color = 10930569
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
          #1591#173#1591#179#1591#167#1591#168' '#1592#8230#1591#167#1591#180#1592#1657#1592#8224#1592#8225#1591#167#1592#1657' '#1591#167#1591#179#1591#1726#1592#1657#1591#172#1591#167#1591#177#1592#1657)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 130.661410000000000000
        Top = 332.598640000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Left = 339.307050000000000000
          Top = 30.991960000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSetName = 'rpt_he_summary1_db'
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
            '[SUM(<Hes_Esti_db."bedehkar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo9: TfrxMemoView
          Left = 472.070810000000000000
          Top = 31.417130000000000000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1591#168#1591#175#1592#8225#1593#169#1591#167#1591#177#1592#1657#1592#8225#1591#167)
        end
        object Memo15: TfrxMemoView
          Left = 338.307050000000000000
          Top = 57.165120000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = rpt_tanker_db
          DataSetName = 'rpt_tanker_db'
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
            '[SUM(<rpt_tanker_db."tanker">,MasterData2,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo16: TfrxMemoView
          Left = 471.070810000000000000
          Top = 57.165120000000000000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1592#402#1591#177#1591#167#1592#1657#1592#8225' '#1591#1726#1591#167#1592#8224#1592#402#1591#177)
        end
        object Memo18: TfrxMemoView
          Left = 472.070810000000000000
          Top = 3.590289999999980000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177#1592#1657)
        end
        object Memo17: TfrxMemoView
          Left = 339.307050000000000000
          Top = 3.590289999999980000
          Width = 128.322820000000000000
          Height = 17.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7948811
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Hes_Esti_db."bestankar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Line1: TfrxLineView
          Left = 152.866110000000000000
          Top = 90.708410000000000000
          Width = 543.000000000000000000
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          Left = 375.582560000000000000
          Top = 100.487940000000000000
          Width = 158.000000000000000000
          Height = 18.000000000000000000
          Memo.UTF8 = (
            ': '#1592#8230#1591#168#1592#8222#1591#1563' '#1592#8218#1591#167#1591#168#1592#8222' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726)
        end
        object Memo24: TfrxMemoView
          Left = 309.574830000000000000
          Top = 1.944649999999970000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo27: TfrxMemoView
          Left = 309.574830000000000000
          Top = 27.724180000000000000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo31: TfrxMemoView
          Left = 309.574830000000000000
          Top = 53.708410000000000000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo32: TfrxMemoView
          Left = 150.000000000000000000
          Top = 100.487940000000000000
          Width = 25.000000000000000000
          Height = 19.000000000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo22: TfrxMemoView
          Left = 181.417440000000000000
          Top = 100.913385830000000000
          Width = 192.000000000000000000
          Height = 20.000000000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4416404
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<Hes_Esti_db."bestankar">,MasterData1,2)-SUM(<Hes_Esti_db."' +
              'bedehkar">,MasterData1,2)-SUM(<rpt_tanker_db."tanker">,MasterDat' +
              'a2,2)]')
          ParentFont = False
          RTLReading = True
        end
      end
      object MasterData2: TfrxMasterData
        Height = 4.677180000000000000
        Top = 268.346630000000000000
        Width = 778.205227000000000000
        DataSet = rpt_tanker_db
        DataSetName = 'rpt_tanker_db'
        RowCount = 0
      end
    end
  end
  object hes_esti_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT shomareh as sanad , tarikh , sharh , kamion as mashin , 0' +
        ' as bedehkar , kerayehk as bestankar , mahal , '#39#39' AS p2 , '#39#39' AS ' +
        ' p3  FROM Barnameh_view')
    Left = 8
    Top = 110
  end
  object Hes_Esti_db: TfrxDBDataset
    UserName = 'Hes_Esti_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'sharh=sharh'
      'mashin=mashin'
      'bedehkar=bedehkar'
      'bestankar=bestankar'
      'mahal=mahal'
      'p2=p2'
      'p3=p3')
    DataSet = hes_esti_aq
    Left = 40
    Top = 110
  end
  object mashin_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kamion_esti')
    Left = 19
    Top = 9
  end
  object rpt_tanker_db: TfrxDBDataset
    UserName = 'rpt_tanker_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mashin=mashin'
      'ranandeh=ranandeh'
      'zarfiat=zarfiat'
      'noe=noe'
      'tanker=tanker'
      'kosoorat=kosoorat'
      'mandeh=mandeh')
    DataSet = tanker_aq
    Left = 243
    Top = 122
  end
  object tanker_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kamion')
    Left = 245
    Top = 96
  end
  object he_summary1_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from vam')
    Left = 16
    Top = 78
  end
  object he_summary2_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from hazineh')
    Left = 40
    Top = 78
  end
end
