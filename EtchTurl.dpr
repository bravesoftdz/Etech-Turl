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
  interfaces.LayoutUtils in 'controller\interfaces.LayoutUtils.pas',
  LibUtils in 'controller\LibUtils.pas',
  DMDados in 'controller\DMDados.pas',
  Data.DB.Helper in 'controller\Data.DB.Helper.pas',
  System.uJSON in 'controller\System.uJSON.pas',
  uDMRequest in 'model\uDMRequest.pas' {DMRequest: TDataModule},
  uTESTE in 'uTESTE.pas' {Form1},
  ControllerProdutoInterface in 'controller\ControllerProdutoInterface.pas',
  Controller.NotasFiscaisInterface in 'controller\Controller.NotasFiscaisInterface.pas',
  Classe.NotasFiscais in 'controller\Classe.NotasFiscais.pas',
  Controller.GrupoInterface in 'controller\Controller.GrupoInterface.pas',
  Classe.Grupo in 'controller\Classe.Grupo.pas',
  Controller.UnidadeInterface in 'controller\Controller.UnidadeInterface.pas',
  Classe.Unidade in 'controller\Classe.Unidade.pas',
  Controller.FornecedorInterface in 'controller\Controller.FornecedorInterface.pas',
  Classe.Fornecedor in 'controller\Classe.Fornecedor.pas',
  Controller.Autenticacao in 'controller\Controller.Autenticacao.pas',
  Classe.Autenicacao in 'controller\Classe.Autenicacao.pas',
  Controller.RetornoAutenticacaoInterface in 'controller\Controller.RetornoAutenticacaoInterface.pas',
  Classe.RetornoAutenticacao in 'controller\Classe.RetornoAutenticacao.pas',
  Classe.Produto in 'controller\Classe.Produto.pas',
  uFrmSalvamento in 'view\uFrmSalvamento.pas' {FrmSalvamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDMRequest, DMRequest);
  Application.CreateForm(TFrmSalvamento, FrmSalvamento);
  Application.Run;
end.
