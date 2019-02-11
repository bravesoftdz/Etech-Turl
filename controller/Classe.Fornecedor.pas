unit Classe.Fornecedor;

interface

uses
  Controller.FornecedorInterface;

type
  TFornecedor = class(TInterfacedObject, IFornecedor)
  private
    FNome: string;
    FCNPJ: string;
  public
    function GETNome(): string;
    function GETCnpj(): string;

    function Nome(const pValue: string): IFornecedor;
    function CNPJ(const pValue: string): IFornecedor;

    constructor Create();
    destructor Destroy(); override;

    class function New(): IFornecedor;
  end;

implementation

{ TFornecedor }

constructor TFornecedor.Create;
begin

end;

destructor TFornecedor.Destroy;
begin

  inherited;
end;

class function TFornecedor.New: IFornecedor;
begin
  Result := Self.Create;
end;

function TFornecedor.CNPJ(const pValue: string): IFornecedor;
begin
  Result := Self;
  FCNPJ := pValue;
end;

function TFornecedor.Nome(const pValue: string): IFornecedor;
begin
  Result := Self;
  FNome := pValue;
end;

function TFornecedor.GETCnpj: string;
begin
  Result := FCNPJ;
end;

function TFornecedor.GETNome: string;
begin
  Result := FNome;
end;

end.
