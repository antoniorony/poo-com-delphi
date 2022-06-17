unit Login.Model;

interface
uses
   Login.Controller;

type TLoginModel = class
  private

  public
    function Logar(pLogin: TLoginController): Boolean;
end;

implementation


{ TLoginModel }


{ TLoginModel }

function TLoginModel.Logar(pLogin: TLoginController): Boolean;
begin
  Result:= false;

  if (pLogin.UserName = 'admin') and (pLogin.PassWord = 'admin') then
    Result := true;
end;

end.
