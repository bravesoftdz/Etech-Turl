unit Controller.RetornoAutenticacaoInterface;

interface

type
  IGETAutenticao = interface
    ['{CE93B1B6-8461-45D4-BFE9-DE28DE36DD8A}']
    function GETSchema(): string;
    function GETUsuario(): string;
    function GETEmpresa(): string;

    function Schema(const pValue: string): IGETAutenticao;
    function Usuario(const pValue: string): IGETAutenticao;
    function Empresa(const pValue: string): IGETAutenticao;
  end;

implementation

end.
