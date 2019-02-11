unit Classe.Autenicacao;

interface

uses
  Controller.Autenticacao, System.NetEncoding;

type
  TAtenticacao = class(TInterfacedObject, IAutenticacao)
  private
    FEmail: string;
    FDados: string;
  private
    procedure Base64Encode(const pValue: String);
  public
    function GETSenha(): string;
    function GETUsuario(): string;

    function Senha(const pValue: string): IAutenticacao;
    function Usuario(const pValue: string): IAutenticacao;

    constructor Create();
    destructor Destroy(); override;

    class function New(): IAutenticacao;
  end;

implementation

{ TAtenticacao }

constructor TAtenticacao.Create;
begin

end;

destructor TAtenticacao.Destroy;
begin

  inherited;
end;

class function TAtenticacao.New: IAutenticacao;
begin
  Result := Self.Create;
end;

function TAtenticacao.GETSenha: string;
begin
  Result := FDados;
end;

function TAtenticacao.GETUsuario: string;
begin
  Result := FEmail;
end;

procedure TAtenticacao.Base64Encode(const pValue: String);
var
  lBase64Encode: TBase64Encoding;

begin
  lBase64Encode := TBase64Encoding.Create;
  try
    FDados := lBase64Encode.Encode('e&t' + pValue);
  finally
    lBase64Encode.Free;
  end;
end;

function TAtenticacao.Senha(const pValue: string): IAutenticacao;
begin
  Result := Self;
  Base64Encode(pValue);
end;

function TAtenticacao.Usuario(const pValue: string): IAutenticacao;
begin
  Result := Self;
  FEmail := pValue;
end;

end.
