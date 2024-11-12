object havaleh_jc_f: Thavaleh_jc_f
  Left = 217
  Top = 172
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608#1610' '#1670#1603
  ClientHeight = 315
  ClientWidth = 657
  Color = clBtnFace
  ParentFont = True
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
  object GroupBox2: TGroupBox
    Left = 32
    Top = 12
    Width = 601
    Height = 125
    BiDiMode = bdRightToLeft
    Caption = '    '#1605#1588#1582#1589#1575#1578' '#1670#1603'     '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object txtbank: TLabel
      Left = 525
      Top = 59
      Width = 22
      Height = 16
      Caption = #1576#1575#1606#1603
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txttarikh_ch: TLabel
      Left = 526
      Top = 25
      Width = 26
      Height = 16
      Caption = #1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtshobeh: TLabel
      Left = 520
      Top = 96
      Width = 31
      Height = 16
      Caption = #1588#1593#1576#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtbeh: TLabel
      Left = 231
      Top = 55
      Width = 53
      Height = 16
      Caption = #1576#1607' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtresidpk: TLabel
      Left = 227
      Top = 23
      Width = 70
      Height = 16
      Caption = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtmablagh_ch: TLabel
      Left = 233
      Top = 85
      Width = 48
      Height = 16
      Caption = #1605#1576#1604#1594' '#1670#1603
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object shobeh: TEdit
      Left = 360
      Top = 91
      Width = 145
      Height = 24
      TabOrder = 3
      OnKeyDown = shobehKeyDown
    end
    object bank: TDBGrid_Edit
      Left = 326
      Top = 83
      Width = 213
      Height = 14
      TabStop = False
      BiDiMode = bdRightToLeft
      Color = clSkyBlue
      DataSource = hesab_ds
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = bankDrawColumnCell
      OnEnter = bankEnter
      OnKeyDown = bankKeyDown
      EditPosition = lpMidlle
      EditSpacing = 0
      Edit_Width = 145
      FieldCodeSearch = 'shomareh'
      FieldStrSearch = 'bank'
      SQL = 'select * from hesab'
      FieldReturn = 'shomareh'
      Show_Message = 'Error'
      Edit_Color = clInfoBk
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'bank'
          Title.Alignment = taRightJustify
          Width = 100
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'shobeh'
          Title.Alignment = taRightJustify
          Width = 85
          Visible = True
        end>
    end
    object tarikh_ch: TMaskEdit
      Left = 417
      Top = 22
      Width = 87
      Height = 24
      BiDiMode = bdRightToLeft
      EditMask = '!9999/99/99;1;_'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      Text = '    /  /  '
      OnExit = tarikh_chExit
      OnKeyDown = tarikh_chKeyDown
    end
    object residpk: TEdit
      Left = 56
      Top = 19
      Width = 167
      Height = 24
      TabOrder = 4
      OnExit = residpkExit
      OnKeyDown = residpkKeyDown
    end
    object beh: TComboBox
      Left = 56
      Top = 51
      Width = 167
      Height = 24
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      ItemHeight = 16
      ItemIndex = 0
      ParentBiDiMode = False
      TabOrder = 5
      OnKeyDown = behKeyDown
      Items.Strings = (
        ''
        #1576#1575#1606#1603
        #1589#1606#1583#1608#1602#13)
    end
    object mablagh_ch: TEdit
      Left = 56
      Top = 81
      Width = 167
      Height = 24
      TabOrder = 6
      OnExit = mablagh_chExit
      OnKeyDown = mablagh_chKeyDown
    end
  end
  object grid: TDBGrid
    Left = 9
    Top = 150
    Width = 639
    Height = 119
    BiDiMode = bdRightToLeft
    Color = clInfoBk
    DataSource = havaleh_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'residpk'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 53
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
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sherkat'
        Title.Alignment = taCenter
        Title.Caption = #1588#1585#1603#1578
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 77
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
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bank'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1606#1603
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'babat'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1576#1578
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'shobeh'
        Title.Alignment = taCenter
        Title.Caption = #1588#1593#1576#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sh_ch'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mablagh_ch'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 67
        Visible = True
      end>
  end
  object amal: TBitBtn
    Left = 177
    Top = 281
    Width = 89
    Height = 28
    Caption = #1580#1587#1578#1580#1608
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 73
    Top = 280
    Width = 89
    Height = 29
    Caption = #1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = exittClick
  end
  object nav: TDBNavigator
    Left = 294
    Top = 283
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
  object hesab_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Hesab')
    Left = 379
    Top = 64
  end
  object hesab_ds: TDataSource
    DataSet = hesab_aq
    Left = 355
    Top = 64
  end
  object havaleh_view_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from havaleh_check')
    Left = 520
    Top = 200
  end
  object havaleh_ds: TDataSource
    DataSet = havaleh_view_aq
    Left = 552
    Top = 200
  end
end
