unit Classe.RetornoAutenticacao;

interface

uses
  Controller.RetornoAutenticacaoInterface;

type
  TGETAutenticacao = class(TInterfacedObject, IGETAutenticao)
  private
    FSchema: string;
  public
    function GETRetorno(): string;
    function Retorno(const pValue: string): IGETAutenticao;

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

function TGETAutenticacao.GETRetorno: string;
begin
  Result := FSchema;
end;

function TGETAutenticacao.Retorno(const pValue: string): IGETAutenticao;
begin
  Result := Self;
  FSchema := pValue;
end;

end.
