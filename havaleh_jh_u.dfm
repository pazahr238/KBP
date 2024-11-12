object havaleh_jh_f: Thavaleh_jh_f
  Left = 251
  Top = 248
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608#1610' '#1581#1608#1575#1604#1607' '#1576#1575#1585
  ClientHeight = 405
  ClientWidth = 649
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
  object exitt: TBitBtn
    Left = 104
    Top = 366
    Width = 89
    Height = 29
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = exittClick
  end
  object amal: TBitBtn
    Left = 208
    Top = 367
    Width = 89
    Height = 28
    Caption = #1580#1587#1578#1580#1608
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = amalClick
  end
  object GroupBox1: TGroupBox
    Left = 25
    Top = 9
    Width = 601
    Height = 218
    BiDiMode = bdRightToLeft
    Caption = '    '#1605#1588#1582#1589#1575#1578' '#1581#1608#1575#1604#1607'    '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    object txttarikh1: TLabel
      Left = 513
      Top = 93
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
    object txttedad: TLabel
      Left = 513
      Top = 168
      Width = 23
      Height = 18
      Caption = #1578#1593#1583#1575#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtnoe: TLabel
      Left = 287
      Top = 63
      Width = 19
      Height = 18
      Caption = #1606#1608#1593
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtshomarehh: TLabel
      Left = 287
      Top = 100
      Width = 30
      Height = 18
      Caption = #1588#1605#1575#1585#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtmablagh1: TLabel
      Left = 287
      Top = 139
      Width = 35
      Height = 18
      Caption = #1575#1586' '#1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtmablagh2: TLabel
      Left = 287
      Top = 177
      Width = 33
      Height = 18
      Caption = #1578#1575' '#1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtsherkat: TLabel
      Left = 513
      Top = 23
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
    object txttarikh2: TLabel
      Left = 513
      Top = 131
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
    object txth_index: TLabel
      Left = 235
      Top = 28
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
    object txtmahal: TLabel
      Left = 513
      Top = 60
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
    object tedad: TEdit
      Left = 395
      Top = 164
      Width = 107
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
    object tarikh2: TMaskEdit
      Left = 415
      Top = 126
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
      TabOrder = 7
      Text = '    /  /  '
      OnExit = tarikh2Exit
      OnKeyDown = tarikh2KeyDown
    end
    object tarikh1: TMaskEdit
      Left = 415
      Top = 88
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
    object noe: TComboBox
      Left = 190
      Top = 55
      Width = 87
      Height = 27
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnKeyDown = noeKeyDown
      Items.Strings = (
        ''
        #1606#1601#1578#1711#1575#1586
        #1576#1606#1586#1610#1606
        #1606#1601#1578#1603#1608#1585#1607)
    end
    object shomarehh: TEdit
      Left = 19
      Top = 93
      Width = 257
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
      OnExit = shomarehhExit
      OnKeyDown = shomarehhKeyDown
    end
    object mablagh1: TEdit
      Left = 19
      Top = 133
      Width = 257
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
      OnExit = mablagh1Exit
      OnKeyDown = mablagh1KeyDown
    end
    object mablagh2: TEdit
      Left = 20
      Top = 173
      Width = 257
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
      OnExit = mablagh2Exit
      OnKeyDown = mablagh2KeyDown
    end
    object h_index: TEdit
      Left = 99
      Top = 24
      Width = 131
      Height = 25
      BevelKind = bkTile
      BorderStyle = bsNone
      Color = 12369299
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object mahal: TDBGrid_Edit
      Left = 334
      Top = 80
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
    object reff: TBitBtn
      Left = 323
      Top = 53
      Width = 24
      Height = 27
      TabOrder = 12
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
    object sherkat: TDBGrid_Edit
      Left = 347
      Top = 44
      Width = 159
      Height = 13
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
      TabOrder = 6
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
          Width = 125
          Visible = True
        end>
    end
  end
  object grid: TDBGrid
    Left = 12
    Top = 234
    Width = 626
    Height = 119
    BiDiMode = bdRightToLeft
    Color = clInfoBk
    DataSource = havaleh_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sherkat'
        Title.Alignment = taCenter
        Title.Caption = #1588#1585#1603#1578
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mahal'
        Title.Alignment = taCenter
        Title.Caption = #1605#1581#1604
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shomareh1'
        Title.Alignment = taCenter
        Title.Caption = #1575#1586' '#1588#1605#1575#1585#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shomareh2'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575' '#1588#1605#1575#1585#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'h_index'
        Title.Alignment = taCenter
        Title.Caption = #1601#1575#1603#1578#1608#1585
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tedad'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 34
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'litraj'
        Title.Alignment = taCenter
        Title.Caption = #1604#1610#1578#1585#1575#1688
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 42
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'noe'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end>
  end
  object nav: TDBNavigator
    Left = 310
    Top = 368
    Width = 315
    Height = 25
    DataSource = havaleh_ds
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
    Flat = True
    Ctl3D = True
    Hints.Strings = (
      #13#1575#1608#1604#1610#1606' '#1581#1608#1575#1604#1607#10
      #13#1581#1608#1575#1604#1607' '#1602#1576#1604#1610
      #1581#1608#1575#1604#1607' '#1576#1593#1583#1610
      #1570#1582#1585#1610#1606' '#1581#1608#1575#1604#1607
      'Insert record'
      #1581#1584#1601' '#1581#1608#1575#1604#1607' '
      'Edit record'
      'Post edit'
      'Cancel edit'
      #1576#1607' '#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578)
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object rep: TBitBtn
    Left = 41
    Top = 357
    Width = 49
    Height = 45
    Hint = #1670#1575#1662' '#1711#1586#1575#1585#1588
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = repClick
    Glyph.Data = {
      360B0000424D360B00000000000036000000280000001D000000200000000100
      180000000000000B000000000000000000000000000000000000FBFAFAEAE7E6
      C8C1BDA69A94998C859E928AA89E98B4ABA5BEB6B2C6BFBBCEC8C4D5D0CDDDD8
      D6E3E0DEE9E6E5EFEDECF2F1F0F5F4F3F7F6F6F9F9F8FBFBFAFDFDFDFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F5F3F3D6CECCEBE6D7CFCABBBDB8
      AB8C7E7385756C6D5B5175645B8070678A7C74958881A0958EABA19BB6ADA8C0
      B9B4C9C2BED1CBC8D7D2D0DEDAD8E8E5E3F2F1F0FBFAFAFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00EDEAE9D5C2C3F7F0C7FFFFCFFFFFD2FFFFD4FFFFD6FF
      FFD9F0EFD8E8E6D4BAB3A9B0A89F8D8077796B616E5C5278685F83746B8D8078
      988B85A69B95BAB2ADD7D3D0F1EFEEFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00E8E4E2CD9899F7F0C8FFFFD1FFFFD3FFFFD5FFFFD7FFFFD9FFFFDBFFFFDD
      FFFFDFFFFFE1FFFFE4FFFFE6FFFFE7E9E6DAE1DDD2BDB5AFA69C949587808C7E
      75B4ABA6E3E0DEFAFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00ECEAE9C68686
      F7F0C9FFFFD3FFFFD4FFFFD7FFFFD9FFFFDBFFFFDDFFFFDFFFFFE1FFFFE3FFFF
      E5FFFFE7FFFFE9FFFFEBFFFFEDFFFFEFFFFFF1FFFFF4C4BEB79F948DE3E0DEF9
      F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00EDEAE9C68686F7F0CBFFFFD4FFFF
      D6FFFFD8FFFFDAFFFFDCFFFFDEFFFFE0FFFFE2FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B8E88E3E0DEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00EDEAE9C68686F7F0CCFFFFD6FFFFD8FFFFD9FFFFDCFF
      FFDEFFFFE0FFFFE2FFFFE0FFFFE0FFFFE0FFFFE0FFFFE0FFFFE0FFFFE0FFFFE0
      FFFFE0FFFFE0FFFFE09B8E88E3E0DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00EDEAE9C68686F7F0CDFFFFD7F2D7A6EFCF9EEAC08EEDC899EFCFA5F4DEBA
      F8EACBFEECDEFEEBDCFDE9DAFDE8D8FDE7D5FDE6D3FCE4D1FCE3CFFCE2CDFBE0
      CA9B8E88E3E0DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00EDEAE9C68686
      F7F0CFFFFFD9FFFFDBFFFFDDFFFFDFFFFFE1FFFFE3FDFAE1FDF9E1FAF2D5FAF2
      D5FAF2D5E5CFBD80685080605080605070605070584070584070504070504060
      4830604830604830B19075FFFFFFFFFFFF00EDEAE9C68686F7F0D0FFFFDAE7B7
      7DE2A86AECC693EECC9CFAF0D0FAF2D5FAF2D5FAF2D5FAF2D5DDCCBFA58D85E0
      D0C0B0A090B0A090B0A090B0A090B0A090B0A090B0A090B0A090B0A090B0A090
      604830DDB497FFFFFF00EDEAE9C68686F7F0D1FFFFDCFFFFDEFFFFE0FDF9DAFB
      F3D5F7E7C7F3DBB8F0D2ADFEECDEFEEBDCCEBCACB49C94FFE8E0FFF8F0FFF0E0
      FFE8E0F0D8D0F0D0B0F0C0A000A00000A00000A0007058406048308C6E54FFFF
      FF00EDEAE9C68686F7F0D3FFFFDDFFFFDFFFFFE1FFFFE4FFFFE6FFFFE7FFFFEA
      FFFFF4FFFFF4FFFFF4B49585E0D8D0FFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0E0
      E0F0D8C000FF1000FFB000A000806850705040604830FFFFFF00EDEAE9C68686
      F7F0D4FFFFDFF2D7ABEFCFA2EFCEA2EDC99DEDC99EF3DBB9F4DEC0FEECDEFEEB
      DCB09080F0E8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0E8E000FF1000
      FF1000A000907060706050604830FFFFFF00EDEAE9C68686F7F0D5FFFFE1FFFF
      E2FFFFE5FFFFE7FFFFE8FFFFEBFFFFEDFFFFF4FFFFF4FFFFF4B09880D0C0B0D0
      B8B0C0B0A0B0A090B09880A08880908070907060806860806050705850908070
      806860705840FFFFFF00EDEAE9C68686F7F0D7FFFFE2E9BC86E4AE75E6B47EF0
      D2AAF0D2ABF8EBD1FAF0DAFEECDEFEEBDCC0A090FFF8F0FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF8F0FFF0F0F0F0F0F0E8E0A08880907860806050FFFF
      FF00EDEAE9C68686F7F0D8FFFFE4FFFFE6FFFFE7FEFDE7FBF3DBFBF3DDF6E4CA
      F5E1C7FEECDEFEEBDCDFCAB8B9A18AD0B0A0C0A8A0D0B0A0C0A090B09080A080
      70907060806050706050807060B0A090A08870806050FFFFFF00EDEAE9C68686
      F7F0D9FFFFE5FAF0D1F9EDCFFAF0D5FFFFEEFFFFEFFFFFF1FFFFF4FFFFF4FFFF
      F4FFFFF4D9C6B6C0B0A0E0C8C0FFFFFFFFF8FFFFF8FFFFF0F0F0F0E0F0E0E0C0
      A8A0806050A09080C0B0A0806050FFFFFF00EDEAE9C68686F7F0DBFFFFE7FAF2
      D7FAF0D5F8ECD2F2D8B6F2D8B7F1D6B6F1D5B6FEECDEFEEBDCFDE9DAFDE8D8F1
      DCCBC0B0A0FFFFFFF0E8E0D0C8C0D0C8C0D0B8B0D0C0B0E0D0D0806860806050
      B09890B0A090FFFFFF00EDEAE9C68686F7F0DCFFFFE8FFFFEAFFFFEDFFFFEFFF
      FFF0FFFFF3FFFFF4FFFFF0FFFFF3FFFFF0FFFFF3FFFFF4FFFFF7E0C9B3F0E8E0
      FFFFFFFFFFFFFFFFFFFFF8FFFFF0F0F0E0D0D0B8B0806050BF9A83FFFFFFFFFF
      FF00EDEAE9C68686F7F0DDFFFFEAFFFFECFFFFEEFFFFF0FFFFF2FFFFF4FFFFF6
      FFFFF2FFFFF4FFFFF2FFFFF4FFFFF6FFFFF8FFFFFBD0B8B0FFFFFFF0F0F0D0C8
      C0D0C8C0D0B8B0C0B0B0E0D8D0807060866655FFFFFFFFFFFF00EDEAE9C68686
      F7F0DEFFFFEBFFFFEEFFFFEFFFFFF1FFFFF4FFFFF6FFFFF8FFFFF4FFFFF6FFFF
      F4FFFFF6FFFFF8FFFFFAFFFFFBFFFFFBE1D1CFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F8FFF0E8E0D0B8B0806050FFFFFFFFFFFF00EDEAE9C68686F7F0DFFFFFEDF2D7
      B3EFCFA8EFCFA9EFCFACEFCFADF0D3B4F7E7D5FEECDEFEEBDCFDE9DAFDE8D8FD
      E7D5FDE6D3FCE4D1E8D0C1D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0D0C0B0
      D0C0B0FFFFFFFFFFFF00EDEAE9C68686F7F0E1FFFFEFFFFFF0FFFFF3FFFFF5FF
      FFF7FFFFF9FFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFB
      FFFFFBFCE2CDC1BAB69B8E88D6D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00EDEAE9C68686F7F0E2FFFFF0EABE8FE5B17DE5B17DF1D5B6F1D5B7F3DAC0
      F1D5B7F1D5B7F1D5B7F1D5B7F1D5B7F1D5B7F1D5B7F1D5B7F1D5B7F1D5B7C1BA
      B69B8E88D6D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00EDEAE9C68686
      F7F0E3FFFFF1FFFFF4FFFFF6FFFFF8FCF6ECFCF6EEFBF4ECFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1BAB69B8E88D6D1CFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00EDEAE9C68686F7F0E4FFFFF3FFFF
      F5FFFFF7FFFFF9FFFFFBFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1BAB6988B84D6D1CFF7F6F5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00EEEBEAC68686F7F0E6C0959564B8D1FFFFF9FFFFFBA5
      B8C6DBEBF2FFFFFFFCF9F9D9E4EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC2BAB89B8E88D8D3D1F8F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00F2F0EFC68686F0E0D9DBB0AC65ACC3BFD1D9FFFFFDB07276218FB1FAF4F4
      DAACAC5670887C9FB3FFFFFFB97C7F1B98C0E0DCE0F8EFEF69788FA2D2E3C5BD
      BBA29691DDD9D7F9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F9F7F7D5A5A5
      A26C73BE6F6F5F7C8F6A7A8BBC6B6BBC6B6B1A90B1C88585CA8989B883882C91
      AFE2BEBEE2BEBE78B0C69BB4C3F5E9E9E2CBCC1899BCBEADADB5ADAAE7E4E3FC
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFCFCF5F5F432B9D165C1D31DAE
      CAA1BAC108C2D985B9C627B2CD99B2C17DAEBD95C0CB62A9BA748091BAA3A945
      9DB3828898A26C73C68181269BBA9B8E8ECDCBCAF2F1F1FEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFFFCFCFCCDE4E792CFDAABD0D7DCDEDE92CFDB65
      C9DBB3CACEB6CED26BC7D970C5D8AEC3C585C6D425C0D651C1D698ACAF08C4DA
      46BDD266B8C9BABCBFE3E4E4FAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object havaleh_view_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    AfterScroll = havaleh_view_aqAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from havaleh order by tarikh')
    Left = 505
    Top = 256
  end
  object havaleh_ds: TDataSource
    DataSet = havaleh_view_aq
    Left = 537
    Top = 256
  end
  object sherkat_ds: TDataSource
    DataSet = sherkat_aq
    Left = 353
    Top = 18
  end
  object sherkat_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sherkat')
    Left = 329
    Top = 18
  end
  object havaleh_search_db: TfrxDBDataset
    UserName = 'havaleh_search_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sherkat=sherkat'
      'mahal=mahal'
      'shomareh1=shomareh1'
      'shomareh2=shomareh2'
      'h_index=h_index'
      'tarikh=tarikh'
      'tedad=tedad'
      'litraj=litraj'
      'mablagh=mablagh'
      'noe=noe'
      'residpk=residpk')
    DataSet = havaleh_view_aq
    Left = 10
    Top = 346
  end
  object rpt_havaleh_search: TfrxReport
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
    ReportOptions.LastChange = 39346.523744027780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 10
    Top = 372
    Datasets = <
      item
        DataSet = havaleh_search_db
        DataSetName = 'havaleh_search_db'
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
        Top = 377.953000000000000000
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
        Height = 29.941866680000000000
        Top = 204.094620000000000000
        Width = 778.205227000000000000
        DataSet = havaleh_search_db
        DataSetName = 'havaleh_search_db'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 230.922652730000000000
          Width = 90.826839990000000000
          Height = 29.858267716535400000
          DataField = 'tedad'
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[havaleh_search_db."tedad"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 322.050590840000000000
          Width = 86.345776120000000000
          Height = 29.858267716535400000
          DataField = 'shomareh2'
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[havaleh_search_db."shomareh2"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 143.488250000000000000
          Width = 87.181200000000000000
          Height = 29.858267716535400000
          DataField = 'tarikh'
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[havaleh_search_db."tarikh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 39.687693340000000000
          Width = 103.299320000000000000
          Height = 29.730983330000000000
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
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
            '[havaleh_search_db."mablagh"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 696.561069990000000000
          Width = 45.354259920000000000
          Height = 29.858267716535400000
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
          Left = 409.028756660000000000
          Width = 71.810969920000000000
          Height = 29.858267716535400000
          DataField = 'shomareh1'
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[havaleh_search_db."shomareh1"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 567.553803330000000000
          Width = 128.503919920000000000
          Height = 29.858267716535400000
          DataField = 'sherkat'
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[havaleh_search_db."sherkat"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 480.708720000000000000
          Width = 86.929089920000000000
          Height = 29.858267716535400000
          DataField = 'mahal'
          DataSet = havaleh_search_db
          DataSetName = 'havaleh_search_db'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8410899
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[havaleh_search_db."mahal"]')
          ParentFont = False
          RTLReading = True
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 870756
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 124.292620010000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo3: TfrxMemoView
          Left = 322.069050850000000000
          Top = 82.518460020000000000
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
            #1591#1726#1591#167' '#1591#180#1592#8230#1591#167#1591#177#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 144.123376660000000000
          Top = 82.298546670000000000
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
            #1591#1726#1591#167#1591#177#1592#1657#1591#174)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 230.942950010000000000
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
            #1591#1726#1591#185#1591#175#1591#167#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 40.102350000000000000
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
            #1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 696.559060000000000000
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
          Left = 408.663883330000000000
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
            #1591#167#1591#178' '#1591#180#1592#8230#1591#167#1591#177#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 567.522263330000000000
          Top = 82.435683330000000000
          Width = 128.503919920000000000
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
            #1592#710#1591#167#1591#173#1591#175' '#1591#175#1591#177#1591#174#1592#710#1591#167#1591#179#1591#1726#1592#1657)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 480.677180000000000000
          Top = 82.102350000000000000
          Width = 86.149559920000000000
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
          #1591#172#1591#179#1591#1726#1591#172#1592#710#1592#1657' '#1591#173#1592#710#1591#167#1592#8222#1592#8225' '#1592#8225#1591#167)
        ParentFont = False
      end
      object ReportSummary1: TfrxReportSummary
        Height = 60.472480000000000000
        Top = 294.803340000000000000
        Width = 778.205227000000000000
        object Memo14: TfrxMemoView
          Left = 525.354670000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 230.551330000000000000
          Top = 15.118120000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 870756
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 275.905690000000000000
          Top = 15.118120000000000000
          Width = 234.330860000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<havaleh_search_db."mablagh">,MasterData1,2)]')
          ParentFont = False
          RTLReading = True
        end
      end
    end
  end
  object mahal_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Mahal_temp')
    Left = 444
    Top = 69
  end
  object mahal_ds: TDataSource
    DataSet = mahal_aq
    Left = 476
    Top = 69
  end
end
