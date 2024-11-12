object rpt_hes_pard_f: Trpt_hes_pard_f
  Left = 369
  Top = 345
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1581#1587#1575#1576' '#1662#1585#1583#1575#1582#1578#1610
  ClientHeight = 144
  ClientWidth = 260
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
    Left = 203
    Top = 83
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
    Left = 203
    Top = 49
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
    Left = 203
    Top = 17
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
  object tarikh1: TMaskEdit
    Left = 91
    Top = 46
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
    Left = 91
    Top = 79
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
    Left = 36
    Top = 110
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
    Left = 141
    Top = 109
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
  object mashin: TEdit
    Left = 19
    Top = 14
    Width = 160
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnKeyDown = mashinKeyDown
  end
  object rpt_hes_pard: TfrxReport
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
    ReportOptions.LastChange = 39346.454134652800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 228
    Top = 58
    Datasets = <
      item
        DataSet = rpt_hes_pard_db
        DataSetName = 'rpt_hes_pard_db'
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
        Color = 11521983
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 438.425480000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 185.196970000000000000
          Top = 14.225726670000000000
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
          Top = 14.005256660000000000
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
          Top = 12.671923340000000000
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
          Top = 13.931766660000000000
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
          Top = 13.931766660000000000
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
          Top = 15.118120000000000000
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
        DataSet = rpt_hes_pard_db
        DataSetName = 'rpt_hes_pard_db'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 624.377928350000000000
          Top = 0.125850000000014000
          Width = 88.700990000000000000
          Height = 34.015770000000000000
          DataField = 'sanad'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_hes_pard_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 544.819110000000000000
          Top = 0.125850000000014000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          DataField = 'tarikh'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_hes_pard_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 409.716760000000000000
          Top = 0.125850000000014000
          Width = 134.653680000000000000
          Height = 34.015770000000000000
          DataField = 'sharh'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_hes_pard_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 293.874150000000000000
          Width = 115.756030000000000000
          Height = 34.015770000000000000
          DataField = 'mashin'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_hes_pard_db."mashin"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 154.960730000000000000
          Width = 138.433210000000000000
          Height = 34.015770000000000000
          DataField = 'az'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[rpt_hes_pard_db."az"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo13: TfrxMemoView
          Left = 713.574783620000000000
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
          Left = 30.614024330000000000
          Width = 123.315090000000000000
          Height = 34.015770000000000000
          DataField = 'mablagh'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
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
            '[rpt_hes_pard_db."mablagh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = -0.000000000000000444
          Top = 3.779529999999990000
          Width = 28.322820000000000000
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
        object Memo22: TfrxMemoView
          Left = 154.960730000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'hesab'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          Memo.UTF8 = (
            '[rpt_hes_pard_db."hesab"]')
          RTLReading = True
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          Left = 219.212740000000000000
          Top = 11.338580240000000000
          Width = 71.811023620000000000
          Height = 22.677180000000000000
          DataField = 'chek'
          DataSet = rpt_hes_pard_db
          DataSetName = 'rpt_hes_pard_db'
          HAlign = haRight
          Memo.UTF8 = (
            '[rpt_hes_pard_db."chek"]')
          RTLReading = True
          VAlign = vaBottom
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 131.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo2: TfrxMemoView
          Left = 624.377928350000000000
          Top = 97.000000000000000000
          Width = 88.700990000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
          Left = 544.889920000000000000
          Top = 97.000000000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
          Left = 409.787570000000000000
          Top = 97.000000000000000000
          Width = 134.653680000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
            #1591#180#1591#177#1591#173)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 293.944960000000000000
          Top = 97.102350000000000000
          Width = 115.756030000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
            #1591#175#1591#177#1592#1657#1591#167#1592#1662#1591#1726' '#1593#169#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 155.031540000000000000
          Top = 97.133858270000000000
          Width = 138.433210000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
            #1592#8230#1591#173#1592#8222' '#1591#168#1591#177#1591#175#1591#167#1591#180#1591#1726)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 713.574783620000000000
          Top = 97.133858270000000000
          Width = 35.787570000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
          Left = 30.614024330000000000
          Top = 97.133858270000000000
          Width = 123.315090000000000000
          Height = 34.015770000000000000
          Color = 11394767
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
        Width = 330.866316670000000000
        Height = 41.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#173#1591#179#1591#167#1591#168' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726#1592#1657)
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
            '[SUM(<rpt_hes_pard_db."mablagh">,MasterData1,2)]')
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
  object rpt_hes_pard_db: TfrxDBDataset
    UserName = 'rpt_hes_pard_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'mashin=mashin'
      'tarikh=tarikh'
      'sharh=sharh'
      'mablagh=mablagh'
      'mahal=mahal'
      'az=az'
      'hesab=hesab'
      'chek=chek')
    DataSet = main_aq
    Left = 227
    Top = 82
  end
  object main_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hes_melk order by sanad')
    Left = 227
    Top = 106
  end
  object mashin_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kamion_melki')
    Left = 8
    Top = 16
  end
end
