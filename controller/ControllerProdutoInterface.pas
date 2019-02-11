unit ControllerProdutoInterface;

interface

type
  IProduto = interface
    ['{C1178038-AD9B-40A0-AC04-659FAFCD8B7A}']
    function GETNome(): string;
    function GETIdGrupo(): Integer;

    function Nome(const pValue: String): IProduto;
    function IdGrupo(const pValue: Integer): IProduto;
  end;

implementation

end.
