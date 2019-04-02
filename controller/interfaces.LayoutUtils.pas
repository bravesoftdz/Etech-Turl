unit interfaces.LayoutUtils;

interface

uses
  Vcl.Controls;

type

  iLayoutUtils = interface
    ['{9C1CCB9F-CD44-41CE-BA2B-461155F144EC}']
    procedure ArredondarBordas(pComponent: TWinControl);
    procedure EsmaecerFundoShow();
    procedure EsmaecerFundoClose();
  end;


implementation

end.
