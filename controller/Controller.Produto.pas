unit Classe.Produto;

interface

uses
  ControllerProdutoInterface;

type
  TSetProduto = class(TInterfacedObject, ISetProduto)
  private
    FNome: string;
  public
    function GETNome(): string;
    function Nome(const pValue: String): ISetProduto;

    class function New(): ISetProduto;

    constructor Create();
    destructor Destroy();
  end;

implementation

{ TSetProduto }

class function TSetProduto.New: ISetProduto;
begin
  Result := Self.Create;
end;

constructor TSetProduto.Create;
begin

end;

destructor TSetProduto.Destroy;
begin

end;

function TSetProduto.GETNome: string;
begin
  Result := FNome;
end;

function TSetProduto.Nome(const pValue: String): ISetProduto;
begin
  Result := Self;
  FNome := pValue;
end;

end.
