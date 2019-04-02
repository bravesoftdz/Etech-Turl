unit Classe.NotasFiscais;

interface

uses
  ControllerProdutoInterface, Classe.Produto, Controller.NotasFiscaisInterface,
  System.Generics.Collections, System.Classes, Classe.Unidade, Classe.Fornecedor,
  Classe.Grupo, Controller.UnidadeInterface, Controller.FornecedorInterface,
  Controller.GrupoInterface;

type
  TNotasFiscais = class(TInterfacedObject, INotasFiscais)
  private
    FId: Integer;
    FData: String;
    FGrupo: TGrupo;
    FSemana: Integer;
    FProduto: TProduto;
    FUnidade: TUnidade;
    FQuantidade: Double;
    FObservacoes: String;
    FPrecoUnitario: Double;
    FFornecedor: TFornecedor;
  public
    function GETId(): Integer;
    function GETData(): String;
    function GETGrupo(): TGrupo;
    function GETSemana(): Integer;
    function GETProduto(): TProduto;
    function GETUnidade(): TUnidade;
    function GETQuantidade(): Double;
    function GETObservacoes(): string;
    function GETPrecoUnitario(): Double;
    function GETFornecedor(): TFornecedor;

    function Id(const pValue: Integer): INotasFiscais;
    function Data(const pValue: string): INotasFiscais;
    function Grupo(const pValue: TGrupo): iNotasFiscais;
    function Semana(const pValue: Integer): iNotasFiscais;
    function Produto(const pValue: TProduto): INotasFiscais;
    function Unidade(const pValue: TUnidade): INotasFiscais;
    function Quantidade(const pValue: Double): INotasFiscais;
    function Observacoes(const pValue: String): INotasFiscais;
    function PrecoUnitario(const pValue: Double): INotasFiscais;
    function Fornecedor(const pValue: TFornecedor): INotasFiscais;
  public
    constructor Create();
    destructor Destroy(); override;

    class function New(): INotasFiscais;
  end;

  TListaNotasFiscais = class
  private
    FLista: TObjectList<TNotasFiscais>;
  public
    property Lista: TObjectList<TNotasFiscais> read FLista write FLista;

    constructor Create();
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;


{ TListaNotasFiscais<T> }

constructor TListaNotasFiscais.Create;
begin
  FLista := TObjectList<TNotasFiscais>.Create;
end;

destructor TListaNotasFiscais.Destroy;
begin
  FLista.Destroy;
  inherited;
end;

{ TNotasFiscais }

constructor TNotasFiscais.Create;
begin
  FGrupo := TGrupo.Create;
  FProduto := TProduto.Create;
  FUnidade := TUnidade.Create;
  FFornecedor := TFornecedor.Create;
end;

destructor TNotasFiscais.Destroy;
begin

  inherited;
end;

class function TNotasFiscais.New: INotasFiscais;
begin
  Result := Self.Create;
end;

function TNotasFiscais.GETData: String;
begin
  Result := FData;
end;

function TNotasFiscais.GETFornecedor: TFornecedor;
begin
  Result := FFornecedor;
end;

function TNotasFiscais.GETGrupo: TGrupo;
begin
  Result := FGrupo;
end;

function TNotasFiscais.GETId: Integer;
begin
  Result := FId;
end;

function TNotasFiscais.GETObservacoes: string;
begin
  Result := FObservacoes;
end;

function TNotasFiscais.GETPrecoUnitario: Double;
begin
  Result := FPrecoUnitario;
end;

function TNotasFiscais.GETProduto: TProduto;
begin
  Result := FProduto;
end;

function TNotasFiscais.GETQuantidade: Double;
begin
  Result := FQuantidade;
end;

function TNotasFiscais.GETSemana: Integer;
begin
  Result := FSemana;
end;

function TNotasFiscais.GETUnidade: TUnidade;
begin
  Result := FUnidade;
end;

function TNotasFiscais.Grupo(const pValue: TGrupo): iNotasFiscais;
begin
  Result := Self;
  FGrupo := pValue;
end;

function TNotasFiscais.Data(const pValue: string): INotasFiscais;
begin
  Result := Self;
  FData := pValue;
end;

function TNotasFiscais.Fornecedor(const pValue: TFornecedor): INotasFiscais;
begin
  Result := Self;
  FFornecedor := pValue;
end;

function TNotasFiscais.Id(const pValue: Integer): INotasFiscais;
begin
  Result := Self;
  FId := pValue;
end;

function TNotasFiscais.Observacoes(const pValue: String): INotasFiscais;
begin
  Result := Self;
  FObservacoes := pValue;
end;

function TNotasFiscais.PrecoUnitario(const pValue: Double): INotasFiscais;
begin
  Result := Self;
  FPrecoUnitario := pValue;
end;

function TNotasFiscais.Produto(const pValue: TProduto): INotasFiscais;
begin
  Result := Self;
  FProduto := pValue;
end;

function TNotasFiscais.Quantidade(const pValue: Double): INotasFiscais;
begin
  Result := Self;
  FQuantidade := pValue;
end;

function TNotasFiscais.Semana(const pValue: Integer): iNotasFiscais;
begin
  Result := Self;
  FSemana := pValue;
end;

function TNotasFiscais.Unidade(const pValue: TUnidade): INotasFiscais;
begin
  Result := Self;
  FUnidade := pValue;
end;

end.
