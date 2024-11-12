object rep_hes_melk_f: Trep_hes_melk_f
  Left = 274
  Top = 276
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1581#1587#1575#1576' '#1605#1575#1588#1610#1606#1607#1575#1610' '#1605#1604#1603#1610
  ClientHeight = 285
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object txtmashin: TLabel
    Left = 301
    Top = 40
    Width = 29
    Height = 13
    Caption = #1605#1575#1588#1610#1606
  end
  object txttarikh1: TLabel
    Left = 301
    Top = 119
    Width = 36
    Height = 13
    Caption = #1575#1586' '#1578#1575#1585#1610#1582
  end
  object txttarikh2: TLabel
    Left = 301
    Top = 158
    Width = 36
    Height = 13
    Caption = #1578#1575' '#1578#1575#1585#1610#1582
  end
  object tarikh1: TMaskEdit
    Left = 147
    Top = 114
    Width = 107
    Height = 28
    BiDiMode = bdRightToLeft
    EditMask = '!9999/99/99;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    Text = '    /  /  '
  end
  object tarikh2: TMaskEdit
    Left = 147
    Top = 152
    Width = 107
    Height = 28
    BiDiMode = bdRightToLeft
    EditMask = '!9999/99/99;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    Text = '    /  /  '
  end
  object exitt: TBitBtn
    Left = 80
    Top = 208
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    TabOrder = 2
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 210
    Top = 208
    Width = 97
    Height = 33
    Caption = #1606#1605#1575#1610#1588
    TabOrder = 3
  end
  object mashin: TEdit
    Left = 80
    Top = 37
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object rpt_karmashin: TfrxReport
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
    ReportOptions.LastChange = 38751.796509687500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 364
    Top = 208
    Datasets = <
      item
        DataSet = Main_karmashin_db
        DataSetName = 'Main_karmashin_db'
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
        Color = 8967931
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 313.700990000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 188.976500000000000000
          Top = 14.225726669999970000
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
        object SysMemo2: TfrxSysMemoView
          Left = 282.577613330000000000
          Top = 14.225726669999970000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
          RTLReading = True
        end
        object SysMemo3: TfrxSysMemoView
          Left = 476.220780000000000000
          Top = 14.005256659999990000
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
          Top = 12.671923339999980000
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
          Top = 13.931766659999990000
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
          Top = 13.931766659999990000
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
      end
      object MasterData1: TfrxMasterData
        Height = 29.941866680000000000
        Top = 200.315090000000000000
        Width = 778.205227000000000000
        DataSet = Main_karmashin_db
        DataSetName = 'Main_karmashin_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 330.190432730000000000
          Top = 0.294216680000005200
          Width = 90.826839990000000000
          Height = 29.647650000000000000
          DataField = 'meghdar'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."meghdar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 421.318370840000000000
          Top = 0.405380000000008100
          Width = 86.345776120000000000
          Height = 29.397650000000000000
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 242.756030000000000000
          Top = 0.405380000000008100
          Width = 87.181200000000000000
          Height = 29.397650000000000000
          DataField = 'mablagh'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."mablagh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 138.955473340000000000
          Top = 0.209183330000001900
          Width = 103.299320000000000000
          Height = 29.730983330000000000
          DataField = 'shomareh'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."shomareh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 39.267780000000000000
          Top = 0.209183330000001900
          Width = 98.853123330000000000
          Height = 29.730983330000000000
          DataField = 'masafat'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."masafat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 672.133889990000000000
          Top = 0.309626640000004700
          Width = 45.354259920000000000
          Height = 29.397650000000000000
          DataSet = rpt_sherkat_f.Main_db
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
          Left = 508.296536660000000000
          Top = 0.422489969999986700
          Width = 71.810969920000000000
          Height = 29.397650000000000000
          DataField = 'mahal'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."mahal"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 579.892393330000000000
          Top = 0.422489979999994600
          Width = 90.708619920000000000
          Height = 29.397650000000000000
          DataField = 'sherkat'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."sherkat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 124.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 421.336830850000000000
          Top = 82.518460020000010000
          Width = 86.379109450000000000
          Height = 41.440826660000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1591#1726#1591#167#1591#177#1592#1657#1591#174)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 243.391156660000000000
          Top = 82.298546669999990000
          Width = 88.262442780000000000
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
            ' '#1592#8230#1591#168#1592#8222#1591#1563' '#1592#402#1591#177#1591#167#1592#1657#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 330.210730010000000000
          Top = 82.435683330000000000
          Width = 90.953382780000000000
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
            #1592#710#1591#178#1592#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 139.370130000000000000
          Top = 82.435683330000000000
          Width = 103.380562780000000000
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
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#168#1591#167#1591#177#1592#8224#1591#167#1592#8230#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 39.349103330000000000
          Top = 82.435683330000000000
          Width = 99.601032780000000000
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
            #1592#8230#1591#179#1591#167#1592#1662#1591#1726)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 671.102350000000000000
          Top = 82.435683330000000000
          Width = 45.354259920000000000
          Height = 41.324159990000000000
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
        object Memo12: TfrxMemoView
          Left = 507.931663330000000000
          Top = 82.435683330000000000
          Width = 71.810969920000000000
          Height = 41.524159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222' '#1591#1726#1591#174#1592#8222#1592#1657#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 579.860853330000000000
          Top = 82.435683330000000000
          Width = 90.708619920000000000
          Height = 41.524159990000000000
          Color = 57586
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1592#8218#1591#181#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo10: TfrxMemoView
        Left = 238.110390000000000000
        Top = 9.559060000000000000
        Width = 297.323026670000000000
        Height = 41.314986670000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          #1592#402#1591#167#1591#177#1592#402#1591#177#1591#175' '#1592#8230#1591#167#1591#180#1592#1657#1592#8224#1592#8225#1591#167)
        ParentFont = False
      end
      object MasterData2: TfrxMasterData
        Height = 9.333333330000000000
        Top = 249.448980000000000000
        Width = 778.205227000000000000
        DataSet = rpt_sherkat_f.rpt_summary1_db
        DataSetName = 'rpt_summary1_db'
        RowCount = 0
      end
    end
  end
  object main_aq: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=kbp.mdb;Persist Sec' +
      'urity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Barnameh_view')
    Left = 312
    Top = 208
  end
  object Main_karmashin_db: TfrxDBDataset
    UserName = 'Main_karmashin_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tarikh=tarikh'
      'shomareh=shomareh'
      'sherkat=sherkat'
      'meghdar=meghdar'
      'masafat=masafat'
      'mahal=mahal'
      'kamion=kamion'
      'mablagh=mablagh')
    DataSet = main_aq
    Left = 336
    Top = 208
  end
end
