unit Classe.DiretorioWEB;

interface

uses
  SysUtils;

type
  TServicoWeb = Class
    class function Diretorio(): String;
  end;

implementation

{ TServicoWeb }

class function TServicoWeb.Diretorio(): String;
begin
  Result := 'http://localhost:8010/';
end;

end.
