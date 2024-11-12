object bank_f: Tbank_f
  Left = 300
  Top = 244
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1588#1582#1589#1575#1578' '#1576#1575#1606#1705#1607#1575
  ClientHeight = 125
  ClientWidth = 295
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
  object txtbank: TLabel
    Left = 241
    Top = 19
    Width = 39
    Height = 19
    Caption = #1606#1575#1605' '#1576#1575#1606#1603
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtshobeh: TLabel
    Left = 241
    Top = 59
    Width = 42
    Height = 19
    Caption = #1603#1583' '#1588#1593#1576#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object amal: TBitBtn
    Left = 165
    Top = 87
    Width = 96
    Height = 33
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = amalClick
    OnKeyDown = amalKeyDown
  end
  object exitt: TBitBtn
    Left = 27
    Top = 87
    Width = 96
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
  object shobeh: TEdit
    Left = 57
    Top = 55
    Width = 153
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
    OnExit = shobehExit
    OnKeyDown = shobehKeyDown
  end
  object bank: TDBGrid_Edit
    Left = 37
    Top = 41
    Width = 193
    Height = 20
    TabStop = False
    BiDiMode = bdLeftToRight
    Color = clSkyBlue
    DataSource = bank_ds
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
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
    Edit_Width = 153
    FieldCodeSearch = 'code'
    FieldStrSearch = 'bank'
    SQL = 'select * from bank'
    FieldReturn = 'code'
    Edit_Color = clInfoBk
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'shobeh'
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'bank'
        Width = 80
        Visible = True
      end>
  end
  object bank_ds: TDataSource
    DataSet = bank_aq
    Left = 28
    Top = 13
  end
  object bank_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Bank')
    Left = 3
    Top = 13
  end
end
