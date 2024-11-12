object megh_aval_sandoogh_f: Tmegh_aval_sandoogh_f
  Left = 340
  Top = 348
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1605#1602#1583#1575#1585' '#1575#1608#1604#1610#1607' '#1589#1606#1583#1608#1602
  ClientHeight = 92
  ClientWidth = 280
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
  object txtmeghdar: TLabel
    Left = 208
    Top = 28
    Width = 55
    Height = 18
    Caption = #1605#1602#1583#1575#1585' '#1575#1608#1604#1610#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 10
    Top = 27
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
  object amal: TBitBtn
    Left = 144
    Top = 55
    Width = 96
    Height = 33
    Caption = #1579#1576#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = amalClick
  end
  object exitt: TBitBtn
    Left = 23
    Top = 55
    Width = 96
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
  object meghdar: TMonyEdit
    Left = 37
    Top = 24
    Width = 163
    Height = 26
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnEnter = meghdarEnter
    OnExit = meghdarExit
    OnKeyDown = meghdarKeyDown
  end
  object etebar_aq: TADOQuery
    Active = True
    Connection = main_f.MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Etebar')
    Left = 43
    Top = 22
  end
end
