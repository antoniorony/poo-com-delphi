unit Pessoa.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPessoa = class(TForm)
    btnEnviar: TButton;
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

uses
  Pessoa.Controller;

{$R *.dfm}

procedure TfrmPessoa.btnEnviarClick(Sender: TObject);
var
  lPessoa: TPessoa;
begin
  lPessoa := TPessoa.Create;

  try
    lPessoa.Nome:= 'Antonio';
    lPessoa.Tipo:= 'F';
    lPessoa.Email:= 'antoniorony2013@gmail.com';
    lPessoa.FDataNascimento:= '07/06/1995';
    //Alto acoplamento, � quando uma classe depende
    //de outras classes que dependem de outras clases, util depende de dataUtils.
    //Baixo acoplamento, � quando a dependencia de outras classes � menor,
    //uma classe depende apenas de outra.

    //encadeamento de classes, � um alto acoplamento
    //apenas dependencia de 1 classe � um baixo acoplamento.

    ShowMessage(lPessoa.Nome + ' - ' +
                lPessoa.FIdade.CalcularIdade(lPessoa.FDataNascimento).ToString);
  finally
    lPessoa.Free;
  end;

end;

end.