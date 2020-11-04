unit plLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TfnLogin = class(TForm)
    edLogin: TEdit;
    edSenha: TEdit;
    lbLogin: TLabel;
    lbSenha: TLabel;
    ToolBar1: TToolBar;
    tbEntry: TToolButton;
    ToolButton2: TToolButton;
    tbExit: TToolButton;
    pnTelaLogin: TPanel;
    imgList: TImageList;
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure tbExitClick(Sender: TObject);
    procedure tbEntryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fnLogin: TfnLogin;
  bdLogin, bdSenha: String;

implementation

{$R *.dfm}

uses pldmPlaneja;

procedure TfnLogin.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      bdSenha := dmPlaneja.tbLogin.FieldValues['SENHA'];
      bdLogin := dmPlaneja.tbLogin.FieldValues['LOGIN'];
      if (bdSenha = edSenha.Text) and (bdLogin = edLogin.Text) then
        begin
          fnLogin.Close;
        end
      else
        begin
          ShowMessage('Senha ou login incorretos!');
          edSenha.Clear;
          edSenha.SetFocus;
        end;
    end;
end;

procedure TfnLogin.FormActivate(Sender: TObject);
begin
  dmPlaneja.Conexão.Connected := True;
  dmPlaneja.tbLogin.Active := True;
  edLogin.SetFocus;
end;

procedure TfnLogin.tbEntryClick(Sender: TObject);
begin
  bdSenha := dmPlaneja.tbLogin.FieldValues['SENHA'];
  bdLogin := dmPlaneja.tbLogin.FieldValues['LOGIN'];
  if (bdSenha = edSenha.Text) and (bdLogin = edLogin.Text) then
    begin
      fnLogin.Close;
    end
  else
    begin
      ShowMessage('Senha ou login incorretos!');
      edSenha.Clear;
      edSenha.SetFocus;
    end;
end;

procedure TfnLogin.tbExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
