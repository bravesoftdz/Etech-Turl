unit ControllerProdutoInterface;

interface

type
  IProduto = interface
    ['{C1178038-AD9B-40A0-AC04-659FAFCD8B7A}']
    function GETId(): Integer;
    function GETNome(): string;

    function Id(const pValue: Integer): IProduto;
    function Nome(const pValue: String): IProduto;
  end;

implementation

end.
