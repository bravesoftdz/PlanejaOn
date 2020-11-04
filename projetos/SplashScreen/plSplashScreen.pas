unit plSplashScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfnSplashScreen = class(TForm)
    Image1: TImage;
    pbSplashScreen: TProgressBar;
    tmrProgress: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure tmrProgressTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fnSplashScreen: TfnSplashScreen;

implementation

{$R *.dfm}

uses plFormPrincipal;

procedure TfnSplashScreen.FormCreate(Sender: TObject);
begin
  if TForm(Owner).ClassName = 'TfnFormPrincipal' then
    begin
      TForm(Owner).Visible := False;
      TForm(Owner).Enabled := False;
    end;

end;

procedure TfnSplashScreen.tmrProgressTimer(Sender: TObject);
begin
  pbSplashScreen.Position := pbSplashScreen.Position + 10;
  if pbSplashScreen.Position = 100 then
    begin
      tmrProgress.Enabled := False;
      TForm(Owner).Visible := True;
      TForm(Owner).Enabled := True;
      fnSplashScreen.Destroy;
      fnFormPrincipal.ChamaTelaLogin;
    end;
end;

end.
