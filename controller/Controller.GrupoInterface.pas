unit Controller.GrupoInterface;

interface

type
  IGrupo = interface
    ['{2FF6940C-F1E4-4DA5-A34C-3C4945E56F12}']
    function GETId(): Integer;
    function GETNome(): string;

    function Id(const pValue: Integer): IGrupo;
    function Nome(const pValue: String): IGrupo;
  end;

implementation

end.
