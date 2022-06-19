object frmPoli: TfrmPoli
  Left = 0
  Top = 0
  Caption = 'Polimorfismo'
  ClientHeight = 283
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 375
    Top = 8
    Width = 97
    Height = 49
    Caption = 'btn1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object mmo1: TMemo
    Left = 8
    Top = 8
    Width = 337
    Height = 201
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object btnPolimorfismo2: TButton
    Left = 375
    Top = 72
    Width = 97
    Height = 49
    Caption = 'btnPolimorfismo2'
    TabOrder = 2
    OnClick = btnPolimorfismo2Click
  end
end
