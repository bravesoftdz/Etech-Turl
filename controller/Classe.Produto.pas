unit Classe.Produto;

interface

uses
  ControllerProdutoInterface;

type
  TProduto = class(TInterfacedObject, IProduto)
  private
    FId: Integer;
    FNome: string;
  public
    function GETId(): Integer;
    function GETNome(): string;

    function Id(const pValue: Integer): IProduto;
    function Nome(const pValue: String): IProduto;

    class function New(): IProduto;

    constructor Create();
    destructor Destroy(); override;
  end;

implementation

{ TSetProduto }

class function TProduto.New: IProduto;
begin
  Result := Self.Create;
end;

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

function TProduto.GETId: Integer;
begin
  Result := FId;
end;

function TProduto.GETNome: string;
begin
  Result := FNome;
end;

function TProduto.Id(const pValue: Integer): IProduto;
begin
  Result := Self;
  FId := pValue;
end;


function TProduto.Nome(const pValue: String): IProduto;
begin
  Result := Self;
  FNome := pValue;
end;

end.
