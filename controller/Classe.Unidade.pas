unit Classe.Unidade;

interface

uses
  Controller.UnidadeInterface;

type
  TUnidade = class(TInterfacedObject, IUnidade)
  private
    FId: Integer;
    FNome: string;
    FUnitario: Boolean;
  public
    function GETId(): Integer;
    function GETNome(): string;
    function GETUnitario(): Boolean;

    function Id(const pValue: Integer): IUnidade;
    function Nome(const pValue: string): IUnidade;
    function Unitario(const pValue: Boolean): IUnidade;

    constructor Create();
    destructor Destroy(); override;

    class function New(): IUnidade;
  end;

implementation

{ TUnidade }

class function TUnidade.New: IUnidade;
begin
  Result := Self.Create;
end;

constructor TUnidade.Create;
begin

end;

destructor TUnidade.Destroy;
begin

  inherited;
end;

function TUnidade.GETId: Integer;
begin
  Result := FId;
end;

function TUnidade.GETNome: string;
begin
  Result := FNome;
end;

function TUnidade.GETUnitario: Boolean;
begin
  Result := FUnitario;
end;

function TUnidade.Id(const pValue: Integer): IUnidade;
begin
  Result := Self;
  FId := pValue;
end;

function TUnidade.Nome(const pValue: string): IUnidade;
begin
  Result := Self;
  FNome := pValue;
end;

function TUnidade.Unitario(const pValue: Boolean): IUnidade;
begin
  Result := Self;
  FUnitario := pValue;
end;

end.
