unit Controller.Autenticacao;

interface

type
  IAutenticacao = interface
    ['{04FD8EBE-83E7-43C9-8565-D3ADE6C07C8F}']
    function GETSenha(): string;
    function GETUsuario(): string;

    function Senha(const pValue: string): IAutenticacao;
    function Usuario(const pValue: string): IAutenticacao;
  end;

implementation

end.
