program EtchTurl;

uses
  Vcl.Forms,
  Vcl.Styles,
  uPrincipal in 'view\uPrincipal.pas' {frmPrincipal},
  uLogin in 'view\uLogin.pas' {frmLogin},
  uFormBase in 'view\uFormBase.pas' {frmBase},
  uFormEntradaNF in 'view\uFormEntradaNF.pas' {frmEntradaNF},
  uFormBaixaEstoque in 'view\uFormBaixaEstoque.pas' {frmBaixaEstoque},
  Classe.Request in 'model\Classe.Request.pas',
  Classe.DiretorioWEB in 'model\Classe.DiretorioWEB.pas',
  Classe.LayoutUtils in 'controller\Classe.LayoutUtils.pas',
  interfaces.LayoutUtils in 'controller\interfaces.LayoutUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
