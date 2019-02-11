unit Controller.GrupoInterface;

interface

type
  IGrupo = interface
    ['{2FF6940C-F1E4-4DA5-A34C-3C4945E56F12}']
    function GETNome(): string;

    function Nome(const pValue: String): IGrupo;
  end;

implementation

end.
