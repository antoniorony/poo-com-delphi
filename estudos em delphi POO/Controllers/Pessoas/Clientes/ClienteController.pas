unit ClienteController;

interface

uses
  PessoaController, SysUtils;

type
  TCliente = class(TPessoa)
    private
      FValorDeCredito: Currency;
    public
      property ValorCredito: Currency read FValorDeCredito;
      function Receber(Value: Integer): String; overload;
      function Receber(Value: Currency): String; overload;
  end;

implementation

{ TCliente }

function TCliente.Receber(Value: Integer): String;
begin
  Result:= Value.toString;
end;

function TCliente.Receber(Value: Currency): String;
begin
  FValorDeCredito := Value + (Value*0.10);
  Result:= CurrToStr(Value);
end;

end.