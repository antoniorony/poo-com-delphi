unit ClienteController;

interface

uses
  PessoaController, SysUtils;

type
  TCliente = class(TPessoa)
    private
      FValorDeCredito: Currency;
      FCpf: String;
    public
      property Cpf: String read FCpf write FCpf;
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

end.
