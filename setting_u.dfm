object setting_f: Tsetting_f
  Left = 336
  Top = 329
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1578#1606#1592#1610#1605#1575#1578
  ClientHeight = 149
  ClientWidth = 339
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
    Width = 329
    Height = 139
    BevelInner = bvLowered
    TabOrder = 0
    object txtgazoil: TLabel
      Left = 163
      Top = 14
      Width = 101
      Height = 18
      Caption = #1605#1576#1604#1594' '#1607#1585' '#1604#1610#1578#1585' '#1711#1575#1586#1608#1610#1610#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 15
      Width = 21
      Height = 18
      Caption = #1585#1610#1575#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txthafari: TLabel
      Left = 160
      Top = 44
      Width = 132
      Height = 18
      Caption = #1590#1585#1610#1576' '#1576#1575#1585#1606#1575#1605#1607' '#1607#1575#1610' '#1581#1601#1575#1585#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sqlserver_pathtxt: TLabel
      Left = 160
      Top = 77
      Width = 162
      Height = 18
      Caption = #1605#1587#1610#1585' '#1606#1589#1576' '#1576#1585#1606#1575#1605#1607' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object gazoil: TMonyEdit
      Left = 32
      Top = 11
      Width = 124
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = gazoilKeyDown
    end
    object amal: TBitBtn
      Left = 168
      Top = 104
      Width = 86
      Height = 31
      Caption = #1575#1589#1604#1575#1581
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
      Left = 46
      Top = 104
      Width = 89
      Height = 31
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
    object hafari: TEdit
      Left = 32
      Top = 42
      Width = 124
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyDown = hafariKeyDown
    end
    object sqlserver_path: TEdit
      Left = 10
      Top = 73
      Width = 113
      Height = 26
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyDown = hafariKeyDown
    end
    object btn_path: TBitBtn
      Left = 129
      Top = 74
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 5
      OnClick = btn_pathClick
    end
  end
  object setting_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from setting')
    Left = 260
    Top = 106
  end
end
