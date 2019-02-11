unit Classe.NotasFiscais;

interface

uses
  Controller.NotasFiscaisInterface;

type
  TNotasFiscais = class(TInterfacedObject, INotasFiscais)
  private
    FData: TDate;
    FIdGrupo: Integer;
    FIdUnidade: Integer;
    FQuantidade: Double;
    FObservacoes: string;
    FIdFornecedor: Integer;
    FPrecoUnitario: Double;
  public
    function GETData(): TDate;
    function GETIdGrupo(): Integer;
    function GETIdUnidade(): Integer;
    function GETQuantidade(): Double;
    function GETObservacoes(): string;
    function GETIdFornecedor(): Integer;
    function GETPrecoUnitario(): Double;

    function Data(const pValue: TDate): INotasFiscais;
    function IdGrupo(const pValue: Integer): INotasFiscais;
    function IdUnidade(const pValue: Integer): INotasFiscais;
    function Quantidade(const pValue: Double): INotasFiscais;
    function Observacoes(const pValue: string): INotasFiscais;
    function IdFornecedor(const pValue: Integer): INotasFiscais;
    function PrecoUnitario(const pValue: Double): INotasFiscais;

    constructor Create();
    destructor Destroy(); override;

    class function New(): INotasFiscais;
  end;

implementation

{ TNotasFiscais }

class function TNotasFiscais.New: INotasFiscais;
begin
  Result := Self.Create;
end;

constructor TNotasFiscais.Create;
begin

end;

destructor TNotasFiscais.Destroy;
begin

  inherited;
end;

function TNotasFiscais.Observacoes(const pValue: string): INotasFiscais;
begin
  Result := Self;
  FObservacoes := pValue;
end;

function TNotasFiscais.PrecoUnitario(const pValue: Double): INotasFiscais;
begin
  Result := Self;
  FPrecoUnitario := pValue;
end;

function TNotasFiscais.Quantidade(const pValue: Double): INotasFiscais;
begin
  Result := Self;
  FQuantidade := pValue;
end;

function TNotasFiscais.Data(const pValue: TDate): INotasFiscais;
begin
  Result := Self;
  FData := pValue;
end;

function TNotasFiscais.IdFornecedor(const pValue: Integer): INotasFiscais;
begin
  Result := Self;
  FIdFornecedor := pValue;
end;

function TNotasFiscais.IdGrupo(const pValue: Integer): INotasFiscais;
begin
  Result := Self;
  FIdGrupo := pValue;
end;

function TNotasFiscais.IdUnidade(const pValue: Integer): INotasFiscais;
begin
  Result := Self;
  FIdUnidade := pValue;
end;

function TNotasFiscais.GETData: TDate;
begin
  Result := FData;
end;

function TNotasFiscais.GETIdFornecedor: Integer;
begin
  Result := FIdFornecedor;
end;

function TNotasFiscais.GETIdGrupo: Integer;
begin
  Result := FIdGrupo;
end;

function TNotasFiscais.GETIdUnidade: Integer;
begin
  Result := FIdUnidade;
end;

function TNotasFiscais.GETObservacoes: string;
begin
  Result := FObservacoes;
end;

function TNotasFiscais.GETPrecoUnitario: Double;
begin
  Result := FPrecoUnitario;
end;

function TNotasFiscais.GETQuantidade: Double;
begin
  Result := FQuantidade;
end;

end.
