unit Classe.Produto;

interface

uses
  ControllerProdutoInterface;

type
  TProduto = class(TInterfacedObject, IProduto)
  private
    FNome: string;
    FIdGrupo: Integer;
  public
    function GETNome(): string;
    function GETIdGrupo(): Integer;

    function Nome(const pValue: String): IProduto;
    function IdGrupo(const pValue: Integer): IProduto;

    constructor Create();
    destructor Destroy(); override;

    class function New(): IProduto;
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

class function TProduto.New: IProduto;
begin
  Result := Self.Create;
end;

function TProduto.GETIdGrupo: Integer;
begin
  Result := FIdGrupo;
end;

function TProduto.GETNome: string;
begin
  Result := FNome;
end;

function TProduto.IdGrupo(const pValue: Integer): IProduto;
begin
  Result := Self;
  FIdGrupo := pValue;
end;

function TProduto.Nome(const pValue: String): IProduto;
begin
  Result := Self;
  FNome := pValue;
end;


end.
