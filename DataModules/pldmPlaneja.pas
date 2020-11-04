unit pldmPlaneja;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Comp.UI;

type
  TdmPlaneja = class(TDataModule)
    Conex�o: TFDConnection;
    tbLogin: TFDTable;
    dsTables: TDataSource;
    tbLoginID: TIntegerField;
    tbLoginLOGIN: TStringField;
    tbLoginSENHA: TStringField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPlaneja: TdmPlaneja;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
