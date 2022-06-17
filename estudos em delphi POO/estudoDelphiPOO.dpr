program estudoDelphiPOO;

uses
  Vcl.Forms,
  uPrincipalTela in 'uPrincipalTela.pas' {Form1},
  Login.Controller in 'Controllers\Login\Login.Controller.pas',
  Login.Model in 'Model\Login\Login.Model.pas',
  Login.View in 'Views\Login\Login.View.pas' {frmLoginView},
  Pessoa.Controller in 'Controllers\Pessoas\Pessoa.Controller.pas',
  Utils in 'Utils\Utils.pas',
  Pessoa.view in 'Views\Pessoa\Pessoa.view.pas' {frmPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmLoginView, frmLoginView);
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.Run;
end.
