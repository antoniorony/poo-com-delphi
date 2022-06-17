unit Login.Controller;

interface
type TLoginController = Class
  private
    FUserName: String;
    FPassword: String;

  public
    property UserName: String read FUserName write FUserName;
    property PassWord: String read FPassword write FPassword;


End;
implementation

{ TLoginController }

end.
