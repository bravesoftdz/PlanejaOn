//Gabriel Bobello
unit plFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Menus, RLReport, Vcl.Imaging.jpeg;

type
  TfnFormPrincipal = class(TForm)
    imgTelaPrincipal: TImage;
    mmPlanejaOn: TMainMenu;
    Objetivos1: TMenuItem;
    Matemtia1: TMenuItem;
    Portugus1: TMenuItem;
    tmrSplash: TTimer;
    procedure tmrSplashTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations}
  public
    { Public declarations }
    procedure ChamaTelaLogin;
  end;

var
  fnFormPrincipal: TfnFormPrincipal;

implementation

{$R *.dfm}

uses plSplashScreen, plLogin;


procedure TfnFormPrincipal.ChamaTelaLogin;
begin
  fnLogin := TfnLogin.Create(Self);
  fnLogin.Visible := False;
  fnLogin.ShowModal;
end;

procedure TfnFormPrincipal.FormCreate(Sender: TObject);
begin
  fnFormPrincipal.Visible := False;
  imgTelaPrincipal.Align := alClient;
end;

procedure TfnFormPrincipal.tmrSplashTimer(Sender: TObject);
begin
  tmrSplash.Enabled := False;
  fnSplashScreen := TfnSplashScreen.Create(Self);
  fnSplashScreen.Show;
end;

end.
