object rpt_hes_bank_f: Trpt_hes_bank_f
  Left = 343
  Top = 329
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
  ClientHeight = 161
  ClientWidth = 278
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
    Top = 6
    Width = 268
    Height = 118
    BevelInner = bvLowered
    TabOrder = 0
    object txthesab: TLabel
      Left = 202
      Top = 14
      Width = 61
      Height = 18
      Caption = #1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txttarikh1: TLabel
      Left = 202
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
    object txttarikh2: TLabel
      Left = 203
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
    object tarikh2: TMaskEdit
      Left = 100
      Top = 84
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
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
    object tarikh1: TMaskEdit
      Left = 100
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
      TabOrder = 1
      Text = '    /  /  '
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object hesab: TDBGrid_Edit
      Left = 7
      Top = 36
      Width = 206
      Height = 11
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataSource = hesab_ds
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = hesabDrawColumnCell
      OnKeyDown = hesabKeyDown
      EditPosition = lpMidlle
      EditSpacing = 0
      Edit_Width = 153
      FieldCodeSearch = 'shomareh'
      FieldStrSearch = 'bank'
      SQL = 'select * from hesab'
      FieldReturn = 'shomareh'
      Edit_Color = clInfoBk
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'shomareh'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bank'
          Width = 100
          Visible = True
        end>
    end
  end
  object amal: TBitBtn
    Left = 151
    Top = 127
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
    Left = 29
    Top = 127
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
  object hesab_ds: TDataSource
    DataSet = hesab_aq
    Left = 37
    Top = 35
  end
  object hesab_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hesab')
    Left = 13
    Top = 19
  end
  object hes_bank_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tarikh , chek , sharh , mashin as dary , mablagh as bedeh' +
        'kar , 0 as bestankar FROM Hes_Melk')
    Left = 234
    Top = 105
  end
  object hes_bank_db: TfrxDBDataset
    UserName = 'hes_bank_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tarikh=tarikh'
      'chek=chek'
      'sharh=sharh'
      'dary=dary'
      'bedehkar=bedehkar'
      'bestankar=bestankar')
    DataSet = hes_bank_aq
    Left = 242
    Top = 81
  end
  object rpt_hes_bank: TfrxReport
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
    ReportOptions.LastChange = 39346.476578946800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 243
    Top = 49
    Datasets = <
      item
        DataSet = hes_bank_db
        DataSetName = 'hes_bank_db'
      end
      item
        DataSet = hesab_db
        DataSetName = 'hesab_db'
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
        Left = 34.236240000000000000
        Top = 5.112863330000000000
        Width = 699.213050000000000000
        Height = 52.913420000000000000
        Color = 12620666
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 461.102660000000000000
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
          Top = 13.984251970000000000
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
          Top = 13.984251970000000000
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
          Top = 13.984251970000000000
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
          Top = 13.984251970000000000
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
        Height = 29.941866680000000000
        ParentFont = False
        Top = 211.653680000000000000
        Width = 740.409927000000000000
        DataSet = hes_bank_db
        DataSetName = 'hes_bank_db'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = -3.183673330000000000
          Top = 3.133890000000008000
          Width = 31.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 589.391964170000000000
          Width = 78.120049450000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hes_bank_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 150.488250000000000000
          Width = 88.764533330000000000
          Height = 29.397650000000000000
          DataField = 'bedehkar'
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hes_bank_db."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 340.031540000000000000
          Width = 165.750773330000000000
          Height = 29.397650000000000000
          DataField = 'sharh'
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hes_bank_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 669.472479990000000000
          Width = 39.133789920000000000
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
        object Memo35: TfrxMemoView
          Left = 238.826840000000000000
          Width = 103.498763330000000000
          Height = 29.397650000000000000
          DataField = 'dary'
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hes_bank_db."dary"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 506.694916060000000000
          Width = 86.380643330000000000
          Height = 29.397650000000000000
          DataField = 'chek'
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[hes_bank_db."chek"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 51.958720010000000000
          Width = 96.323593330000000000
          Height = 29.397650000000000000
          DataField = 'bestankar'
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
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
            '[hes_bank_db."bestankar"]')
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
        Height = 130.341373330000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 588.827090840000000000
          Top = 92.976377950000000000
          Width = 79.820049450000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1591#1726#1591#167#1591#177#1592#1657#1591#174)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 150.206709990000000000
          Top = 92.976377950000000000
          Width = 96.821502780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#175#1592#8225#1592#402#1591#167#1591#177)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 340.218503940000000000
          Top = 92.976377950000000000
          Width = 165.543982780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
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
        object Memo2: TfrxMemoView
          Left = 387.188930000000000000
          Top = 64.661410000000000000
          Width = 111.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 669.440940000000000000
          Top = 92.976377950000000000
          Width = 39.133789920000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#175#1592#1657#1592#1662)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 239.013803940000000000
          Top = 92.976377950000000000
          Width = 101.291972780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#175#1591#177#1592#1657#1591#167#1592#1662#1591#1726' '#1592#402#1592#8224#1592#8224#1591#175#1592#8225' '#1593#8224#1592#402)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 505.881880000000000000
          Top = 92.976377950000000000
          Width = 83.173852780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1593#8224#1592#402)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 52.677180000000000000
          Top = 93.102350000000000000
          Width = 96.821502780000000000
          Height = 37.039370080000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 176.000000000000000000
          Top = 59.102350000000000000
          Width = 206.630180000000000000
          Height = 29.897650000000000000
          DataSet = hes_bank_db
          DataSetName = 'hes_bank_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7953152
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[(<hesab_db."shomareh">)]')
          ParentFont = False
          RTLReading = True
        end
      end
      object Memo10: TfrxMemoView
        Left = 241.889920000000000000
        Top = 9.338590000000000000
        Width = 297.323026670000000000
        Height = 47.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#173#1591#179#1591#167#1591#168' '#1591#168#1591#167#1592#8224#1592#402#1592#1657)
        ParentFont = False
        RTLReading = True
      end
      object ReportSummary1: TfrxReportSummary
        Height = 106.842610000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Left = 78.661410000000000000
          Top = 69.220469999999970000
          Width = 578.228820000000000000
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 453.795610000000000000
          Top = 39.065243329999990000
          Width = 185.196970000000000000
          Height = 28.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24767
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#179#1591#1726#1591#167#1592#8224#1592#402#1591#167#1591#177#1592#1657#1592#8225#1591#167' :')
          ParentFont = False
          RTLReading = True
        end
        object Memo15: TfrxMemoView
          Left = 453.795610000000000000
          Top = 5.049473330000012000
          Width = 193.196970000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24767
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1591#175#1592#8225#1592#402#1591#167#1591#177#1592#1657#1592#8225#1591#167' :')
          ParentFont = False
          RTLReading = True
        end
        object Memo18: TfrxMemoView
          Left = 454.215213330000000000
          Top = 76.936300000000080000
          Width = 180.000000000000000000
          Height = 22.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24767
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#168#1591#167#1592#8218#1592#1657' '#1592#8230#1591#167#1592#8224#1591#175#1592#8225' :')
          ParentFont = False
          RTLReading = True
        end
        object Memo5: TfrxMemoView
          Left = 259.750773340000000000
          Top = 37.178106669999970000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
          RTLReading = True
        end
        object Memo12: TfrxMemoView
          Left = 260.084106670000000000
          Top = 4.049473330000012000
          Width = 33.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 257.881880000000000000
          Top = 75.382496670000190000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
          RTLReading = True
        end
        object Memo21: TfrxMemoView
          Left = 294.532776670000000000
          Top = 4.716139999999996000
          Width = 155.078850000000000000
          Height = 18.897650000000000000
          DataSetName = 'rpt_havaleh_view_db'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hes_bank_db."bedehkar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo22: TfrxMemoView
          Left = 295.871366670000000000
          Top = 37.398576670000010000
          Width = 152.480416670000000000
          Height = 20.157493330000000000
          DataSetName = 'rpt_summary1_db'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7952384
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<hes_bank_db."bestankar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo23: TfrxMemoView
          Left = 295.847556670000000000
          Top = 75.602966670000000000
          Width = 153.522263330000000000
          Height = 22.666666670000000000
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<hes_bank_db."bestankar">,MasterData1,2)-SUM(<hes_bank_db."' +
              'bedehkar">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
      end
      object MasterData2: TfrxMasterData
        Height = 6.000000000000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        DataSet = hesab_db
        DataSetName = 'hesab_db'
        RowCount = 0
      end
    end
  end
  object hesab_db: TfrxDBDataset
    UserName = 'hesab_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'shomareh=shomareh'
      'bank=bank'
      'shobeh=shobeh'
      'saheb=saheb'
      'man_aval=man_aval')
    DataSet = hesab_aq
    Left = 18
    Top = 49
  end
end
