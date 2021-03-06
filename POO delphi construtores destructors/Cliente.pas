unit Cliente;

interface

uses
  Pessoa, SysUtils, Endereco;

type
  TCliente = class(TPessoa)
    private
      FValorDeCredito: Currency;
      FCpf: String;
      FEndereco: TEndereco;
    public
      constructor Create; overload;
      constructor Create(Valor: String); overload;
      constructor Create(Valor: TPessoa); overload;
      destructor Destroy; override; //reintroduce; -> utilizar se quiser atribuir a resposabilidade para si.
      property Cpf: String read FCpf write FCpf;   
      property Endereco: TEndereco read FEndereco write FEndereco;
      property ValorCredito: Currency read FValorDeCredito;
      function Receber(Value: Integer): String; overload;
      function Receber(Value: Currency): String; overload;
      function RetornaDados: String; override; //Sobrescreve o m?todo
      function Contrato: String; override;
  end;

implementation

{ TCliente }

function TCliente.Receber(Value: Integer): String;
begin
  Result:= Value.toString;
end;

function TCliente.Contrato: String;
begin
   Result:= 'Contrato cliente';
end;

constructor TCliente.Create;
begin
  Nome := 'Alessandro';
  FEndereco := TEndereco.Create;
end;

constructor TCliente.Create(Valor: String);
begin
    Nome := Valor;
end;

function TCliente.Receber(Value: Currency): String;
begin
  FValorDeCredito := Value + (Value*0.10);
  Result:= CurrToStr(Value);
end;

function TCliente.RetornaDados: String;
begin
  inherited;
  Result:= Dados + 'Contrato' + Contrato;
end;

constructor TCliente.Create(Valor: TPessoa);
begin
  Nome := Valor.Nome;
  FDataNascimento := Valor.FDataNascimento;
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
  FIdade.Free;

end;

end.
