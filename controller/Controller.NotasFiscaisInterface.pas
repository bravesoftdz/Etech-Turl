unit Controller.NotasFiscaisInterface;

interface

uses
  ControllerProdutoInterface, Classe.Produto, Classe.Fornecedor, Classe.Unidade,
  Classe.Grupo;

type
  iNotasFiscais = interface
    ['{D1BAA4D4-1326-4249-8A19-5C62BA3B818A}']
    function GETId(): Integer;
    function GETData(): String;
    function GETGrupo(): TGrupo;
    function GETSemana(): Integer;
    function GETUnidade(): TUnidade;
    function GETProduto(): TProduto;
    function GETQuantidade(): Double;
    function GETObservacoes(): string;
    function GETPrecoUnitario(): Double;
    function GETFornecedor(): TFornecedor;

    function Id(const pValue: Integer): iNotasFiscais;
    function Data(const pValue: string): iNotasFiscais;
    function Grupo(const pValue: TGrupo): iNotasFiscais;
    function Semana(const pValue: Integer): iNotasFiscais;
    function Produto(const pValue: TProduto): iNotasFiscais;
    function Unidade(const pValue: TUnidade): iNotasFiscais;
    function Quantidade(const pValue: Double): iNotasFiscais;
    function Observacoes(const pValue: String): iNotasFiscais;
    function PrecoUnitario(const pValue: Double): iNotasFiscais;
    function Fornecedor(const pValue: TFornecedor): iNotasFiscais;
  end;


implementation

end.
