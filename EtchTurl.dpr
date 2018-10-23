program EtchTurl;

uses
  Vcl.Forms,
  uPrincipal in 'view\uPrincipal.pas' {frmPrincipal},
  uLogin in 'view\uLogin.pas' {frmLogin},
  Vcl.Themes,
  Vcl.Styles,
  uEntradaNF in 'view\uEntradaNF.pas' {frmEntradaNF},
  uBaixaEstoque in 'view\uBaixaEstoque.pas' {frmBaixaEstoque};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmEntradaNF, frmEntradaNF);
  Application.CreateForm(TfrmBaixaEstoque, frmBaixaEstoque);
  Application.Run;
end.
