unit uFormBaixaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  Datasnap.DBClient, LibUtils, System.JSON, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Response.Adapter,
  cxDBLookupComboBox;

type
  TfrmBaixaEstoque = class(TfrmBase)
    gridBaixadeEstoque: TcxGrid;
    gridBaixadeEstoqueDBBandedTableView1: TcxGridDBBandedTableView;
    gridColBaixadeEstoqueGrupo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueProduto: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSaldoAnterior: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Domingo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Segunda: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Terca: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Quarta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Quinta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Sexta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Sabado: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Domingo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Segunda: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Terca: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Quarta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Quinta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Sexta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Sabado: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2SaladoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Domingo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Segunda: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Terca: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Quarta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Quinta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Sexta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Sabado: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Domingo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Segunda: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Terca: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Quarta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Quinta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Sexta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Sabado: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Domingo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Segunda: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Terca: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Quarta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueQuantidadeConsumoTotal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueValorConsumoTotal: TcxGridDBBandedColumn;
    gridBaixadeEstoqueLevel1: TcxGridLevel;
    pnl1: TPanel;
    btnEntradaNFClic: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    iconEntradaNF: TImage;
    iconBaixadeEstoque: TImage;
    iconGraficodeCompras: TImage;
    iconGestaoCMV: TImage;
    iconFinanceiro: TImage;
    iconCotacao: TImage;
    iconMetasdeCompras: TImage;
    lblentradaNf: TLabel;
    lblMetasCompras: TLabel;
    lblBaixaEstoque: TLabel;
    lblCotacao: TLabel;
    lblGraficoCompras: TLabel;
    lblFinanceiro: TLabel;
    lblGestaoCMV: TLabel;
    pnlBaixadeEstoque: TPanel;
    gridColBaixadeEstoqueSemana5Quinta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Sexta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Sabado: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Domingo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Segunda: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Terca: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Quarta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Quinta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Sexta: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana6SaldoFinal: TcxGridDBBandedColumn;
    dsProduto: TDataSource;
    dsGrupo: TDataSource;
    dsBaixaEstoque: TDataSource;
    cdsProduto: TClientDataSet;
    cdsProdutoId: TIntegerField;
    cdsProdutoNome: TStringField;
    cdsProdutoIdGrupo: TIntegerField;
    cdsGrupo: TClientDataSet;
    cdsBaixaEstoque: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FcdsBaixaEstoque: TClientDataSet;
    FcdsProduto: TClientDataSet;
    FcdsGrupo: TClientDataSet;
  private
    procedure CreateDataSet();
    procedure DestroyDataSet();

    procedure AlimentarDataSet();
  public
    { Public declarations }
  end;

var
  frmBaixaEstoque: TfrmBaixaEstoque;

implementation

uses
  Classe.Request;

{$R *.dfm}

{ TfrmBaixaEstoque }


procedure TfrmBaixaEstoque.AlimentarDataSet();
begin
  TLibUtils.AlimentarDataSet(cdsProduto, '001/produtos');
  TLibUtils.AlimentarDataSet(cdsGrupo, '001/grupos');
end;

procedure TfrmBaixaEstoque.CreateDataSet;
begin
  FcdsBaixaEstoque := TClientDataSet.Create(nil);
  FcdsProduto := TClientDataSet.Create(nil);
  FcdsGrupo := TClientDataSet.Create(nil);
end;

procedure TfrmBaixaEstoque.DestroyDataSet;
begin
  if Assigned(FcdsBaixaEstoque) then
    FreeAndNil(FcdsBaixaEstoque);
  if Assigned(FcdsProduto) then
    FreeAndNil(FcdsProduto);
  if Assigned(FcdsGrupo) then
    FreeAndNil(FcdsGrupo);
end;

procedure TfrmBaixaEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
    Close();
end;

procedure TfrmBaixaEstoque.FormShow(Sender: TObject);
begin
  inherited;
  AlimentarDataSet();
end;

end.
