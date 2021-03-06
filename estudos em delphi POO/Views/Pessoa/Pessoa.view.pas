unit Pessoa.view;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPessoa = class(TForm)
    btnEnviar: TButton;
    btnHeran?a: TButton;
    mmo1: TMemo;
    procedure btnEnviarClick(Sender: TObject);
    procedure btnHeran?aClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

uses
  PessoaController, ClienteController;

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
    //Alto acoplamento, ? quando uma classe depende
    //de outras classes que dependem de outras clases, util depende de dataUtils.
    //Baixo acoplamento, ? quando a dependencia de outras classes ? menor,
    //uma classe depende apenas de outra.

    //encadeamento de classes, ? um alto acoplamento
    //apenas dependencia de 1 classe ? um baixo acoplamento.

    ShowMessage(lPessoa.Nome + ' - ' +
                lPessoa.FIdade.CalcularIdade(lPessoa.FDataNascimento).ToString);
  finally
    lPessoa.Free;
  end;

end;

procedure TfrmPessoa.btnHeran?aClick(Sender: TObject);
var
  lPessoa: TPessoa;
  lCliente: TCliente;
begin
  lPessoa := TPessoa.Create();
  lCliente := TCliente.Create();

  try
    lPessoa.Nome := 'Rony';
    lPessoa.FDataNascimento := '10/10/1995';
    mmo1.Lines.Add('Nome '+lPessoa.Nome + ' - ' + lPessoa.FIdade.ToString);
    //Cliente herda de pessoa, mas possui um novo campo, o valor de cr?dito.
    lCliente.Nome := 'Antonio';
    lCliente.FDataNascimento := '07/06/1995';
    //lCliente.ValorCredito:= 7000.00;
    mmo1.Lines.Add('Nome '+lCliente.Nome + ' - ' +
                    lCliente.FIdade.ToString + ' - ' +
                    CurrToStr(lCliente.ValorCredito));

  finally
    lPessoa.Free;
    lCliente.Free;
  end;

end;

end.
