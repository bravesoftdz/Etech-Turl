unit Controller.UnidadeInterface;

interface

type
  IUnidade = interface
    ['{DB186567-EDCB-42E6-B1A4-58D4370C07B6}']
    function GETId(): Integer;
    function GETNome(): string;
    function GETUnitario(): Boolean;

    function Id(const pValue: Integer): IUnidade;
    function Nome(const pValue: string): IUnidade;
    function Unitario(const pValue: Boolean): IUnidade;
  end;

implementation

end.
