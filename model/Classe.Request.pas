unit Classe.Request;

interface

uses
  IdTCPClient, IdHTTP, system.Classes, Classe.DiretorioWEB, System.SysUtils;

type
  TRequest = class
  public
    var
      HTTP: TIdHTTP;
  public
    function GET(pServico: String): String;
    function DELETE(pServico: String): String;
    function PUT(pServico: String; pParametro: TStringStream): String;
    function POST(pServico: String; pParametro: TStringList): String;

    constructor Create();
    destructor Destroy(); override;
  end;

implementation

{ TRequest }

constructor TRequest.Create;
begin
  inherited;
  HTTP := TIdHTTP.Create(nil);
  HTTP.Request.ContentType := 'application/json';
  HTTP.Request.ContentEncoding := 'utf-8';
end;

destructor TRequest.Destroy;
begin
  if Assigned(HTTP) then
    FreeAndNil(HTTP);
  inherited;
end;

function TRequest.DELETE(pServico: String): String;
begin
  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
  Result := HTTP.Delete(TServicoWeb.Diretorio + pServico);
end;

function TRequest.GET(pServico: String): String;
begin
  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
  Result := HTTP.Get(TServicoWeb.Diretorio + pServico);
end;

function TRequest.PUT (pServico: String; pParametro: TStringStream): String;
begin
  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
  Result := HTTP.Put(TServicoWeb.Diretorio + pServico, pParametro);
end;

function TRequest.POST(pServico: String; pParametro: TStringList): String;
begin
  HTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
  Result := HTTP.Post(TServicoWeb.Diretorio + pServico, pParametro);
end;

end.
