object rpt_residpk_f: Trpt_residpk_f
  Left = 351
  Top = 328
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1585#1587#1610#1583' '#1583#1585#1610#1575#1601#1578' '#1608#1580#1607
  ClientHeight = 167
  ClientWidth = 319
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
    Left = 7
    Top = 6
    Width = 307
    Height = 158
    BevelInner = bvLowered
    TabOrder = 0
    object txttarikh2: TLabel
      Left = 224
      Top = 88
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
      Left = 221
      Top = 55
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
    object Label1: TLabel
      Left = 220
      Top = 29
      Width = 71
      Height = 18
      Caption = #1605#1575#1588#1610#1606' '#1610#1575' '#1575#1601#1585#1575#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object txtsherkat: TLabel
      Left = 215
      Top = 10
      Width = 88
      Height = 18
      Caption = #1575#1586' '#1588#1585#1603#1578' '#1548' '#1581#1587#1575#1576
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
      Top = 51
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
      Top = 86
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
    object exitt: TBitBtn
      Left = 59
      Top = 119
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
    object amal: TBitBtn
      Left = 172
      Top = 119
      Width = 87
      Height = 31
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
    object sherkat: TComboBox
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
      TabOrder = 4
      OnEnter = sherkatEnter
      OnKeyDown = sherkatKeyDown
    end
  end
  object rpt_residpk: TfrxReport
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
    ReportOptions.LastChange = 39346.509862557890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 269
    Top = 51
    Datasets = <
      item
        DataSet = rpt_residpk_db
        DataSetName = 'rpt_residpk_db'
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
        Color = 5206000
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 438.425480000000000000
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
          Top = 13.984251968503900000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 33.684910000000000000
        Top = 211.653680000000000000
        Width = 778.205227000000000000
        DataSet = rpt_residpk_db
        DataSetName = 'rpt_residpk_db'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 616.818868350000000000
          Top = 0.125850000000014000
          Width = 88.700990000000000000
          Height = 34.015770000000000000
          DataField = 'residpk'
          DataSet = rpt_residpk_db
          DataSetName = 'rpt_residpk_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_residpk_db."residpk"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 537.260050000000000000
          Top = 0.125850000000014000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'tarikh'
          DataSet = rpt_residpk_db
          DataSetName = 'rpt_residpk_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_residpk_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 402.157700000000000000
          Top = 0.125850000000014000
          Width = 134.653680000000000000
          Height = 34.015770000000000000
          DataField = 'sherkat'
          DataSet = rpt_residpk_db
          DataSetName = 'rpt_residpk_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_residpk_db."sherkat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 286.315089999999000000
          Width = 115.756030000000000000
          Height = 34.015770000000000000
          DataField = 'hesab'
          DataSet = rpt_residpk_db
          DataSetName = 'rpt_residpk_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_residpk_db."hesab"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 151.181200000000000000
          Width = 134.653680000000000000
          Height = 34.015770000000000000
          DataField = 'mahal'
          DataSet = rpt_residpk_db
          DataSetName = 'rpt_residpk_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_residpk_db."mahal"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 706.015723620000000000
          Width = 35.787570000000000000
          Height = 34.015770000000000000
          DataSet = main_f.k_db
          DataSetName = 'k_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
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
        object Memo15: TfrxMemoView
          Left = 38.173084330000000000
          Width = 111.976500000000000000
          Height = 34.015770000000000000
          DataField = 'mablagh_ch'
          DataSet = rpt_residpk_db
          DataSetName = 'rpt_residpk_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_residpk_db."mablagh_ch"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999990000
          Width = 24.543290000000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 131.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo2: TfrxMemoView
          Left = 616.818868350000000000
          Top = 97.000000000000000000
          Width = 88.700990000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
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
        object Memo4: TfrxMemoView
          Left = 537.330860000000000000
          Top = 97.000000000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
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
        object Memo6: TfrxMemoView
          Left = 402.228510000000000000
          Top = 97.000000000000000000
          Width = 134.653680000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#1726#1591#185#1592#8222#1592#8218' '#1591#168#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 286.385900000000000000
          Top = 97.102350000000000000
          Width = 115.756030000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#710#1591#167#1591#177#1592#1657#1591#178' '#1591#168#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 151.252010000000000000
          Top = 97.133858270000000000
          Width = 134.653680000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222' '#1592#710#1591#167#1591#177#1592#1657#1591#178)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 706.015723620000000000
          Top = 97.133858270000000000
          Width = 35.787570000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#175#1592#1657#1592#1662)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 38.173084330000000000
          Top = 97.133858270000000000
          Width = 111.976500000000000000
          Height = 34.015770000000000000
          Color = 11654648
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 85
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 227.330860000000000000
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
          #1591#177#1591#179#1592#1657#1591#175' '#1591#175#1591#177#1592#1657#1591#167#1592#1662#1591#1726' '#1592#710#1591#172#1592#8225)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 109.606370000000000000
        Top = 306.141930000000000000
        Width = 778.205227000000000000
        object Line1: TfrxLineView
          Left = 211.653680000000000000
          Top = 11.338590000000000000
          Width = 423.307360000000000000
          Frame.Typ = [ftTop]
        end
        object Memo17: TfrxMemoView
          Left = 283.464750000000000000
          Top = 19.653526220000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
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
            '[SUM(<rpt_residpk_db."mablagh_ch">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo18: TfrxMemoView
          Left = 461.102660000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1593#169#1592#8222)
        end
        object Memo21: TfrxMemoView
          Left = 249.448980000000000000
          Top = 18.897650000000000000
          Width = 24.543290000000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
      end
    end
  end
  object rpt_residpk_db: TfrxDBDataset
    UserName = 'rpt_residpk_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'residpk=residpk'
      'h_index=h_index'
      'babat=babat'
      'beh=beh'
      'tarikh=tarikh'
      'sherkat=sherkat'
      'bank=bank'
      'hesab=hesab'
      'sh_ch=sh_ch'
      'mablagh_ch=mablagh_ch'
      'mahal=mahal')
    DataSet = main_aq
    Left = 268
    Top = 75
  end
  object main_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from havaleh_check order by tarikh')
    Left = 268
    Top = 99
  end
  object sherkat_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sherkat')
    Left = 14
    Top = 16
  end
end
