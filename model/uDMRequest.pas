unit uDMRequest;

interface

uses
  Winapi.Windows,
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, Classe.DiretorioWEB, REST.Types;


type
  TDMRequest = class(TDataModule)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    FDMemTable: TFDMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
    function GET(const pCodEmpresa, pChamada: String; pMemTable: TFDMemTable): Integer;
    function POST(const pCodEmpresa, pChamada: String; pJSON: String): Integer;
    function AUTENTICAR(const pJSON: String): String;
  end;

var
  DMRequest: TDMRequest;

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
    RESTClient.ResetToDefaults;
    RESTRequest.ResetToDefaults;
    RESTResponse.ResetToDefaults;
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

function TDMRequest.GET(const pCodEmpresa, pChamada: string; pMemTable: TFDMemTable): Integer;
begin
  RESTResponseDataSetAdapter.Dataset := pMemTable;

  RESTClient.ResetToDefaults;
  RESTRequest.ResetToDefaults;
  RESTResponse.ResetToDefaults;
  RESTClient.BaseURL := TServicoWeb.Diretorio;

  RESTRequest.Resource := IncludeTrailingPathDelimiter(pCodEmpresa) + pChamada;
  RESTRequest.Method := TRESTRequestMethod.rmGET;
  RESTRequest.Execute();

  Result := RESTResponse.StatusCode;
end;

function TDMRequest.POST(const pCodEmpresa, pChamada: String; pJSON: String): Integer;
begin
  RESTClient.ResetToDefaults;
  RESTRequest.ResetToDefaults;
  RESTResponse.ResetToDefaults;
  RESTClient.BaseURL := TServicoWeb.Diretorio;

  RESTRequest.Resource := IncludeTrailingPathDelimiter(pCodEmpresa) + pChamada;
  RESTRequest.Method := TRESTRequestMethod.rmPOST;
  RESTRequest.AddBody(pJSON, ContentTypeFromString('application/json'));
  RESTRequest.Execute();

  Result := RESTResponse.StatusCode;
end;

end.
