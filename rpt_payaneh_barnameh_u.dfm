object rpt_payaneh_barnameh_f: Trpt_payaneh_barnameh_f
  Left = 385
  Top = 360
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1576#1575#1585#1606#1575#1605#1607' '#1607#1575#1610' '#1662#1575#1610#1575#1606#1607
  ClientHeight = 126
  ClientWidth = 215
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
    Left = 16
    Top = 91
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
    Left = 115
    Top = 91
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
  object main_payaneh_barnameh_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from payaneh_barnameh')
    Left = 182
    Top = 66
  end
  object payaneh_barnameh_db: TfrxDBDataset
    UserName = 'payaneh_barnameh_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'shomareh=shomareh'
      'tarikh=tarikh'
      'mashin=mashin'
      'kerayeh=kerayeh'
      'haghp=haghp'
      'daramad=daramad'
      'mabda=mabda'
      'maghsad=maghsad'
      'noebar=noebar')
    DataSet = main_payaneh_barnameh_aq
    Left = 182
    Top = 42
  end
  object rpt_payaneh_barnameh: TfrxReport
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
    ReportOptions.LastChange = 39346.487442129630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 183
    Top = 18
    Datasets = <
      item
        DataSet = payaneh_barnameh_db
        DataSetName = 'payaneh_barnameh_db'
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
        Color = 9742442
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 400.630180000000000000
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
        Height = 33.684910000000000000
        Top = 211.653680000000000000
        Width = 778.205227000000000000
        DataSet = payaneh_barnameh_db
        DataSetName = 'payaneh_barnameh_db'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 677.921460000000000000
          Top = 0.125850000000014000
          Width = 100.039580000000000000
          Height = 34.015770000000000000
          DataField = 'shomareh'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_barnameh_db."shomareh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 590.173470000000000000
          Top = 0.125850000000014000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          DataField = 'tarikh'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_barnameh_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 492.866420000000000000
          Top = 0.125850000000014000
          Width = 96.858380000000000000
          Height = 34.015770000000000000
          DataField = 'mashin'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_barnameh_db."mashin"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 396.850650000000000000
          Width = 95.244087170000000000
          Height = 34.015770000000000000
          DataField = 'mabda'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_barnameh_db."mabda"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 302.362400000000000000
          Width = 94.488181650000000000
          Height = 34.015770000000000000
          DataField = 'maghsad'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_barnameh_db."maghsad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 196.535560000000000000
          Width = 105.826771650000000000
          Height = 34.015770000000000000
          DataField = 'noebar'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_barnameh_db."noebar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 98.267780000000000000
          Width = 98.267711650000000000
          Height = 34.015770000000000000
          DataField = 'kerayeh'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
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
            '[payaneh_barnameh_db."kerayeh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Width = 98.267711650000000000
          Height = 34.015770000000000000
          DataField = 'daramad'
          DataSet = payaneh_barnameh_db
          DataSetName = 'payaneh_barnameh_db'
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
            '[payaneh_barnameh_db."daramad"]')
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
          Left = 677.992270000000000000
          Top = 97.000000000000000000
          Width = 100.039580000000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#168#1591#167#1591#177#1592#8224#1591#167#1592#8230#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 590.244280000000000000
          Top = 97.000000000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
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
          Left = 492.937230000000000000
          Top = 97.000000000000000000
          Width = 96.858380000000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#167#1591#180#1592#1657#1592#8224)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 396.921460000000000000
          Top = 97.133858270000000000
          Width = 95.244087170000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
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
          Left = 302.433210000000000000
          Top = 97.133858270000000000
          Width = 94.488181650000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
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
          Left = 196.606370000000000000
          Top = 97.133858270000000000
          Width = 105.826771650000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
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
        object Memo16: TfrxMemoView
          Left = 98.338590000000000000
          Top = 97.133858270000000000
          Width = 98.267711650000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
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
        object Memo18: TfrxMemoView
          Left = 0.070810000000000000
          Top = 97.133858270000000000
          Width = 98.267711650000000000
          Height = 34.015770000000000000
          Color = 12642761
          DataSet = main_f.Anbar_Mojoudi_db
          DataSetName = 'Anbar_Mojoudi_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 9788
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
      end
      object Memo10: TfrxMemoView
        Left = 200.874150000000000000
        Top = 9.559060000000000000
        Width = 395.118326670000000000
        Height = 41.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#168#1591#167#1591#177#1592#8224#1591#167#1592#8230#1592#8225' '#1592#8225#1591#167#1592#1657' '#1591#1726#1591#173#1592#710#1592#1657#1592#8222#1592#1657' '#1592#190#1591#167#1592#1657#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 71.811070000000000000
        Top = 306.141930000000000000
        Width = 778.205227000000000000
        object Memo21: TfrxMemoView
          Left = 472.441250000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1593#169#1592#8222' '#1593#169#1591#177#1591#167#1592#1657#1592#8225' '#1592#8225#1591#167)
        end
        object Memo22: TfrxMemoView
          Left = 472.441250000000000000
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1593#169#1592#8222' '#1591#175#1591#177#1591#162#1592#8230#1591#175)
        end
        object Memo23: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
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
            '[SUM(<payaneh_barnameh_db."kerayeh">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo24: TfrxMemoView
          Left = 291.023810000000000000
          Top = 45.354360000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6503694
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<payaneh_barnameh_db."daramad">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo25: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
        object Memo26: TfrxMemoView
          Left = 226.771800000000000000
          Top = 45.354360000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
        end
      end
    end
  end
end
