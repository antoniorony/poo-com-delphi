object frmLoginView: TfrmLoginView
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 193
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLogin: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 193
    TabOrder = 0
    object lblUsuario: TLabel
      Left = 256
      Top = 13
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object lblSenha: TLabel
      Left = 256
      Top = 65
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object btnLogar: TButton
      Left = 382
      Top = 107
      Width = 75
      Height = 51
      Caption = 'Logar'
      TabOrder = 0
      OnClick = btnLogarClick
    end
    object edtUser: TEdit
      Left = 256
      Top = 32
      Width = 201
      Height = 21
      TabOrder = 1
    end
    object edtPassword: TEdit
      Left = 256
      Top = 80
      Width = 201
      Height = 21
      TabOrder = 2
    end
  end
end
