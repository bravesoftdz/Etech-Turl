unit Controller.NotasFiscaisInterface;

interface

type
  INotasFiscais = interface
    ['{DABB1DFF-441A-41A9-AE04-33D521C295C9}']
    function GETData(): TDate;
    function GETIdGrupo(): Integer;
    function GETIdUnidade(): Integer;
    function GETQuantidade(): Double;
    function GETObservacoes(): string;
    function GETIdFornecedor(): Integer;
    function GETPrecoUnitario(): Double;

    function Data(const pVaue: TDate): INotasFiscais;
    function IdGrupo(const pValue: Integer): INotasFiscais;
    function IdUnidade(const pValue: Integer): INotasFiscais;
    function Quantidade(const pValue: Double): INotasFiscais;
    function Observacoes(const pValue: string): INotasFiscais;
    function IdFornecedor(const pValue: Integer): INotasFiscais;
    function PrecoUnitario(const pValue: Double): INotasFiscais;
  end;

implementation

end.
