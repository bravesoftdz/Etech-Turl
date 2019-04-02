unit Controller.FornecedorInterface;

interface

type
  IFornecedor = interface
    ['{0B33364D-6AC5-4809-B701-1A69DF21B018}']
    function GETId(): Integer;
    function GETNome(): string;
    function GETCnpj(): string;

    function Id(const pValue: Integer): IFornecedor;
    function Nome(const pValue: string): IFornecedor;
    function CNPJ(const pValue: string): IFornecedor;
  end;

implementation

end.
