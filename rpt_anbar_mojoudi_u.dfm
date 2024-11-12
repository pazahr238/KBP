object rpt_anbar_mojoudi_f: Trpt_anbar_mojoudi_f
  Left = 291
  Top = 350
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = #1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585
  ClientHeight = 101
  ClientWidth = 339
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
  object prog: TProgressBar
    Left = 44
    Top = 29
    Width = 257
    Height = 17
    TabOrder = 0
  end
  object Timer: TTimer
    Interval = 15
    Left = 12
    Top = 23
  end
end
