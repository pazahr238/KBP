object rpt_suriz_kilosherkat_f: Trpt_suriz_kilosherkat_f
  Left = 368
  Top = 377
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1589#1608#1585#1578' '#1585#1610#1586' '#1603#1610#1604#1608#1605#1578#1585' '#1588#1585#1603#1578#1607#1575
  ClientHeight = 97
  ClientWidth = 267
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
    Top = 4
    Width = 257
    Height = 56
    BevelInner = bvLowered
    TabOrder = 0
    object txtsherkat: TLabel
      Left = 216
      Top = 17
      Width = 34
      Height = 18
      Caption = #1588#1585#1603#1578' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sherkat: TComboBox
      Left = 10
      Top = 14
      Width = 199
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
      Sorted = True
      TabOrder = 0
      OnEnter = sherkatEnter
      OnKeyDown = sherkatKeyDown
    end
  end
  object amal: TBitBtn
    Left = 148
    Top = 63
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
    Left = 26
    Top = 63
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
  object sherkat_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Sherkat')
    Left = 3
    Top = 3
  end
  object main_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  FROM mahal ORDER BY mahal')
    Left = 176
    Top = 57
  end
  object Main_sherkat_db: TfrxDBDataset
    UserName = 'Main_sherkat_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mahal=mahal'
      'sherkat=sherkat'
      'address=address'
      'masafat=masafat'
      'tarikh=tarikh'
      'masafat2=masafat2'
      'tarikh2=tarikh2')
    DataSet = main_aq
    Left = 208
    Top = 57
  end
  object rpt_suriz_kilosherkat: TfrxReport
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
    ReportOptions.LastChange = 39856.478688148100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 233
    Top = 57
    Datasets = <
      item
        DataSet = Main_sherkat_db
        DataSetName = 'Main_sherkat_db'
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
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape2: TfrxShapeView
        Left = 22.897650000000000000
        Top = 5.112863330000000000
        Width = 699.213050000000000000
        Height = 52.913420000000000000
        Color = 9936065
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 201.078850000000000000
          Top = 13.984251968503880000
          Width = 78.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
          RTLReading = True
        end
        object SysMemo3: TfrxSysMemoView
          Left = 438.102660000000000000
          Top = 13.984251968503880000
          Width = 37.854360000000000000
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
          Left = 477.275923330000000000
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
          Left = 418.984540000000000000
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
          Left = 379.476603330000000000
          Top = 13.984251968503880000
          Width = 38.988250000000000000
          Height = 15.118120000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'IPT Koodak'
        Font.Style = []
        Height = 29.397650000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        DataSet = Main_sherkat_db
        DataSetName = 'Main_sherkat_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 80.932392730000100000
          Width = 92.160173330000000000
          Height = 29.397650000000000000
          DataField = 'masafat2'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."masafat2"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 355.061104170000000000
          Width = 83.679109450000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 260.661410000000000000
          Width = 92.939703330000000000
          Height = 29.397650000000000000
          DataField = 'masafat'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."masafat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 629.677179990000000000
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
        object Memo30: TfrxMemoView
          Left = 439.976500000000000000
          Width = 189.427953330000000000
          Height = 29.397650000000000000
          DataField = 'mahal'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8535573
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."mahal"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 173.096276060000000000
          Width = 86.380643330000000000
          Height = 29.397650000000000000
          DataField = 'tarikh2'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."tarikh2"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'lnYekan'
        Font.Style = []
        Height = 145.459493330000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 354.496230840000000000
          Top = 108.094497950000000000
          Width = 85.379109450000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1592#8218#1591#175#1592#1657#1592#8230)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 81.119356670000100000
          Top = 108.094497950000000000
          Width = 91.953382780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#179#1591#167#1592#1662#1591#1726' '#1591#172#1591#175#1592#1657#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 260.848373940000000000
          Top = 108.094497950000000000
          Width = 93.732912780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#179#1591#167#1592#1662#1591#1726' '#1592#8218#1591#175#1592#1657#1592#8230)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 447.661410000000000000
          Top = 79.779530000000000000
          Width = 57.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#180#1591#177#1592#402#1591#1726' ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 110.936920000000000000
          Top = 75.000000000000000000
          Width = 331.354670000000000000
          Height = 29.897650000000000000
          DataField = 'sherkat'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7953152
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[Main_sherkat_db."sherkat"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 629.645640000000000000
          Top = 108.094497950000000000
          Width = 37.354259920000000000
          Height = 37.039370080000000000
          Color = 57586
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
        object Memo31: TfrxMemoView
          Left = 440.163463940000000000
          Top = 108.094497950000000000
          Width = 188.221162780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222' '#1591#1726#1591#174#1592#8222#1592#1657#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 173.283240000000000000
          Top = 108.094497950000000000
          Width = 86.173852780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#172#1591#175#1592#1657#1591#175)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 205.551330000000000000
        Top = 9.338590000000000000
        Width = 371.323026670000000000
        Height = 47.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#181#1592#710#1591#177#1591#1726' '#1591#177#1592#1657#1591#178' '#1592#402#1592#1657#1592#8222#1592#710#1592#8230#1591#1726#1591#177' '#1591#180#1591#177#1592#402#1591#1726#1592#8225#1591#167)
        ParentFont = False
        RTLReading = True
      end
    end
  end
end
