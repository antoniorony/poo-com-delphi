object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'Pessoa'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnEnviar: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btnEnviar'
    TabOrder = 0
    OnClick = btnEnviarClick
  end
  object btnHerança: TButton
    Left = 112
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btnHeran'#231'a'
    TabOrder = 1
    OnClick = btnHerançaClick
  end
  object mmo1: TMemo
    Left = 8
    Top = 47
    Width = 179
    Height = 226
    Lines.Strings = (
      'mmo1')
    TabOrder = 2
  end
end
