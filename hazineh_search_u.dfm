object hazineh_search_f: Thazineh_search_f
  Left = 285
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608#1610' '#1578#1606#1582#1608#1575#1607
  ClientHeight = 375
  ClientWidth = 568
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
  object txtmablagh: TLabel
    Left = 313
    Top = 154
    Width = 21
    Height = 18
    Caption = #1605#1576#1604#1594
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtbabat: TLabel
    Left = 313
    Top = 184
    Width = 22
    Height = 18
    Caption = #1576#1575#1576#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtsanad: TLabel
    Left = 313
    Top = 16
    Width = 52
    Height = 18
    Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txttarikh: TLabel
    Left = 313
    Top = 50
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
  object txttarikh2: TLabel
    Left = 313
    Top = 86
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
  object txtname: TLabel
    Left = 312
    Top = 122
    Width = 27
    Height = 18
    Caption = #1576#1607' '#1606#1575#1605
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object babat: TEdit
    Left = 105
    Top = 181
    Width = 185
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
    OnKeyDown = babatKeyDown
  end
  object sanad: TEdit
    Left = 106
    Top = 12
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = sanadKeyDown
  end
  object amal: TBitBtn
    Left = 390
    Top = 48
    Width = 105
    Height = 33
    Caption = #1580#1587#1578#1580#1608
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = amalClick
    OnKeyDown = amalKeyDown
  end
  object exitt: TBitBtn
    Left = 390
    Top = 128
    Width = 105
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = exittClick
  end
  object hazineh_list: TDBGrid
    Left = 9
    Top = 213
    Width = 550
    Height = 153
    TabStop = False
    BiDiMode = bdRightToLeft
    DataSource = sanad_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sanad'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = #1576#1607' '#1606#1575#1605
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Width = 82
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'babat'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1576#1578
        Width = 174
        Visible = True
      end>
  end
  object tarikh1: TMaskEdit
    Left = 204
    Top = 44
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
    Left = 203
    Top = 80
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
  object rep_hazineh: TBitBtn
    Left = 390
    Top = 88
    Width = 105
    Height = 33
    Caption = #1711#1586#1575#1585#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = rep_hazinehClick
  end
  object mablagh: TMonyEdit
    Left = 105
    Top = 149
    Width = 185
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnKeyDown = mablaghKeyDown
  end
  object name: TEdit
    Left = 105
    Top = 116
    Width = 185
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnExit = nameExit
    OnKeyDown = nameKeyDown
  end
  object sanad_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hazineh')
    Left = 68
    Top = 15
  end
  object sanad_ds: TDataSource
    DataSet = sanad_aq
    Left = 24
    Top = 173
  end
  object rpt_hazineh: TfrxReport
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
    ReportOptions.LastChange = 39346.523080509260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 526
    Top = 89
    Datasets = <
      item
        DataSet = hazineh_search_db
        DataSetName = 'hazineh_search_db'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape2: TfrxShapeView
        Left = 22.897650000000000000
        Top = 4.112863330000000000
        Width = 699.213050000000000000
        Height = 52.913420000000000000
        Color = 8967931
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 181.417440000000000000
          Top = 13.984251968503940000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[TIME]')
          RTLReading = True
        end
        object SysMemo3: TfrxSysMemoView
          Left = 491.338900000000000000
          Top = 13.984251968503940000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ' [PAGE#]')
          RTLReading = True
        end
        object Memo1: TfrxMemoView
          Left = 545.512163330000000000
          Top = 13.984251968503940000
          Width = 65.511853330000000000
          Height = 20.157493330000000000
          Memo.UTF8 = (
            #1591#181#1592#1662#1591#173#1592#8225)
          RTLReading = True
        end
        object Memo19: TfrxMemoView
          Left = 476.220780000000000000
          Top = 13.984251968503940000
          Width = 18.897650000000000000
          Height = 20.157493330000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1591#178)
          RTLReading = True
        end
        object Memo20: TfrxMemoView
          Left = 379.212843330000000000
          Top = 13.984251968503940000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalPages#]')
          RTLReading = True
        end
        object Memo_tarikh: TfrxMemoView
          Left = 275.905690000000000000
          Top = 13.984251968503940000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          RTLReading = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 29.480314960000000000
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        DataSet = hazineh_search_db
        DataSetName = 'hazineh_search_db'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 7.580086670000000000
          Top = 2.133890000000000000
          Width = 31.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 149.213932730000000000
          Width = 244.120903330000000000
          Height = 29.647650000000000000
          DataField = 'babat'
          DataSet = hazineh_search_db
          DataSetName = 'hazineh_search_db'
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_search_db."babat"]')
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 394.036913830000000000
          Width = 97.488188980000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = hazineh_search_db
          DataSetName = 'hazineh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_search_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 596.951024170000000000
          Width = 108.356289450000000000
          Height = 29.397650000000000000
          DataField = 'sanad'
          DataSet = hazineh_search_db
          DataSetName = 'hazineh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_search_db."sanad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 40.881880000000000000
          Width = 106.412183330000000000
          Height = 29.397650000000000000
          DataField = 'mablagh'
          DataSet = hazineh_search_db
          DataSetName = 'hazineh_search_db'
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
            '[hazineh_search_db."mablagh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 492.698206670000000000
          Width = 103.047248980000000000
          Height = 29.397650000000000000
          DataField = 'name'
          DataSet = hazineh_search_db
          DataSetName = 'hazineh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hazineh_search_db."name"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 130.341373330000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 596.636150840000000000
          Top = 89.518460020000000000
          Width = 109.056289450000000000
          Height = 41.440826660000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 394.338707160000000000
          Top = 89.091836690000000000
          Width = 96.988188980000000000
          Height = 41.824159990000000000
          Color = 57586
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
        object Memo8: TfrxMemoView
          Left = 40.850339990000000000
          Top = 88.965213340000000000
          Width = 107.160092780000000000
          Height = 41.824159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 148.900896670000000000
          Top = 89.102350000000000000
          Width = 244.914112780000000000
          Height = 41.657493320000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#167#1591#168#1591#1726)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 492.000000000000000000
          Top = 89.102350000000000000
          Width = 103.547248980000000000
          Height = 41.824159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1591#180#1591#174#1591#181)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 230.551330000000000000
        Top = 8.559060000000000000
        Width = 297.323026670000000000
        Height = 45.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726#1592#1657' '#1591#1726#1592#8224#1591#174#1592#710#1591#167#1592#8225)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 45.677180000000000000
        Top = 302.362400000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Left = 433.779530000000000000
          Top = 11.196660000000000000
          Width = 125.000000000000000000
          Height = 24.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1592#8225#1591#178#1592#1657#1592#8224#1592#8225' '#1592#8225#1591#167)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 271.779530000000000000
          Top = 11.196660000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSetName = 'hazineh_db'
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
            '[SUM(<hazineh_search_db."mablagh">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 219.212740000000000000
          Top = 9.448818897637800000
          Width = 31.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
      end
    end
  end
  object hazineh_search_db: TfrxDBDataset
    UserName = 'hazineh_search_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sanad=sanad'
      'tarikh=tarikh'
      'mablagh=mablagh'
      'babat=babat'
      'name=name')
    DataSet = sanad_aq
    Left = 498
    Top = 89
  end
  object person_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select name from hazineh')
    Left = 65
    Top = 118
  end
end
