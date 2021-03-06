unit uPrincipalTela;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    mmPrincipal: TMainMenu;
    Entidade1: TMenuItem;
    Cadastros1: TMenuItem;
    Funcionarios1: TMenuItem;
    Setores1: TMenuItem;
    Polimorfismo1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure Polimorfismo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Login.View, frmPolimorfismo;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  frmLoginView := TfrmLoginView.Create(nil);
  try
    frmLoginView.ShowModal();
  finally
    frmLoginView.Free;
  end;
end;

procedure TForm1.Polimorfismo1Click(Sender: TObject);
var
  lPolimorfismo: TfrmPoli;
begin
  lPolimorfismo:= Tfrmpoli.Create(nil);
  try
    lPolimorfismo.ShowModal();
  finally
    lPolimorfismo.Free;
  end;
end;

end.
