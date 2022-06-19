unit Utils;

interface

uses
  System.SysUtils;

type
  TUtils = class
    function CalcularIdade(Value: String): Integer;
  end;

implementation

{ TUtils }

function TUtils.CalcularIdade(Value: String): Integer;
begin
  Result :=  Trunc((now - StrToDate(Value)) / 365.25);
end;

end.
