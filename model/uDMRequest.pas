unit uDMRequest;

interface

uses
  Winapi.Windows, Vcl.Dialogs,
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, Classe.DiretorioWEB, REST.Types, Datasnap.DBClient;


type
  TDMRequest = class(TDataModule)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
  private
    procedure ResetToDefaults();
  public
    function GETNotasFiscais(const pDataInicial, pDataFinal: string): string;
    function GET(const pChamada: String; pDataSet: TClientDataSet): Integer;
    function POST(const pChamada: String; pJSON: String): Integer;
    function AUTENTICAR(const pJSON: String): String;
  end;

var
  FEmpresa: string;
  FNomeEmpresa: string;
  FNomeUsuario: string;
  DMRequest: TDMRequest;
  FLembrarCredeniais: Boolean;

implementation

uses
  Vcl.Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMRequest }

function TDMRequest.AUTENTICAR(const pJSON: String): String;
begin
  Result := EmptyStr;
  try
    ResetToDefaults();
    RESTClient.BaseURL := TServicoWeb.Diretorio;

    RESTRequest.Resource := 'autenticar';
    RESTRequest.Method := TRESTRequestMethod.rmPOST;
    RESTRequest.AddBody(pJSON, ContentTypeFromString('application/json'));
    RESTRequest.Execute();
  except
    raise Exception.Create('Acesso não autorizado');
  end;

  if RESTResponse.StatusCode = 200 then
    Result := RESTResponse.JSONValue.ToString;
end;

function TDMRequest.GET(const pChamada: string; pDataSet: TClientDataSet): Integer;
begin
  RESTResponseDataSetAdapter.Dataset := pDataSet;

  ResetToDefaults();
  RESTClient.BaseURL := TServicoWeb.Diretorio;

  RESTRequest.Resource := IncludeTrailingPathDelimiter(FEmpresa) + pChamada;
  RESTRequest.Method := TRESTRequestMethod.rmGET;
  RESTRequest.Execute();

  Result := RESTResponse.StatusCode;
end;

function TDMRequest.GETNotasFiscais(const pDataInicial, pDataFinal: string): string;
begin
  Result := EmptyStr;
  ResetToDefaults();
  RESTClient.BaseURL := TServicoWeb.Diretorio;
  try
    RESTRequest.Resource := IncludeTrailingPathDelimiter(FEmpresa) + 'notasFiscais?dataInicial={dtInicial}&dataFinal={dtFinal}';
    RESTRequest.Method := TRESTRequestMethod.rmGET;
    RESTRequest.Params.AddUrlSegment('dtInicial', pDataInicial);
    RESTRequest.Params.AddUrlSegment('dtFinal', pDataFinal);
    RESTRequest.Execute();
  except
    if RESTResponse.StatusCode = 404 then
      Application.MessageBox('Não há dados para exibir', 'Atenção', MB_OK+MB_ICONEXCLAMATION);
  end;
  if RESTResponse.StatusCode = 200 then
    Result := RESTResponse.JSONValue.ToString;
end;

function TDMRequest.POST(const pChamada: String; pJSON: String): Integer;
begin
  ResetToDefaults();
  RESTClient.BaseURL := TServicoWeb.Diretorio;

  RESTRequest.Resource := IncludeTrailingPathDelimiter(FEmpresa) + pChamada;
  RESTRequest.Method := TRESTRequestMethod.rmPOST;
  RESTRequest.AddBody(pJSON, ContentTypeFromString('application/json'));
  RESTRequest.Execute();

  Result := RESTResponse.StatusCode;
end;

procedure TDMRequest.ResetToDefaults;
begin
  RESTClient.ResetToDefaults;
  RESTRequest.ResetToDefaults;
  RESTResponse.ResetToDefaults;
end;

end.
