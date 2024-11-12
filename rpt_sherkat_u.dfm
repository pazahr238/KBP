object rpt_sherkat_f: Trpt_sherkat_f
  Left = 375
  Top = 198
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1581#1587#1575#1576' '#1588#1585#1603#1578#1607#1575
  ClientHeight = 341
  ClientWidth = 329
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
    Left = 4
    Top = 5
    Width = 322
    Height = 296
    BevelInner = bvLowered
    TabOrder = 0
    object txtsherkat: TLabel
      Left = 252
      Top = 18
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
    object txttarikh1: TLabel
      Left = 252
      Top = 170
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
      Left = 252
      Top = 202
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
    object txtmahal: TLabel
      Left = 252
      Top = 50
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
    object txtnoe: TLabel
      Left = 252
      Top = 138
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
    object txtmashin: TLabel
      Left = 252
      Top = 80
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
    object Label1: TLabel
      Left = 249
      Top = 108
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
    object tarikh1: TMaskEdit
      Left = 156
      Top = 166
      Width = 84
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
      OnExit = tarikh1Exit
      OnKeyDown = tarikh1KeyDown
    end
    object tarikh2: TMaskEdit
      Left = 156
      Top = 199
      Width = 84
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
      TabOrder = 7
      Text = '    /  /  '
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
    object reff: TBitBtn
      Left = 15
      Top = 76
      Width = 25
      Height = 25
      Hint = #1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1604#1610#1587#1578' '#1605#1581#1604' '#1578#1582#1604#1610#1607
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    object sherkat: TComboBox
      Left = 15
      Top = 14
      Width = 225
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
    object mahal: TComboBox
      Left = 15
      Top = 45
      Width = 225
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
      OnEnter = mahalEnter
      OnKeyDown = mahalKeyDown
    end
    object noe: TComboBox
      Left = 130
      Top = 134
      Width = 110
      Height = 27
      AutoDropDown = True
      BiDiMode = bdRightToLeft
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnEnter = noeEnter
      OnKeyDown = noeKeyDown
    end
    object rb_sherkat1: TRadioButton
      Left = 19
      Top = 232
      Width = 224
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1711#1586#1575#1585#1588' '#1603#1604#1610' '#1581#1587#1575#1576' '#1588#1585#1603#1578' '#1607#1575
      Checked = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      TabStop = True
      OnKeyDown = rb_sherkat1KeyDown
    end
    object rb_sherkat2: TRadioButton
      Left = 19
      Top = 252
      Width = 224
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1603#1587#1608#1585#1575#1578' '#1603#1604#1610' '#1588#1585#1603#1578' '#1576#1575#1586#1585#1711#1575#1606#1610' '#1603#1588#1578' '#1608' '#1589#1606#1593#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
      OnKeyDown = rb_sherkat2KeyDown
    end
    object rb_sherkat3: TRadioButton
      Left = 19
      Top = 272
      Width = 224
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1603#1587#1608#1585#1575#1578' '#1580#1586#1610#1610' '#1588#1585#1603#1578' '#1576#1575#1586#1585#1711#1575#1606#1610' '#1603#1588#1578' '#1608' '#1589#1606#1593#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 10
      OnKeyDown = rb_sherkat3KeyDown
    end
    object mashin: TEdit
      Left = 62
      Top = 75
      Width = 178
      Height = 26
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnKeyDown = mashinKeyDown
    end
    object mahal_bar: TComboBox
      Left = 62
      Top = 104
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
      OnEnter = mahal_barEnter
      OnKeyDown = mahal_barKeyDown
    end
  end
  object amal: TBitBtn
    Left = 174
    Top = 305
    Width = 97
    Height = 34
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
    Left = 54
    Top = 306
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
  object rpt_havaleh_view: TfrxReport
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
    ReportOptions.LastChange = 39628.790959919000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 311
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
        Left = 34.236240000000000000
        Top = 5.112863330000000000
        Width = 699.213050000000000000
        Height = 52.913420000000000000
        Color = 8967931
      end
      object PageFooter1: TfrxPageFooter
        Height = 45.364873330000000000
        Top = 521.575140000000100000
        Width = 740.409927000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 197.299320000000000000
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
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
          Left = 418.984540000000000000
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
          Left = 379.476603330000000000
          Top = 13.984251968503940000
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
          Top = 13.984251968503940000
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
        Height = 37.795275590000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        DataSet = Main_sherkat_db
        DataSetName = 'Main_sherkat_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 269.908892730000000000
          Width = 69.482993330000000000
          Height = 37.795275590000000000
          DataField = 'meghdarl'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
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
            '[Main_sherkat_db."meghdarl"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 585.612434170000000000
          Width = 74.340519450000000000
          Height = 37.795275590000000000
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
        object Memo9: TfrxMemoView
          Left = 52.220470000000000000
          Width = 73.646413330000000000
          Height = 37.795275590000000000
          DataField = 'bedehkar'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = 213
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."bedehkar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 340.031540000000000000
          Width = 86.380643330000000000
          Height = 37.795275590000000000
          DataField = 'sharh'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."sharh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 716.606369990000000000
          Width = 37.354259920000000000
          Height = 37.795275590551200000
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
          Left = 204.645640000000000000
          Width = 65.703463330000000000
          Height = 37.795275590000000000
          DataField = 'noe'
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
            '[Main_sherkat_db."noe"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 125.440940000000000000
          Width = 80.821583330000000000
          Height = 37.795275590000000000
          DataField = 'kamion'
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
            '[Main_sherkat_db."kamion"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 502.915386060000000000
          Width = 82.601113330000000000
          Height = 37.795275590000000000
          DataField = 'havaleh'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
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
            '[Main_sherkat_db."havaleh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = -23.055142520000000000
          Width = 73.646413330000000000
          Height = 37.795275590000000000
          DataField = 'bestankar'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Main_sherkat_db."bestankar"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 660.283474330000000000
          Width = 56.692903620000000000
          Height = 37.795275590000000000
          DataField = 'username'
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
            '[Main_sherkat_db."username"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 427.086890000000000000
          Width = 74.834645670000000000
          Height = 37.795275590000000000
          DataField = 'shomareh'
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
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
            '[Main_sherkat_db."shomareh"]')
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
        Height = 164.357143330000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 585.047560840000000000
          Top = 126.992147950000000000
          Width = 74.040519450000000000
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
          Left = 51.938929990000000000
          Top = 126.992147950000000000
          Width = 74.144322780000000000
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
        object Memo25: TfrxMemoView
          Left = 270.095856670000000000
          Top = 126.992147950000000000
          Width = 69.276202780000000000
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
            #1592#8222#1592#1657#1591#1726#1591#177#1591#167#1593#1705)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 340.218503940000000000
          Top = 126.992147950000000000
          Width = 87.173852780000000000
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
          Left = 504.354360000000000000
          Top = 68.440940000000000000
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
        object Memo29: TfrxMemoView
          Left = 716.574830000000000000
          Top = 126.992147950000000000
          Width = 37.354259920000000000
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
        object Memo31: TfrxMemoView
          Left = 204.472416540000000000
          Top = 126.992147950000000000
          Width = 65.496672780000000000
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
            #1592#8224#1592#710#1591#185' '#1591#179#1592#710#1591#174#1591#1726)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 125.627903940000000000
          Top = 126.992147950000000000
          Width = 78.614792780000000000
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
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#8230#1591#167#1591#180#1592#1657#1592#8224)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 503.102350000000000000
          Top = 126.992147950000000000
          Width = 81.394322780000000000
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
            #1591#173#1592#710#1591#167#1592#8222#1592#8225' '#1592#8230#1591#177#1591#1726#1591#168#1591#183)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = -23.055142520000000000
          Top = 127.118120000000000000
          Width = 74.144322780000000000
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
          Left = 187.338590000000000000
          Top = 62.881880000000000000
          Width = 312.457020000000000000
          Height = 29.897650000000000000
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7953152
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[(<Main_sherkat_db."sherkat">)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 502.677490000000000000
          Top = 94.488250000000000000
          Width = 57.000000000000000000
          Height = 23.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222)
          ParentFont = False
        end
        object Memo_mahal: TfrxMemoView
          Left = 171.968501500000000000
          Top = 90.708720000000000000
          Width = 327.575140000000000000
          Height = 26.118120000000000000
          DataSet = Main_sherkat_db
          DataSetName = 'Main_sherkat_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7953152
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[(<Main_sherkat_db."mahal">)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 660.283474330000000000
          Top = 126.992133310000000000
          Width = 55.936998110000000000
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
            #1591#171#1591#168#1591#1726' '#1593#169#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 427.273853940000000000
          Top = 126.992125980000000000
          Width = 74.834645670000000000
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
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#168#1591#167#1591#177#1592#8224#1591#167#1592#8230#1592#8225)
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
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
          #1591#173#1591#179#1591#167#1591#168' '#1591#180#1591#177#1592#402#1591#1726#1592#8225#1591#167)
        ParentFont = False
        RTLReading = True
      end
      object ReportSummary1: TfrxReportSummary
        Height = 154.385900000000000000
        Top = 343.937230000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 45.897650000000000000
          Width = 733.228820000000000000
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 468.913730000000000000
          Top = 84.419603329999970000
          Width = 185.196970000000000000
          Height = 28.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24767
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1591#167#1592#8222#1591#1563' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726' '#1591#180#1591#175#1592#8225' :')
          ParentFont = False
          RTLReading = True
        end
        object Memo12: TfrxMemoView
          Left = 275.217996670000000000
          Top = 83.865799999999970000
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
        object Memo15: TfrxMemoView
          Left = 468.913730000000000000
          Top = 54.183363330000020000
          Width = 193.196970000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24767
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1592#8225#1591#178#1592#1657#1592#8224#1592#8225' '#1592#8218#1591#167#1591#168#1592#8222' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726' :')
          ParentFont = False
          RTLReading = True
        end
        object Memo16: TfrxMemoView
          Left = 275.551330000000000000
          Top = 54.516696659999980000
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
        object Memo18: TfrxMemoView
          Left = 469.333333330000000000
          Top = 122.290660000000000000
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
        object Memo22: TfrxMemoView
          Left = 273.349103330000000000
          Top = 122.070190000000000000
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
        object Memo32: TfrxMemoView
          Left = 469.362400000000000000
          Top = 19.401360000000010000
          Width = 193.196970000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24767
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1592#8222#1592#1657#1591#1726#1591#177#1591#167#1593#1705' :')
          ParentFont = False
          RTLReading = True
        end
        object Memo33: TfrxMemoView
          Left = 276.000000000000000000
          Top = 19.734693330000030000
          Width = 33.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8222#1592#1657#1591#1726#1591#177)
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 310.000000000000000000
          Top = 55.183363330000020000
          Width = 155.078850000000000000
          Height = 18.897650000000000000
          DataSetName = 'rpt_havaleh_view_db'
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
            '[SUM(<Main_sherkat_db."bedehkar">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo17: TfrxMemoView
          Left = 311.338590000000000000
          Top = 84.086270000000010000
          Width = 152.480416670000000000
          Height = 20.157493330000000000
          DataSetName = 'rpt_summary1_db'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 7952384
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Main_sherkat_db."bestankar">,MasterData1,3)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo21: TfrxMemoView
          Left = 311.314780000000000000
          Top = 122.290660000000000000
          Width = 153.522263330000000000
          Height = 22.666666670000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<Main_sherkat_db."bedehkar">,MasterData1)-SUM(<Main_sherkat' +
              '_db."bestankar">,MasterData1,3)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo34: TfrxMemoView
          Left = 310.448670000000000000
          Top = 20.401360000000010000
          Width = 155.078850000000000000
          Height = 18.897650000000000000
          DataSetName = 'rpt_havaleh_view_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<Main_sherkat_db."meghdarl">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 114.165120000000000000
          Width = 733.228820000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object sherkat_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Sherkat')
    Left = 22
    Top = 18
  end
  object main_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     tarikh, username , shomareh, sherkat , mahal ,  sharh' +
        ' , havaleh , meghdarl, noe, kamion, kerayehl AS bedehkar, 0 AS b' +
        'estankar'
      'FROM         Barnameh_view')
    Left = 238
    Top = 308
  end
  object Main_sherkat_db: TfrxDBDataset
    UserName = 'Main_sherkat_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tarikh=tarikh'
      'username=username'
      'shomareh=shomareh'
      'sherkat=sherkat'
      'mahal=mahal'
      'sharh=sharh'
      'havaleh=havaleh'
      'meghdarl=meghdarl'
      'noe=noe'
      'kamion=kamion'
      'bedehkar=bedehkar'
      'bestankar=bestankar')
    DataSet = main_aq
    Left = 263
    Top = 310
  end
  object mahal_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from mahal_temp')
    Left = 35
    Top = 48
  end
  object noe_bar_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from noe_bar')
    Left = 115
    Top = 144
  end
  object mashin_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Kamion')
    Left = 89
    Top = 80
  end
  object mahal_bar_aq: TADOQuery
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct mahal_bar from barnameh')
    Left = 29
    Top = 110
  end
end
