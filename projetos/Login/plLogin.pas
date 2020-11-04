unit plLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Data.FMTBcd,
  Data.DB, Data.SqlExpr, FireDAC.Comp.Client;

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
    SQLConnection1: TSQLConnection;
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure tbExitClick(Sender: TObject);
    procedure tbEntryClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChamaInformacoesLogin;
  public
    { Public declarations }
  end;

var
  fnLogin: TfnLogin;
  bdLogin, bdSenha: String;

implementation

{$R *.dfm}

uses pldmPlaneja;

procedure TfnLogin.ChamaInformacoesLogin;
var
  Query: TFDQuery;
begin
  try
    Query := TFDQuery.Create(nil);
    Query.Connection := dmPlaneja.Conexão;

    Query.SQL.Add('select LOGIN, SENHA from TLOGIN where LOGIN = '+ QuotedStr(edLogin.Text));
    Query.Open;

    if not Query.Eof then
      begin
        bdLogin := Query.FieldByName('LOGIN').AsString;
        bdSenha := Query.FieldByName('SENHA').AsString;
      end;


    Query.Close;
  finally
    FreeAndNil(Query);
  end;

end;

procedure TfnLogin.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      ChamaInformacoesLogin;
      if (bdSenha = edSenha.Text) and (bdLogin = edLogin.Text) then
        begin
          fnLogin.Close;
        end
      else
        begin
          ShowMessage('Senha ou login incorretos!');
          edSenha.Clear;
          edLogin.SetFocus;
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
  ChamaInformacoesLogin;
  if (bdSenha = edSenha.Text) and (bdLogin = edLogin.Text) then
    begin
      fnLogin.Close;
    end
  else
    begin
      ShowMessage('Senha ou login incorretos!');
      edSenha.Clear;
      edLogin.SetFocus;
    end;
end;

procedure TfnLogin.tbExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
