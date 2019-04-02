unit Classe.RetornoAutenticacao;

interface

uses
  Controller.RetornoAutenticacaoInterface;

type
  TGETAutenticacao = class(TInterfacedObject, IGETAutenticao)
  private
    FSchema: string;
    FUsuario: string;
    FEmpresa: string;
  public
    function GETSchema(): string;
    function GETUsuario(): string;
    function GETEmpresa(): string;

    function Schema(const pValue: string): IGETAutenticao;
    function Usuario(const pValue: string): IGETAutenticao;
    function Empresa(const pValue: string): IGETAutenticao;

    constructor Create();
    destructor Destroy(); override;

    class function New(): IGETAutenticao;
  end;

implementation

{ TGETAutenticacao }

class function TGETAutenticacao.New: IGETAutenticao;
begin
  Result := Self.Create
end;

constructor TGETAutenticacao.Create;
begin

end;

destructor TGETAutenticacao.Destroy;
begin

  inherited;
end;

function TGETAutenticacao.Schema(const pValue: string): IGETAutenticao;
begin
  Result := Self;
  FSchema := pValue;
end;

function TGETAutenticacao.Usuario(const pValue: string): IGETAutenticao;
begin
  Result := Self;
  FUsuario := pValue;
end;

function TGETAutenticacao.Empresa(const pValue: string): IGETAutenticao;
begin
  Result := Self;
  FEmpresa := pValue;
end;

function TGETAutenticacao.GETEmpresa: string;
begin
  Result := FEmpresa;
end;

function TGETAutenticacao.GETSchema: string;
begin
  Result := FSchema;
end;

function TGETAutenticacao.GETUsuario: string;
begin
  Result := FUsuario;
end;

end.
