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
  Classe.DiretorioWEB in 'model\Classe.DiretorioWEB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TfrmEntradaNF, frmEntradaNF);
  Application.CreateForm(TfrmBaixaEstoque, frmBaixaEstoque);
  Application.Run;
end.
