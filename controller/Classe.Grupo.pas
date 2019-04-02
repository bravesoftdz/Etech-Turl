unit Classe.Grupo;

interface

uses
  Controller.GrupoInterface;

type
  TGrupo = class(TInterfacedObject, IGrupo)
  private
    FId: Integer;
    FNome: string;
  public
    function GETId(): Integer;
    function GETNome(): string;
    function Id(const pValue: Integer): IGrupo;
    function Nome(const pValue: String): IGrupo;

    constructor Create();
    destructor Destroy(); override;

    class function New(): IGrupo;
  end;

implementation

{ TGrupo }

class function TGrupo.New: IGrupo;
begin
  Result := Self.Create;
end;

constructor TGrupo.Create;
begin

end;

destructor TGrupo.Destroy;
begin

  inherited;
end;

function TGrupo.GETId: Integer;
begin
  Result := FId;
end;

function TGrupo.GETNome: string;
begin
  Result := FNome;
end;

function TGrupo.Id(const pValue: Integer): IGrupo;
begin
  Result := Self;
  FId := pValue;
end;

function TGrupo.Nome(const pValue: String): IGrupo;
begin
  Result := Self;
  FNome := pValue;
end;

end.
