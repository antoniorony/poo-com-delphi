unit Login.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmLoginView = class(TForm)
    pnlLogin: TPanel;
    btnLogar: TButton;
    edtUser: TEdit;
    edtPassword: TEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    procedure btnLogarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FLoginIsValidade: Boolean;
    procedure Logar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginView: TfrmLoginView;

implementation

uses
  Login.Controller, Login.Model;

{$R *.dfm}

procedure TfrmLoginView.btnLogarClick(Sender: TObject);
begin
  Logar();
end;

procedure TfrmLoginView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not (FLoginIsValidade) then
    Application.Terminate;
end;

procedure TfrmLoginView.FormCreate(Sender: TObject);
begin
  FLoginIsValidade := false;
end;

procedure TfrmLoginView.Logar();
var
  LoginController: TLoginController;
  LoginModel: TLoginModel;
begin
  LoginController := TLoginController.Create();
  LoginModel := TLoginModel.Create();
  try
    LoginController.UserName := edtUser.Text;
    LoginController.PassWord := edtPassword.Text;

    if(LoginModel.Logar(LoginController))then
    begin
      FLoginIsValidade := true;
      close();
    end
    else
      ShowMessage('Login incorreto!');
  finally
    LoginController.Free;
    LoginModel.Free;
  end;
end;

end.
