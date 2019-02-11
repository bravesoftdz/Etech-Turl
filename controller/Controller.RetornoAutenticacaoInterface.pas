unit Controller.RetornoAutenticacaoInterface;

interface

type
  IGETAutenticao = interface
    ['{CE93B1B6-8461-45D4-BFE9-DE28DE36DD8A}']
    function GETRetorno(): string;
    function Retorno(const pValue: string): IGETAutenticao;
  end;

implementation

end.
