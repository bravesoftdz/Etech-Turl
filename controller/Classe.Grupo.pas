unit Classe.Grupo;

interface

uses
  Controller.GrupoInterface;

type
  TGrupo = class(TInterfacedObject, IGrupo)
  private
    FNome: string;
  public
    function GETNome(): string;
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

function TGrupo.GETNome: string;
begin
  Result := FNome;
end;

function TGrupo.Nome(const pValue: String): IGrupo;
begin
  Result := Self;
  FNome := pValue;
end;

end.
