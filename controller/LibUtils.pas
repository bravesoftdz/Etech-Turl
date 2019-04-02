unit LibUtils;

interface

uses
  System.JSON, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Response.Adapter, Datasnap.DBClient, Data.DB, cxDBData, System.SysUtils, Classe.Request,
  System.uJson, Data.DB.Helper, System.DateUtils;

type
  TTpDiaMes = (tpDataPrimeiroDia, tpDataUltimoDia, tpNumeroPrimeiroDia, tpNumeroUltimoDia, tpDataFormatoNacionalPrimeiroDia, tpDataFormatoNacionalUltimoDia);

  TLibUtils = class
  public
    class function GETSemana(const pData: TDate): Integer;
    class function GETMes(const pMes: Integer): string;
    class procedure JSONtoDataSet(const pDataSet: TDataSet; pJSON: String);
    class procedure AlimentarDataSet(const pDataSet: TClientDataSet; pServico: String);
    class function DatasetToJson(const pDataset:TDataset ) : string;
    class function GETPrimeiroeUiltimoDiaMes(const pTpDiaMes: TTpDiaMes): string;
    class function GETDiadaSemana(const pDate: TDate): string;
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

class function TLibUtils.GETDiadaSemana(const pDate: TDate): string;
begin
  case DayOfWeek(pDate) of
    1: Result := 'Domingo';
    2: Result := 'Segunda-Feira';
    3: Result := 'Terça-Feira';
    4: Result := 'Quarta-Feira';
    5: Result := 'Quinta-Feira';
    6: Result := 'Sexta-Fiera';
    7: Result := 'Sábado';
  end;
end;

class function TLibUtils.GETMes(const pMes: Integer): string;
begin
  case pMes of
    1: Result := 'Janeiro';
    2: Result := 'Fevereiro';
    3: Result := 'Março';
    4: Result := 'Abril';
    5: Result := 'Maio';
    6: Result := 'Junho';
    7: Result := 'Julho';
    8: Result := 'Agosto';
    9: Result := 'Setembro';
    10: Result := 'Outubro';
    11: Result := 'Novembro';
    12: Result := 'Dezembro';
  end;
end;

class function TLibUtils.GETPrimeiroeUiltimoDiaMes(const pTpDiaMes: TTpDiaMes): string;
var
  lMes,
  lAno: string;
begin
  lAno := Copy(FormatDateTime('YYY-MM-DD', DATE), 1, 4);
  lMes := Copy(FormatDateTime('YYY-MM-DD', DATE), 6, 2);
  case pTpDiaMes of
    tpDataPrimeiroDia: Result := FormatDateTIme('YYYY-MM-DD', (StartOfAMonth(StrToInt(lAno), StrToInt(lMes))));
    tpDataUltimoDia: Result := FormatDateTIme('YYYY-MM-DD', (EndOfAMonth(StrToInt(lAno), StrToInt(lMes))));
    tpNumeroPrimeiroDia: Result := FormatDateTIme('DD', (StartOfAMonth(StrToInt(lAno), StrToInt(lMes))));
    tpNumeroUltimoDia: Result := FormatDateTIme('DD', (EndOfAMonth(StrToInt(lAno), StrToInt(lMes))));
    tpDataFormatoNacionalPrimeiroDia: Result := FormatDateTIme('DD/MM/YYYY', (StartOfAMonth(StrToInt(lAno), StrToInt(lMes))));
    tpDataFormatoNacionalUltimoDia: Result := FormatDateTIme('DD/MM/YYYY', (EndOfAMonth(StrToInt(lAno), StrToInt(lMes))));
  end;
end;

class function TLibUtils.GETSemana(const pData: TDate): Integer;
var
   DiaCorte: word;
begin
   DiaCorte := DayOfWeek(StartOfTheMonth(pData)) - 1;
   Result := Round(((DayOf(pData)+DiaCorte) / 7) + 0.45);
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
