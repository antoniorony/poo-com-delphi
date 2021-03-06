unit PessoaController;

interface

uses
  Utils, SysUtils;

type
  TPessoa = class
    private
      FId: Integer;
      FNome: String;
      FTipo: String;
      FEmail: String;
      FDados: String;
      function GetId(): Integer;

    public
      FIdade: TUtils;
      FDataNascimento: String;
      property Id: Integer read GetId;  //Id torna-se apenas leitura, assim ficando emcapsulado.
      property Nome: String read FNome write FNome;
      property Tipo: String read FTipo write FTipo;
      property Email: String read FEmail write FEmail;
      property Dados: String read FDados write FDados;
      function Idade: Integer;
      function RetornaDados: String; virtual; //permite que as classes que herdam dele possam sobrescrever
      //esta function.
      function Contrato: String; virtual; abstract; // define que o m?todo ? abstrato,
      //assim n?o preciso implementar aqui, apenas nas que herdem dele.
      procedure CriarId(Value: Integer);
      constructor Create;

  end;

implementation

{ TPessoa }

function TPessoa.GetId: Integer;
begin
  Result:= FId;
end;

function TPessoa.Idade: Integer;
begin
 Result:= Trunc((now - StrToDate(FDataNascimento))/ 365.25) ;
end;

function TPessoa.RetornaDados: String;
begin
  Dados:= 'Nome: ' + FNome +
           'Data Nascimento: ' + FDataNascimento +
           'Idade: ' + Self.Idade.ToString;
end;

constructor TPessoa.Create;
begin
  FIdade := TUtils.Create;
end;

procedure TPessoa.CriarId(Value: Integer);
begin
  FId := Value*5;
end;

end.
