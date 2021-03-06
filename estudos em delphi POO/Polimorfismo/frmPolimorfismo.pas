unit frmPolimorfismo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPoli = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    btnPolimorfismo2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btnPolimorfismo2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPoli: TfrmPoli;

implementation

uses
  PessoaController, ClienteController;

{$R *.dfm}

procedure TfrmPoli.btn1Click(Sender: TObject);
var
  Pessoa: TPessoa;
  Cliente: TCliente;
begin
  mmo1.Clear;
  Pessoa := TPessoa.Create;
  Cliente:= TCliente.Create;
  try
    Pessoa.Nome := 'Antoino';
    Pessoa.FDataNascimento := '07/06/1995';
    Pessoa.Email := 'antoniorony@hotmail.com';

    mmo1.Lines.Add(Pessoa.Nome);
    mmo1.Lines.Add(Pessoa.FDataNascimento);
    mmo1.Lines.Add(Pessoa.Email);
    mmo1.Lines.Add(Pessoa.FIdade.ToString);
    mmo1.Lines.Add(Cliente.Receber(1));
    mmo1.Lines.Add(Cliente.Receber(10.50));
    mmo1.Lines.Add(CurrToStr(Cliente.ValorCredito));
  finally
    Pessoa.Free;
    Cliente.Free;
  end;

end;

procedure TfrmPoli.btnPolimorfismo2Click(Sender: TObject);
var
  Pessoa: TPessoa;
  Cliente: TCliente;
begin
  mmo1.Clear;
  Pessoa := TPessoa.Create;
  Cliente:= TCliente.Create;
  try
    Pessoa.Nome := 'Antonio';
    Pessoa.FDataNascimento := '07/06/1995';
    Pessoa.Email := 'antoniorony@hotmail.com';

    mmo1.Lines.Add('================Pessoa=================');
    mmo1.Lines.Add(Pessoa.RetornaDados);

    Cliente.Nome := 'Rony';
    Cliente.FDataNascimento := '07/06/1995';
    Cliente.Email := 'antoniorony@hotmail.com';
    Cliente.Cpf := '12345678910';

    mmo1.Lines.Add('================Cliente================');
    mmo1.Lines.Add(Cliente.RetornaDados);
  finally
    Pessoa.Free;
    Cliente.Free;
  end;
end;

end.
