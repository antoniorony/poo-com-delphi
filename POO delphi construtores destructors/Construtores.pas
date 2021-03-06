unit Construtores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Cliente, Pessoa;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  lCliente, lCliente2, lCliente3: TCliente;
  lPessoa: TPessoa;
begin
  lPessoa := TPessoa.Create();
  lCliente  := TCliente.Create();
  lCliente2 := TCliente.Create();
  lCliente3 := TCliente.Create();
  try
    lPessoa.Nome := 'Douglas';
    lPessoa.FDataNascimento := '01/01/2001';

    lCliente2  := TCliente.Create('Marcelino');
    lCliente3  := TCliente.Create(lPessoa);

    mmo1.Lines.Add('Cliente 1: '+lCliente.Nome);
    mmo1.Lines.Add('Endereco Cliente 1: '+lCliente.Endereco.Logradouro +
                    ' N?mero: ' + lCliente.Endereco.Numero);
    mmo1.Lines.Add('Cliente 2: '+lCliente2.Nome);
    mmo1.Lines.Add('Cliente 3: '+lCliente3.Nome + ' - ' + lCliente3.FDataNascimento);
//    mmo1.Lines.Add('Pessoa: '+lPessoa.Nome);
  finally
    lCliente.Free;
    lCliente2.Free;
    lCliente3.Free;
    lPessoa.Free;
  end;

end;

end.
