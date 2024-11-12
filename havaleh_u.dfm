object havaleh_f: Thavaleh_f
  Left = 209
  Top = 144
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1581#1608#1575#1604#1607' '#1576#1575#1585
  ClientHeight = 392
  ClientWidth = 695
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
  object txtsherkat: TLabel
    Left = 535
    Top = 42
    Width = 80
    Height = 18
    Caption = #1608#1575#1581#1583' '#1583#1585#1582#1608#1575#1587#1578#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtamar: TLabel
    Left = 442
    Top = 14
    Width = 136
    Height = 18
    Caption = #1578#1593#1583#1575#1583' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1575#1610#1606' '#1601#1575#1603#1578#1608#1585
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txth_index: TLabel
    Left = 212
    Top = 15
    Width = 94
    Height = 18
    Caption = #1588#1605#1575#1585#1607' '#1589#1608#1585#1578#1581#1587#1575#1576
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtresidpk: TLabel
    Left = 472
    Top = 327
    Width = 128
    Height = 18
    Caption = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583' '#1662#1585#1583#1575#1582#1578' '#1603#1585#1575#1610#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtmahal: TLabel
    Left = 272
    Top = 46
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
  object exitt: TBitBtn
    Left = 216
    Top = 355
    Width = 105
    Height = 31
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 360
    Top = 355
    Width = 105
    Height = 31
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = amalClick
  end
  object GroupBox1: TGroupBox
    Left = 46
    Top = 70
    Width = 601
    Height = 129
    BiDiMode = bdRightToLeft
    Caption = '    '#1605#1588#1582#1589#1575#1578' '#1581#1608#1575#1604#1607'    '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object txttarikh: TLabel
      Left = 538
      Top = 25
      Width = 26
      Height = 18
      Caption = #1578#1575#1585#1610#1582
    end
    object txttedad: TLabel
      Left = 539
      Top = 58
      Width = 23
      Height = 18
      Caption = #1578#1593#1583#1575#1583
    end
    object txtnoe: TLabel
      Left = 538
      Top = 94
      Width = 19
      Height = 18
      Caption = #1606#1608#1593
    end
    object txtshomareh1: TLabel
      Left = 329
      Top = 24
      Width = 44
      Height = 18
      Caption = #1575#1586' '#1588#1605#1575#1585#1607
    end
    object txtshomareh2: TLabel
      Left = 331
      Top = 61
      Width = 42
      Height = 18
      Caption = #1578#1575' '#1588#1605#1575#1585#1607
    end
    object txtlitraj: TLabel
      Left = 336
      Top = 91
      Width = 28
      Height = 18
      Caption = #1604#1610#1578#1585#1575#1688
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tarikh: TMaskEdit
      Left = 436
      Top = 20
      Width = 85
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
      OnEnter = tarikhEnter
      OnExit = tarikhExit
      OnKeyDown = tarikhKeyDown
    end
    object tedad: TEdit
      Left = 415
      Top = 54
      Width = 106
      Height = 26
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnExit = tedadExit
      OnKeyDown = tedadKeyDown
    end
    object noe: TComboBox
      Left = 415
      Top = 88
      Width = 107
      Height = 27
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ItemIndex = 0
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = #1606#1601#1578#1711#1575#1586
      OnKeyDown = noeKeyDown
      Items.Strings = (
        #1606#1601#1578#1711#1575#1586
        #1576#1606#1586#1610#1606
        #1606#1601#1578#1603#1608#1585#1607)
    end
    object shomareh1: TEdit
      Left = 44
      Top = 20
      Width = 273
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
      OnExit = shomareh1Exit
      OnKeyDown = shomareh1KeyDown
    end
    object shomareh2: TEdit
      Left = 44
      Top = 53
      Width = 273
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
      OnEnter = shomareh2Enter
      OnExit = shomareh2Exit
      OnKeyDown = shomareh2KeyDown
    end
    object litraj: TEdit
      Left = 148
      Top = 87
      Width = 169
      Height = 26
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      OnExit = litrajExit
      OnKeyDown = litrajKeyDown
    end
    object ins: TBitBtn
      Left = 67
      Top = 85
      Width = 75
      Height = 32
      TabOrder = 6
      OnClick = insClick
    end
    object hazf: TBitBtn
      Left = 10
      Top = 85
      Width = 51
      Height = 32
      Hint = #1662#1587' '#1575#1586' '#1581#1584#1601' '#1581#1608#1575#1604#1607' '#1607#1575' '#1580#1607#1578' '#1575#1593#1605#1575#1604' '#1578#1594#1610#1610#1585#1575#1578' '#1576#1585' '#1585#1608#1610' '#1579#1576#1578' '#1603#1604#1610#1603' '#1606#1605#1575#1610#1610#1583
      Caption = #1581#1584#1601
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = hazfClick
    end
  end
  object grid: TStringGrid
    Left = 9
    Top = 204
    Width = 676
    Height = 114
    TabStop = False
    BiDiMode = bdRightToLeft
    ColCount = 8
    FixedCols = 0
    RowCount = 2
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    ColWidths = (
      88
      82
      81
      54
      56
      101
      109
      71)
  end
  object amar: TEdit
    Left = 334
    Top = 10
    Width = 92
    Height = 26
    BiDiMode = bdRightToLeft
    Color = clActiveBorder
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = '  0'
  end
  object h_index: TEdit
    Left = 105
    Top = 11
    Width = 95
    Height = 25
    BevelKind = bkTile
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = 10992849
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnExit = h_indexExit
    OnKeyDown = h_indexKeyDown
  end
  object residpk: TEdit
    Left = 320
    Top = 324
    Width = 121
    Height = 26
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
    OnExit = residpkExit
    OnKeyDown = residpkKeyDown
  end
  object sherkat: TDBGrid_Edit
    Left = 365
    Top = 67
    Width = 163
    Height = 18
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = clSkyBlue
    DataSource = sherkat_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = sherkatDrawColumnCell
    OnEnter = sherkatEnter
    OnKeyDown = sherkatKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'sherkat'
    FieldStrSearch = 'sherkat'
    SQL = 'select * from sherkat'
    FieldReturn = 'sherkat'
    Edit_Color = clInfoBk
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'sherkat'
        Width = 135
        Visible = True
      end>
  end
  object reff: TBitBtn
    Left = 75
    Top = 40
    Width = 24
    Height = 27
    TabOrder = 9
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
    Margin = 0
  end
  object mahal: TDBGrid_Edit
    Left = 87
    Top = 68
    Width = 184
    Height = 15
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = clSkyBlue
    DataSource = mahal_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = mahalDrawColumnCell
    OnEnter = mahalEnter
    OnKeyDown = mahalKeyDown
    EditPosition = lpMidlle
    EditSpacing = 0
    Edit_Width = 153
    FieldCodeSearch = 'mahal'
    FieldStrSearch = 'mahal'
    SQL = 'select * from mahal_temp'
    FieldReturn = 'mahal'
    Edit_Color = clInfoBk
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'sherkat'
        Width = 78
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'mahal'
        Width = 78
        Visible = True
      end>
  end
  object sherkat_ds: TDataSource
    DataSet = sherkat_aq
    Left = 351
    Top = 41
  end
  object sherkat_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sherkat')
    Left = 327
    Top = 41
  end
  object havaleh_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from havaleh')
    Left = 600
    Top = 269
  end
  object havaleh_check_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from havaleh_check')
    Left = 512
    Top = 349
  end
  object mahal_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Mahal_temp')
    Left = 11
    Top = 43
  end
  object mahal_ds: TDataSource
    DataSet = mahal_aq
    Left = 43
    Top = 43
  end
end
