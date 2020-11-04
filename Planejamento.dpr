program Planejamento;

uses
  Vcl.Forms,
  plFormPrincipal in 'plFormPrincipal.pas' {fnFormPrincipal},
  plSplashScreen in 'projetos\SplashScreen\plSplashScreen.pas' {fnSplashScreen},
  plLogin in 'projetos\Login\plLogin.pas' {fnLogin},
  pldmPlaneja in 'DataModules\pldmPlaneja.pas' {dmPlaneja: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfnFormPrincipal, fnFormPrincipal);
  Application.CreateForm(TfnLogin, fnLogin);
  Application.CreateForm(TdmPlaneja, dmPlaneja);
  Application.Run;
end.
