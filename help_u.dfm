object help_f: Thelp_f
  Left = 315
  Top = 206
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1585#1575#1607#1606#1605#1575#1610' '#1576#1585#1606#1575#1605#1607
  ClientHeight = 348
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object exitt: TBitBtn
    Left = 130
    Top = 311
    Width = 92
    Height = 32
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = exittClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 337
    Height = 297
    Color = 14136206
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object ValueListEditor1: TValueListEditor
      Left = 4
      Top = 4
      Width = 329
      Height = 288
      BiDiMode = bdRightToLeft
      DisplayOptions = [doAutoColResize, doKeyColFixed]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAlwaysShowEditor, goThumbTracking]
      ParentBiDiMode = False
      Strings.Strings = (
        #1582#1585#1608#1580' '#1575#1586' '#1576#1585#1606#1575#1605#1607'=Ctrl + X'
        #1576#1587#1578#1606' '#1607#1585' '#1662#1606#1580#1585#1607'=Shift + Esc'
        #1579#1576#1578' '#1576#1575#1585#1606#1575#1605#1607'=Ctrl + B'
        #1608#1585#1608#1583' '#1587#1606#1583' '#1662#1585#1583#1575#1582#1578#1610'=Ctrl + P'
        #1585#1575#1607#1606#1605#1575'=F1'
        #1579#1576#1578' '#1581#1608#1575#1604#1607' '#1576#1575#1585' '#1580#1583#1610#1583'=Ctrl + H')
      TabOrder = 0
      ColWidths = (
        150
        173)
    end
  end
end
