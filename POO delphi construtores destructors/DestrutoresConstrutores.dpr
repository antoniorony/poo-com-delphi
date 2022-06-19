program DestrutoresConstrutores;

uses
  Vcl.Forms,
  Construtores in 'Construtores.pas' {Form2},
  Pessoa in 'Pessoa.pas',
  Cliente in 'Cliente.pas',
  Utils in 'Utils.pas',
  Endereco in 'Endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
