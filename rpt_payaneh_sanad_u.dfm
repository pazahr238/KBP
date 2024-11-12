object rpt_payaneh_sanad_f: Trpt_payaneh_sanad_f
  Left = 400
  Top = 304
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1575#1587#1606#1575#1583' '#1662#1575#1610#1575#1606#1607
  ClientHeight = 117
  ClientWidth = 210
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
    Left = 142
    Top = 54
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
    Left = 141
    Top = 15
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
    Left = 30
    Top = 12
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
    Left = 30
    Top = 50
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
    Left = 12
    Top = 83
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
    Left = 111
    Top = 83
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
  object main_payaneh_sanad_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from payaneh_sanad')
    Left = 178
    Top = 58
  end
  object payaneh_sanad_db: TfrxDBDataset
    UserName = 'payaneh_sanad_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'sharh=sharh'
      'mablagh=mablagh')
    DataSet = main_payaneh_sanad_aq
    Left = 178
    Top = 34
  end
  object rpt_payaneh_sanad: TfrxReport
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
    ReportOptions.LastChange = 39346.508796469910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 179
    Top = 10
    Datasets = <
      item
        DataSet = payaneh_sanad_db
        DataSetName = 'payaneh_sanad_db'
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
        Color = 14464948
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 374.173470000000000000
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
          Top = 13.984251970000000000
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
        DataSet = payaneh_sanad_db
        DataSetName = 'payaneh_sanad_db'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 526.740260000000000000
          Top = 0.125850000000000000
          Width = 100.039580000000000000
          Height = 34.015770000000000000
          DataField = 'sanad'
          DataSet = payaneh_sanad_db
          DataSetName = 'payaneh_sanad_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_sanad_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 438.992270000000000000
          Top = 0.125850000000000000
          Width = 86.929190000000000000
          Height = 34.015770000000000000
          DataField = 'tarikh'
          DataSet = payaneh_sanad_db
          DataSetName = 'payaneh_sanad_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_sanad_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 268.346630000000000000
          Width = 170.078781650000000000
          Height = 34.015770000000000000
          DataField = 'sharh'
          DataSet = payaneh_sanad_db
          DataSetName = 'payaneh_sanad_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[payaneh_sanad_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 170.078850000000000000
          Width = 98.267711650000000000
          Height = 34.015770000000000000
          DataField = 'mablagh'
          DataSet = payaneh_sanad_db
          DataSetName = 'payaneh_sanad_db'
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
            '[payaneh_sanad_db."mablagh"]')
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
          Left = 526.811070000000000000
          Top = 97.000000000000000000
          Width = 100.039580000000000000
          Height = 34.015770000000000000
          Color = 13337174
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
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 439.063080000000000000
          Top = 97.000000000000000000
          Width = 87.685039370078700000
          Height = 34.015770000000000000
          Color = 13337174
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
        object Memo14: TfrxMemoView
          Left = 268.417440000000000000
          Top = 97.133858270000000000
          Width = 170.834645669291000000
          Height = 34.015770000000000000
          Color = 13337174
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
        object Memo18: TfrxMemoView
          Left = 170.149660000000000000
          Top = 97.133858270000000000
          Width = 98.267711650000000000
          Height = 34.015770000000000000
          Color = 13337174
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
            #1592#8230#1591#168#1592#8222#1591#1563)
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
          #1591#167#1591#179#1592#8224#1591#167#1591#175' '#1592#190#1591#167#1592#1657#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 45.354360000000000000
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
            '[SUM(<payaneh_sanad_db."mablagh">,MasterData1,2)]')
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
      end
    end
  end
end
