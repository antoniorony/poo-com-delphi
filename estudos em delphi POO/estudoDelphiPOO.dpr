program estudoDelphiPOO;

uses
  Vcl.Forms,
  uPrincipalTela in 'uPrincipalTela.pas' {Form1},
  Login.Controller in 'Controllers\Login\Login.Controller.pas',
  Login.Model in 'Model\Login\Login.Model.pas',
  Login.View in 'Views\Login\Login.View.pas' {frmLoginView},
  PessoaController in 'Controllers\Pessoas\PessoaController.pas',
  Utils in 'Utils\Utils.pas',
  Pessoa.view in 'Views\Pessoa\Pessoa.view.pas' {frmPessoa},
  ClienteController in 'Controllers\Pessoas\Clientes\ClienteController.pas',
  frmPolimorfismo in 'Polimorfismo\frmPolimorfismo.pas' {frmPoli};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmLoginView, frmLoginView);
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.CreateForm(TfrmPoli, frmPoli);
  Application.Run;
end.
