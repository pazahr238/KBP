object rpt_payaneh_f: Trpt_payaneh_f
  Left = 406
  Top = 353
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1711#1610#1585#1610' '#1662#1575#1610#1575#1606#1607
  ClientHeight = 128
  ClientWidth = 222
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
  object txttarikh2: TLabel
    Left = 146
    Top = 62
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
    Left = 145
    Top = 23
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
    Left = 34
    Top = 20
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
    Left = 34
    Top = 58
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
    Left = 20
    Top = 92
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
    Left = 119
    Top = 92
    Width = 88
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
  object rpt_payaneh: TfrxReport
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
    ReportOptions.LastChange = 39346.488044513890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 185
    Top = 16
    Datasets = <
      item
        DataSet = Main_payaneh_db
        DataSetName = 'Main_payaneh_db'
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
      Font.Color = 8020528
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
        Color = 12105944
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 480.000310000000000000
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
        Height = 34.141620000000000000
        Top = 211.653680000000000000
        Width = 778.205227000000000000
        DataSet = Main_payaneh_db
        DataSetName = 'Main_payaneh_db'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 669.732288350000000000
          Top = 0.125850000000000000
          Width = 69.803340000000000000
          Height = 34.015770000000000000
          DataField = 'shomareh'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."shomareh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 605.291590000000000000
          Top = 0.125850000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          DataField = 'tarikh'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 542.362209610000000000
          Top = 0.125850000000000000
          Width = 62.842610000000000000
          Height = 34.015770000000000000
          DataField = 'mashin'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."mashin"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 479.071120000000000000
          Width = 62.842610000000000000
          Height = 34.015770000000000000
          DataField = 'mabda'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."mabda"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 415.748300000000000000
          Width = 62.842610000000000000
          Height = 34.015770000000000000
          DataField = 'maghsad'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."maghsad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 740.031493620000000000
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
          Left = 342.803161810000000000
          Width = 72.944874570000000000
          Height = 34.015770000000000000
          DataField = 'sharh'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 68.031540000000000000
          Width = 68.031493620000000000
          Height = 34.015770000000000000
          DataField = 'bedehkar'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
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
            '[Main_payaneh_db."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 270.236247320000000000
          Width = 71.811016300000000000
          Height = 34.015770000000000000
          DataField = 'kerayeh'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
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
            '[Main_payaneh_db."kerayeh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 204.094620000000000000
          Width = 66.622140000000000000
          Height = 34.015770000000000000
          DataField = 'haghp'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
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
            '[Main_payaneh_db."haghp"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 136.063080000000000000
          Width = 68.031493620000000000
          Height = 34.015770000000000000
          DataField = 'bestankar'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4733201
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_payaneh_db."bestankar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = -3.779530000000000000
          Width = 71.811023620000000000
          Height = 34.015770000000000000
          DataField = 'mandeh'
          DataSet = Main_payaneh_db
          DataSetName = 'Main_payaneh_db'
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
            '[Main_payaneh_db."mandeh"]')
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
          Left = 669.732288350000000000
          Top = 97.000000000000000000
          Width = 69.803340000000000000
          Height = 34.015770000000000000
          Color = 15790318
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#167#1591#177#1592#8224#1591#167#1592#8230#1592#8225'/'#1591#179#1592#8224#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 605.362400000000000000
          Top = 97.000000000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          Color = 15790318
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
        object Memo6: TfrxMemoView
          Left = 542.362209610000000000
          Top = 97.000000000000000000
          Width = 62.842610000000000000
          Height = 34.015770000000000000
          Color = 15790318
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#167#1591#180#1592#1657#1592#8224'/'#1592#8224#1592#710#1591#185)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 479.141930000000000000
          Top = 97.102350000000000000
          Width = 62.842610000000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1592#8230#1591#168#1591#175#1591#167)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 415.819110000000000000
          Top = 97.133858270000000000
          Width = 62.842610000000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1592#8230#1592#8218#1591#181#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 740.031493620000000000
          Top = 97.133858270000000000
          Width = 35.787570000000000000
          Height = 34.015770000000000000
          Color = 15790318
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
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
          Left = 342.803161810000000000
          Top = 97.133858270000000000
          Width = 72.944874570000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1591#180#1591#177#1591#173)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 68.102350000000000000
          Top = 97.133858270000000000
          Width = 68.031493620000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1592#8225#1591#178#1592#1657#1592#8224#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 270.236247320000000000
          Top = 97.133858270000000000
          Width = 71.811016300000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1593#169#1591#177#1591#167#1592#1657#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 204.165430000000000000
          Top = 97.133858270000000000
          Width = 65.763777090000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1591#173#1592#8218' '#1592#190#1591#167#1592#1657#1591#167#1592#8224#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 136.063080000000000000
          Top = 97.133858270000000000
          Width = 68.031493620000000000
          Height = 34.015770000000000000
          Color = 15790318
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
            #1591#175#1591#177#1591#162#1592#8230#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = -3.708720000000000000
          Top = 97.133858270000000000
          Width = 71.811023620000000000
          Height = 34.015770000000000000
          Color = 15790318
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#167#1592#8224#1591#175#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
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
          #1591#175#1592#1662#1591#1726#1591#177' '#1592#190#1591#167#1592#1657#1591#167#1592#8224#1592#8225' '#1592#8225#1591#167)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 151.181200000000000000
        Top = 306.141930000000000000
        Width = 778.205227000000000000
        object Memo26: TfrxMemoView
          Left = 298.582870000000000000
          Top = 34.015770000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8020528
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Main_payaneh_db."bestankar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo27: TfrxMemoView
          Left = 298.582870000000000000
          Top = 57.448826220000000000
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
            '[SUM(<Main_payaneh_db."bedehkar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo28: TfrxMemoView
          Left = 476.220780000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1591#175#1591#177#1591#162#1592#8230#1591#175)
        end
        object Memo29: TfrxMemoView
          Left = 476.220780000000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#8225#1591#178#1592#1657#1592#8224#1592#8225)
        end
        object Line1: TfrxLineView
          Left = 196.535560000000000000
          Top = 105.826840000000000000
          Width = 423.307360000000000000
          Frame.Typ = [ftTop]
        end
        object Memo30: TfrxMemoView
          Left = 476.220780000000000000
          Top = 113.385900000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            ': '#1591#168#1591#167#1592#8218#1592#1657#1592#8230#1591#167#1592#8224#1591#175#1592#8225)
        end
        object Memo31: TfrxMemoView
          Left = 298.582870000000000000
          Top = 115.275612520000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
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
            
              '[SUM(<Main_payaneh_db."haghp">,MasterData1,2)+SUM(<Main_payaneh_' +
              'db."bestankar">,MasterData1,2)-SUM(<Main_payaneh_db."bedehkar">,' +
              'MasterData1,2)-SUM(<Main_payaneh_db."mandeh">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo32: TfrxMemoView
          Left = 226.771800000000000000
          Top = 32.125991570000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo33: TfrxMemoView
          Left = 226.771800000000000000
          Top = 54.803156930000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo34: TfrxMemoView
          Left = 226.771800000000000000
          Top = 109.606370000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo37: TfrxMemoView
          Left = 298.582870000000000000
          Top = 9.448838430000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8020528
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Main_payaneh_db."haghp">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo38: TfrxMemoView
          Left = 476.220780000000000000
          Top = 9.448838430000020000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1591#173#1592#8218' '#1592#190#1591#167#1592#1657#1591#167#1592#8224#1592#8225)
        end
        object Memo39: TfrxMemoView
          Left = 226.771800000000000000
          Top = 7.559059999999990000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo41: TfrxMemoView
          Left = 298.582870000000000000
          Top = 82.015799290000000000
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
            '[SUM(<Main_payaneh_db."mandeh">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo42: TfrxMemoView
          Left = 476.220780000000000000
          Top = 81.259923070000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#8230#1591#167#1592#8224#1591#175#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
        end
        object Memo43: TfrxMemoView
          Left = 226.771800000000000000
          Top = 79.370130000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
      end
    end
  end
  object Main_payaneh_db: TfrxDBDataset
    UserName = 'Main_payaneh_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'shomareh=shomareh'
      'tarikh=tarikh'
      'mashin=mashin'
      'mabda=mabda'
      'maghsad=maghsad'
      'sharh=sharh'
      'kerayeh=kerayeh'
      'haghp=haghp'
      'bestankar=bestankar'
      'bedehkar=bedehkar'
      'mandeh=mandeh')
    DataSet = main_aq
    Left = 184
    Top = 39
  end
  object main_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT   shomareh ,  tarikh , mashin , mabda , maghsad , noebar ' +
        'as sharh , kerayeh , haghp , daramad AS bestankar ,  0 AS bedehk' +
        'ar , 0 as mandeh FROM   payaneh_barnameh')
    Left = 184
    Top = 63
  end
end
