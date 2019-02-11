unit Controller.UnidadeInterface;

interface

type
  IUnidade = interface
    ['{DB186567-EDCB-42E6-B1A4-58D4370C07B6}']
    function GETNome(): string;
    function GETUnitario(): Boolean;
    function Nome(const pValue: string): IUnidade;
    function Unitario(const pValue: Boolean): IUnidade;
  end;

implementation

end.
