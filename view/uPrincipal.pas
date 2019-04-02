unit uPrincipal;

interface

uses
  uTESTE,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.Menus, cxButtons, System.ImageList,
  Vcl.ImgList, FireDAC.Stan.StorageJSON, System.Sensors,
  System.Sensors.Components, Vcl.Buttons, uFormEntradaNF, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, interfaces.LayoutUtils, Classe.LayoutUtils,
  uFormBaixaEstoque, LibUtils, uFrmSalvamento;

type
  TfrmPrincipal = class(TForm)
    pnlTop: TPanel;
    pnlLogo: TPanel;
    lblHora: TLabel;
    lblSair: TLabel;
    lblData: TLabel;
    TimerHora: TTimer;
    pnlBottom: TPanel;
    lblCotacao: TLabel;
    btnCotacaoClic: TImage;
    iconCotacao: TImage;
    lblGestaoCMV: TLabel;
    btnEntradaNFClic: TImage;
    lblentradaNf: TLabel;
    btnGestaoCMVClic: TImage;
    btnFinanceiroClic: TImage;
    iconEntradaNF: TImage;
    iconGestaoCMV: TImage;
    lblFinanceiro: TLabel;
    iconFinanceiro: TImage;
    lblDiadaSemana: TLabel;
    btnBaixaEstoqueClic: TImage;
    lblBaixadeEstoque: TLabel;
    btnMestasdeComprasClic: TImage;
    lblMetasDecompras: TLabel;
    iconBaixadeEstoque: TImage;
    iconMetasdeCompras: TImage;
    btnGraficoComprasClic: TImage;
    lblGraficodeCompras: TLabel;
    iconGraficodeCompras: TImage;
    btnBaixaEstoque: TImage;
    btnCotacao: TImage;
    btnEntradaNF: TImage;
    btnFinanceiro: TImage;
    btnGestaoCMV: TImage;
    btnGraficoCompras: TImage;
    btnMetasdeCompras: TImage;
    Image2: TImage;
    imgSombraTopo: TImage;
    shpDivisoria: TShape;
    Image4: TImage;
    Button1: TButton;


    procedure FormCreate(Sender: TObject);
    procedure lblSairClick(Sender: TObject);
    procedure TimerHoraTimer(Sender: TObject);
    procedure lblSairMouseEnter(Sender: TObject);
    procedure lblSairMouseLeave(Sender: TObject);
    procedure btnCotacaoClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnCotacaoClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnGestaoCMVClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnEntradaNFClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFinanceiroClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnEntradaNFClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnGestaoCMVClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnFinanceiroClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBaixaEstoqueClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnMestasdeComprasClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnBaixaEstoqueClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnGraficoComprasClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnMestasdeComprasClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnGraficoComprasClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnEntradaNFClicClick(Sender: TObject);
    procedure btnBaixaEstoqueClicClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    FFundoModal: iLayoutUtils;
    function DiadaSemana(const pDia: Integer): string;
  private
    procedure ExibirDataHora();
    procedure ClicarBotao(const pBotaoClick, pBotao: TImage);
    procedure SoltarClickBotao(const pBotao, pBotaoClick: TImage);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uLogin, uDMRequest;

{$R *.dfm}

procedure TfrmPrincipal.btnBaixaEstoqueClicClick(Sender: TObject);
var
  frmBaixadeEstoque: TfrmBaixaEstoque;
begin
  FFundoModal := TLayoutUtils.New();
  frmBaixadeEstoque := TfrmBaixaEstoque.Create(Self);
  try
    FFundoModal.EsmaecerFundoShow();
    frmBaixadeEstoque.ShowModal();
  finally
    FFundoModal.EsmaecerFundoClose();
    FreeAndNil(frmBaixadeEstoque);
  end;
end;

procedure TfrmPrincipal.btnBaixaEstoqueClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnBaixaEstoque, btnBaixaEstoqueClic);
end;

procedure TfrmPrincipal.btnBaixaEstoqueClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnBaixaEstoqueClic, btnBaixaEstoque);
end;

procedure TfrmPrincipal.btnCotacaoClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnCotacao, btnCotacaoClic);
end;

procedure TfrmPrincipal.btnCotacaoClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnCotacaoClic, btnCotacao);
end;

procedure TfrmPrincipal.btnEntradaNFClicClick(Sender: TObject);
begin
  if (FEmpresa = EmptyStr) or (not FLembrarCredeniais) then
  begin
    if TfrmLogin.AbrirTelaLogin = mrOk then
      TfrmEntradaNF.AbrirTela();
  end
  else
    TfrmEntradaNF.AbrirTela();
end;

procedure TfrmPrincipal.btnEntradaNFClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnEntradaNF, btnEntradaNFClic);
end;

procedure TfrmPrincipal.btnEntradaNFClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnEntradaNFClic, btnEntradaNF);
end;

procedure TfrmPrincipal.btnFinanceiroClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnFinanceiro, btnFinanceiroClic);
end;

procedure TfrmPrincipal.btnFinanceiroClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnFinanceiroClic, btnFinanceiro);
end;

procedure TfrmPrincipal.btnGestaoCMVClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnGestaoCMV, btnGestaoCMVClic);
end;

procedure TfrmPrincipal.btnGestaoCMVClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnGestaoCMVClic, btnGestaoCMV);
end;

procedure TfrmPrincipal.btnGraficoComprasClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnGraficoCompras, btnGraficoComprasClic);
end;

procedure TfrmPrincipal.btnGraficoComprasClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnGraficoComprasClic, btnGraficoCompras);
end;

procedure TfrmPrincipal.btnMestasdeComprasClicMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClicarBotao(btnMetasdeCompras, btnMestasdeComprasClic);
end;

procedure TfrmPrincipal.btnMestasdeComprasClicMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SoltarClickBotao(btnMestasdeComprasClic, btnMetasdeCompras);
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  TFrmSalvamento.Show;
end;

procedure TfrmPrincipal.ClicarBotao(const pBotaoClick, pBotao: TImage);
begin
  pBotaoClick.Visible := True;
  pBotao.Visible := False;
end;

procedure TfrmPrincipal.SoltarClickBotao(const pBotao, pBotaoClick: TImage);
begin
  pBotao.Visible := True;
  pBotaoClick.Visible := False;
end;

function TfrmPrincipal.DiadaSemana(const pDia: Integer): string;
begin
  case pDia of
    1:Result := 'Domingo';
    2:Result := 'Segunda-Feira';
    3:Result := 'Terça-Feira';
    4:Result := 'Quarta-Feira';
    5:Result := 'Quinta-Feira';
    6:Result := 'Sexta-Fiera';
    7:Result := 'Sábado';
  end;
end;

procedure TfrmPrincipal.ExibirDataHora;
begin
  lblHora.Caption := FormatDateTime('HH:MM', Time);
  lblData.Caption := FormatDateTime('dd "de" MMMM "de" yyyy', Date);
  lblDiadaSemana.Caption := DiadaSemana(DayOfWeek(Now)) + ',';
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ExibirDataHora();
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    lblSairClick(Sender);
end;

procedure TfrmPrincipal.lblSairClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente sair do sistema?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
    Close();
end;

procedure TfrmPrincipal.lblSairMouseEnter(Sender: TObject);
begin
  lblSair.Font.Color := $004b5fee;
end;

procedure TfrmPrincipal.lblSairMouseLeave(Sender: TObject);
begin
  lblSair.Font.Color := clWhite;
end;

procedure TfrmPrincipal.TimerHoraTimer(Sender: TObject);
begin
  ExibirDataHora();
end;

end.

