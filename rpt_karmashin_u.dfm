object rpt_karmashin_f: Trpt_karmashin_f
  Left = 375
  Top = 266
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1705#1575#1585#1705#1585#1583' '#1605#1575#1588#1610#1606' '#1607#1575
  ClientHeight = 278
  ClientWidth = 331
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
    Top = 4
    Width = 326
    Height = 236
    BevelInner = bvLowered
    TabOrder = 0
    object txtmashin: TLabel
      Left = 251
      Top = 13
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
    object txttarikh1: TLabel
      Left = 251
      Top = 174
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
      Left = 251
      Top = 205
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
    object txtsherkat: TLabel
      Left = 251
      Top = 48
      Width = 47
      Height = 18
      Caption = #1606#1575#1605' '#1588#1585#1603#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtmahal: TLabel
      Left = 251
      Top = 82
      Width = 51
      Height = 18
      Caption = #1605#1581#1604' '#1578#1582#1604#1610#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 251
      Top = 113
      Width = 64
      Height = 18
      Caption = #1605#1581#1604' '#1576#1575#1585#1711#1610#1585#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 251
      Top = 144
      Width = 37
      Height = 18
      Caption = #1606#1608#1593' '#1576#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tarikh1: TMaskEdit
      Left = 160
      Top = 171
      Width = 82
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
      TabOrder = 5
      Text = '    /  /  '
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object tarikh2: TMaskEdit
      Left = 160
      Top = 202
      Width = 82
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
      TabOrder = 6
      Text = '    /  /  '
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
    object mashin: TEdit
      Left = 61
      Top = 9
      Width = 181
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
      OnExit = mashinExit
      OnKeyDown = mashinKeyDown
    end
    object mahal: TComboBox
      Left = 9
      Top = 77
      Width = 233
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
      TabOrder = 2
      OnEnter = mahalEnter
      OnKeyDown = mahalKeyDown
    end
    object sherkat: TComboBox
      Left = 9
      Top = 43
      Width = 233
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
      TabOrder = 1
      OnEnter = sherkatEnter
      OnKeyDown = sherkatKeyDown
    end
    object reff: TBitBtn
      Left = 10
      Top = 105
      Width = 25
      Height = 27
      Hint = #1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1604#1610#1587#1578' '#1605#1581#1604' '#1578#1582#1604#1610#1607
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = reffClick
      OnEnter = reffEnter
      Glyph.Data = {
        1E070000424D1E070000000000003600000028000000160000001A0000000100
        180000000000E806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFA37875A37875A37875A37875A37875A37875A37875A37875A37875A3
        7875A37875A37875A37875A37875A37875A37875A37875A378758A5B5AFFFFFF
        0000FFFFFFFFFFFFA57976E7BEB8F1BEB8EFBCB7EFBCB7EEBBB7EEBBB7EDBAB6
        ECB9B6ECB9B6EBB8B5EAB7B5EAB7B5E9B6B4E8B5B4E8B5B4E7B4B3E7B4968A5B
        5AFFFFFF0000FFFFFFFFFFFFA77B76D9D4CEFFE9D3FFE8D0FFE5CCFFE4C9FFE2
        C5FFE1C2FFDEBDFFDDBAFFDBB6FFDAB3FFD7AFFFD5ABFFD3A8FFD1A3FFD0A0FF
        CDC18A5B5AFFFFFF0000FFFFFFFFFFFFA97E77DBD7D2FFECD8FFE9D3FFE8D0FF
        E5CCFFE4C9FFE2C5FFE1C2FFDEBDFFDDBAFFDBB6FFDAB3FFD7AFFFD6ACFFD3A8
        FFD1A3FFCDC18A5B5AFFFFFF0000FFFFFFFFFFFFAC8079DDD9D4FFEDDBFFEBD6
        FFE9D3019901FFE3C8FFE3C8BFD09481BC609FC477DFD4A1FFDBB6FFD8B0FFD7
        AFFFD6ACFFD3A8FFCEC38B5C5CFFFFFF0000FFFFFFFFFFFFAE8179DEDAD7FFEF
        DFFFEDDBFFEBD70199018FC47451B44801990101990101990101990171B651FF
        DBB6FFDAB3FFD7AFFFD6ACFFCEC38C5E5CFFFFFF0000FFFFFFFFFFFFB2857BE1
        DEDAFFF0E2FFEFDFFFEDDB019901019901019901019901019901019901019901
        01990171B651FFDBB6FFD8B0FFD7AFFFCFC58E605EFFFFFF0000FFFFFFFFFFFF
        B5887CE3E1DEFFF3E7FFF0E2FFEFDF01990101990101990101990131A72781BE
        6671B957119E0D019901BFCB89FFDBB6FFDAB3FFCFC58F6160FFFFFF0000FFFF
        FFFFFFFFB98B7EE5E3E1FFF4E9FFF3E6FFF0E20199010199010199010199018F
        C474FFE5CCFFE3C8EFDDB941AB3251AF3CFFDCB9FFDBB6FFD0C7926362FFFFFF
        0000FFFFFFFFFFFFBC8E7FE6E5E3FFF7EFFFF4E9FFF3E6019901019901019901
        019901019901019901FFE5CCFFE3C8EFDDB931A726EFDAB1FFDDBAFFD0C79366
        65FFFFFF0000FFFFFFFFFFFFC09181E9E8E7FFF8F1FFF7EDFFF4E9FFF4E9FFF3
        E6FFF0E2FFF0E2FFE7CFFFE7CFFFE7CFFFE5CCFFE3C8FFE3C8EFDDB9FFDEBDFF
        D1C8956966FFFFFF0000FFFFFFFFFFFFC49581EBEAE9FFFAF7FFF8F081C878FF
        F4E9FFF3E6FFF0E2FFF0E2FFE7CFFFE7CFFFE7CFFFE5CCFFE3C8FFE4C9FFE2C5
        FFE1C2FFD1C8986B69FFFFFF0000FFFFFFFFFFFFC89983EDEDECFFFBF8FFFAF6
        81C97ABFDFB1FFF4E9FFF3E6FFF0E2019901019901019901019901019901FFE5
        CCFFE4CAFFE2C5FFD2CA9A6D6BFFFFFF0000FFFFFFFFFFFFCB9C85EFEFEFFFFE
        FEFFFBF8CFE8C9119F10CFE5C0FFF4E9FFF3E6EFEBD431A92B01990101990101
        9901FFEDDBFFE5CCFFE4CBFFCFC89B6F6DFFFFFF0000FFFFFFFFFFFFCFA086F2
        F2F2FFFFFFFFFEFEFFFBF841B23F01990181C776DFE9CCDFE7C951B448019901
        019901019901FFE9D4FFE8D2FFE5CCFFC6C09D716FFFFFFF0000FFFFFFFFFFFF
        D3A388F3F3F3FFFFFFFFFFFFFFFEFECFE9CA0199010199010199010199010199
        01019901019901019901FFECDAFFE9D4FFE8D2FFBDB79F7471FFFFFF0000FFFF
        FFFFFFFFD7A789F5F5F5FFFFFFFFFFFFFFFFFFFFFEFE9FD79B01990101990101
        990101990101990121A41D019901FFE3D6FFBEBEFFAFAFFFA1A1A17572FFFFFF
        0000FFFFFFFFFFFFDAAA8AF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEDFEFD9
        71C46E41B13E41B13D8FCC83EFEDD8019901E7C0ADE6A79AE59E91E4988BA276
        74FFFFFF0000FFFFFFFFFFFFDEAD8CFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFFFBF8FFFAF7FFF8F1FFF7EDFFF4E9FFF3E6FFF4E9B28074B28074B28074B2
        8074A37875FFFFFF0000FFFFFFFFFFFFE1B08DFBFBFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCF9FFFBF8FFF9F2FFF7EFFFF7EFB28074FFB85C
        E1A36ACD9A81E8D2C7FFFFFF0000FFFFFFFFFFFFE4B38EFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FFFBF8FFF9F2FFF9F2B280
        74E4AD81D29F83EDDAD0FFFFFFFFFFFF0000FFFFFFFFFFFFE7B68FFFFFFFFEFE
        FEFDFDFDFBFBFBF9F9F9F8F8F8F7F7F7F5F5F5F3F3F3F2F2F1F0EEEDEEECEAEE
        ECEAB28074D7A485EFDCD1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFEAB890DC
        A987DCA987DCA987DCA987DCA987DCA987DCA987DCA987DCA987DCA987DCA987
        DCA987DCA987B28074F1DED2FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
    end
    object mahal_bar: TComboBox
      Left = 64
      Top = 109
      Width = 178
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
      TabOrder = 3
      OnEnter = mahal_barEnter
      OnKeyDown = mahal_barKeyDown
    end
    object noe_bar: TComboBox
      Left = 64
      Top = 141
      Width = 178
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
      TabOrder = 4
      OnEnter = noe_barEnter
      OnKeyDown = noe_barKeyDown
    end
  end
  object exitt: TBitBtn
    Left = 50
    Top = 244
    Width = 97
    Height = 33
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 172
    Top = 244
    Width = 97
    Height = 33
    Caption = #1606#1605#1575#1610#1588
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = amalClick
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
    ReportOptions.LastChange = 39346.486113460650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 278
    Top = 172
    Datasets = <
      item
        DataSet = Main_karmashin_db
        DataSetName = 'Main_karmashin_db'
      end
      item
        DataSet = rpt_summary1_karmashin_db
        DataSetName = 'rpt_summary1_karmashin_db'
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
        Color = 14398901
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 483.779840000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 188.976500000000000000
          Top = 13.984251970000000000
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
          Top = 13.984251970000000000
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
          Left = 455.779840000000000000
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
          Left = 381.105236660000000000
          Top = 13.984251970000000000
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
        Height = 29.858267720000000000
        Top = 207.874150000000000000
        Width = 778.205227000000000000
        DataSet = Main_karmashin_db
        DataSetName = 'Main_karmashin_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 251.820302730000000000
          Width = 71.929189990000000000
          Height = 29.647650000000000000
          DataField = 'meghdarl'
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
            '[Main_karmashin_db."meghdarl"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 398.641190840000000000
          Width = 75.007186120000000000
          Height = 29.397650000000000000
          DataField = 'tarikh'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
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
          Left = 170.944960000000000000
          Width = 79.622140000000000000
          Height = 29.480314960000000000
          DataField = 'kerayehk'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
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
            '[Main_karmashin_db."kerayehk"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 78.482993340000000000
          Width = 91.960730000000000000
          Height = 29.480314960000000000
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
          Left = 1.472480000000000000
          Width = 76.175943330000000000
          Height = 29.480314960000000000
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
        object Memo11: TfrxMemoView
          Left = 474.280766660000000000
          Width = 75.590499920000000000
          Height = 29.397650000000000000
          DataField = 'mahal'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
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
          Left = 549.656153330000000000
          Width = 102.047209920000000000
          Height = 29.397650000000000000
          DataField = 'sherkat'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[Main_karmashin_db."sherkat"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo4: TfrxMemoView
          Left = 324.307050000000000000
          Width = 72.929189990000000000
          Height = 29.480314960000000000
          DataField = 'meghdark'
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
            '[Main_karmashin_db."meghdark"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 739.165429990000000000
          Width = 36.015669920000000000
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
        object Memo36: TfrxMemoView
          Left = 549.921259840000000000
          Top = 9.826771650000012000
          Width = 105.968770000000000000
          Height = 18.897650000000000000
          DataField = 'mahal_bar'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[Main_karmashin_db."mahal_bar"]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Left = 651.968511260000000000
          Width = 86.929089920000000000
          Height = 29.397650000000000000
          DataField = 'kamion'
          DataSet = Main_karmashin_db
          DataSetName = 'Main_karmashin_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_karmashin_db."kamion"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 127.872706650000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 398.659650850000000000
          Top = 86.297990020000000000
          Width = 75.040519450000000000
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
          Left = 171.580086660000000000
          Top = 86.078076670000000000
          Width = 80.703382780000000000
          Height = 41.574803150000000000
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
          Left = 251.840600010000000000
          Top = 86.215213330000000000
          Width = 72.055732780000000000
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
            #1592#710#1591#178#1592#8224' '#1591#168#1592#8225' '#1592#8222#1592#1657#1591#1726#1591#177)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 78.897650000000000000
          Top = 86.215213330000000000
          Width = 92.041972780000000000
          Height = 41.574803150000000000
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
          Left = 1.553803330000000000
          Top = 86.215213330000000000
          Width = 76.923852780000000000
          Height = 41.574803150000000000
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
          Left = 739.133890000000000000
          Top = 86.215213330000000000
          Width = 35.905511810000000000
          Height = 41.574803150000000000
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
          Left = 473.915893330000000000
          Top = 86.215213330000000000
          Width = 75.590499920000000000
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
          Left = 549.624613330000000000
          Top = 86.215213330000000000
          Width = 102.047209920000000000
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
        object Memo5: TfrxMemoView
          Left = 324.327347280000000000
          Top = 86.173218580000000000
          Width = 74.055732780000000000
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
            #1592#710#1591#178#1592#8224' '#1591#168#1592#8225' '#1592#402#1592#1657#1592#8222#1592#710)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 651.968511260000000000
          Top = 86.173228350000000000
          Width = 86.929089920000000000
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
            #1592#8230#1591#167#1591#180#1592#1657#1592#8224)
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
        Height = 5.333333330000000000
        Top = 260.787570000000000000
        Width = 778.205227000000000000
        DataSet = rpt_summary1_karmashin_db
        DataSetName = 'rpt_summary1_karmashin_db'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        Height = 137.574830000000000000
        Top = 325.039580000000000000
        Width = 778.205227000000000000
        object Memo14: TfrxMemoView
          Left = 463.756030000001000000
          Top = 6.519479999999987000
          Width = 137.220470000000000000
          Height = 18.897650000000000000
          DataSet = rpt_summary1_karmashin_db
          DataSetName = 'rpt_summary1_karmashin_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 222895
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo15: TfrxMemoView
          Left = 447.637910000000000000
          Top = 36.299010000000010000
          Width = 155.299320000000000000
          Height = 18.897650000000000000
          DataSet = rpt_summary1_karmashin_db
          DataSetName = 'rpt_summary1_karmashin_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 10050598
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rpt_summary1_karmashin_db."meghdarl">,MasterData2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo16: TfrxMemoView
          Left = 605.606370000000000000
          Top = 7.299010000000010000
          Width = 150.000000000000000000
          Height = 27.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1592#402#1592#8222)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 605.606370000000000000
          Top = 38.299010000000010000
          Width = 139.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1592#8222#1592#1657#1591#1726#1591#177#1591#167#1593#1705)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 448.370130000000000000
          Top = 61.299010000000010000
          Width = 155.299320000000000000
          Height = 18.897650000000000000
          DataSet = rpt_summary1_karmashin_db
          DataSetName = 'rpt_summary1_karmashin_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rpt_summary1_karmashin_db."meghdark">,MasterData2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo30: TfrxMemoView
          Left = 606.338590000000000000
          Top = 64.299010000000010000
          Width = 139.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1591#168#1592#8225' '#1592#402#1592#1657#1592#8222#1592#710)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 448.370130000000000000
          Top = 88.078539999999970000
          Width = 155.299320000000000000
          Height = 18.897650000000000000
          DataSet = rpt_summary1_karmashin_db
          DataSetName = 'rpt_summary1_karmashin_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7947776
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rpt_summary1_karmashin_db."masafat">,MasterData2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo32: TfrxMemoView
          Left = 606.338590000000000000
          Top = 90.078539999999970000
          Width = 139.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1592#8230#1591#179#1591#167#1592#1662#1591#1726)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 411.881880000000000000
          Top = 36.299010000000010000
          Width = 27.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1592#8222#1592#1657#1591#1726#1591#177)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 385.881880000000000000
          Top = 62.299010000000010000
          Width = 54.000000000000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1592#402#1592#1657#1592#8222#1592#710#1593#175#1591#177#1592#8230)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 389.881880000000000000
          Top = 87.299010000000010000
          Width = 51.000000000000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1592#402#1592#1657#1592#8222#1592#710#1592#8230#1591#1726#1591#177)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 447.779840000000000000
          Top = 110.385900000000000000
          Width = 155.299320000000000000
          Height = 18.897650000000000000
          DataSet = rpt_summary1_karmashin_db
          DataSetName = 'rpt_summary1_karmashin_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7947776
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<rpt_summary1_karmashin_db."kerayehk">,MasterData2,2)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo38: TfrxMemoView
          Left = 605.748300000000000000
          Top = 112.385900000000000000
          Width = 139.000000000000000000
          Height = 21.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1593#169#1592#8222' '#1593#169#1591#177#1591#167#1592#1657#1592#8225)
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 389.291590000000000000
          Top = 109.606370000000000000
          Width = 51.000000000000000000
          Height = 19.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
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
  object mashin_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kamion')
    Left = 17
    Top = 16
  end
  object main_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Barnameh_view')
    Left = 277
    Top = 233
  end
  object Main_karmashin_db: TfrxDBDataset
    UserName = 'Main_karmashin_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tarikh=tarikh'
      'shomareh=shomareh'
      'sherkat=sherkat'
      'meghdarl=meghdarl'
      'meghdark=meghdark'
      'masafat=masafat'
      'mahal=mahal'
      'kamion=kamion'
      'mablaghl=mablaghl'
      'mablaghk=mablaghk'
      'sharh=sharh'
      'kerayehk=kerayehk'
      'mahal_bar=mahal_bar'
      'kerayehl=kerayehl'
      'noe=noe'
      'havaleh=havaleh')
    DataSet = main_aq
    Left = 285
    Top = 196
  end
  object sherkat_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Sherkat')
    Left = 15
    Top = 51
  end
  object mahal_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Mahal_temp')
    Left = 13
    Top = 78
  end
  object summary1_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Barnameh_view')
    Left = 12
    Top = 177
  end
  object rpt_summary1_karmashin_db: TfrxDBDataset
    UserName = 'rpt_summary1_karmashin_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tarikh=tarikh'
      'shomareh=shomareh'
      'sherkat=sherkat'
      'meghdarl=meghdarl'
      'meghdark=meghdark'
      'masafat=masafat'
      'mahal=mahal'
      'kamion=kamion'
      'mablaghl=mablaghl'
      'mablaghk=mablaghk'
      'sharh=sharh'
      'kerayehk=kerayehk')
    DataSet = summary1_aq
    Left = 40
    Top = 177
  end
  object mahal_bar_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct mahal_bar from barnameh')
    Left = 45
    Top = 110
  end
  object noe_bar_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from noe_bar')
    Left = 45
    Top = 142
  end
end
