object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 476
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmPrincipal
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 953
    Height = 480
    TabOrder = 0
  end
  object mmPrincipal: TMainMenu
    Left = 8
    Top = 48
    object Entidade1: TMenuItem
      Caption = 'Entidade'
      object Cadastros1: TMenuItem
        Caption = 'Cadastro'
        object Funcionarios1: TMenuItem
          Caption = 'Funcionarios'
        end
        object Setores1: TMenuItem
          Caption = 'Setores'
        end
      end
      object Polimorfismo1: TMenuItem
        Caption = 'Polimorfismo'
        OnClick = Polimorfismo1Click
      end
    end
  end
end
