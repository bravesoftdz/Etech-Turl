unit LibUtils;

interface

uses
  System.JSON, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Response.Adapter, Datasnap.DBClient, Data.DB, cxDBData, System.SysUtils, Classe.Request,
  System.uJson, Data.DB.Helper;

type
  TLibUtils = class
  public
    class procedure JSONtoDataSet(const pDataSet: TDataSet; pJSON: String);
    class procedure AlimentarDataSet(const pDataSet: TClientDataSet; pServico: String);
    class function DatasetToJson( const pDataset:TDataset ) : string;

  end;

implementation

{ TLibUtils }

class procedure TLibUtils.AlimentarDataSet(const pDataSet: TClientDataSet; pServico: String);
var
  lRequest: TRequest;
  lRetorno: String;
begin
  lRequest := TRequest.Create;
  try
    try
      lRetorno := lRequest.GET(pServico);
      JSONtoDataSet(pDataSet, lRetorno);
    except
      FreeAndNil(lRequest);
      raise Exception.Create('Erro ao retornar as informações do banco');
    end;
  finally
    FreeAndNil(lRequest);
  end;
end;

class function TLibUtils.DatasetToJson(const pDataset: TDataset): string;
begin
  Result := pDataset.ToJson;
end;

class procedure TLibUtils.JSONtoDataSet(const pDataSet: TDataSet; pJSON: String);
var
  JSONObj: TJSONArray;
  lConvert: TCustomJSONDataSetAdapter;
begin
  if (pJSON = EmptyStr) then
    Exit;

  JSONObj := TJSONObject.ParseJSONValue(pJSON) as TJSONArray;
  lConvert := TCustomJSONDataSetAdapter.Create(nil);

  try
    lConvert.Dataset := pDataSet;
    lConvert.UpdateDataSet(JSONObj);
  finally
    lConvert.Free();
    JSONObj.Free();
  end;
end;


end.
