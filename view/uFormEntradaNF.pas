unit uFormEntradaNF;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.JSON, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, REST.Response.Adapter,
  Datasnap.DBClient, cxCurrencyEdit, LibUtils, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDMRequest;

type
  TfrmEntradaNF = class(TfrmBase)
    gridEntradaNFDBTableView1: TcxGridDBTableView;
    gridEntradaNFLevel1: TcxGridLevel;
    gridEntradaNF: TcxGrid;
    pnlEntradaNF: TPanel;
    pnl1: TPanel;
    imgBtnEntradaNF: TImage;
    imgBtnMetasCompras: TImage;
    imgBtnBaixaEstoque: TImage;
    imgBtnCotacao: TImage;
    imgBtnGraficoCompras: TImage;
    imgBtnFinanceiro: TImage;
    imgBtnGestaoCMV: TImage;
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
    dsNotasFiscais: TDataSource;
    gridEntradaNFMes: TcxGridDBColumn;
    gridEntradaNFDia: TcxGridDBColumn;
    gridEntradaNFDGrupo: TcxGridDBColumn;
    gridEntradaNFFornecedor: TcxGridDBColumn;
    gridEntradaNFProduto: TcxGridDBColumn;
    gridEntradaNFUnMedida: TcxGridDBColumn;
    gridEntradaNFQuantidade: TcxGridDBColumn;
    gridEntradaNFPreco: TcxGridDBColumn;
    gridEntradaNFValorTotal: TcxGridDBColumn;
    gridEntradaNFObservacao: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    FdMtblNotasFiscas: TFDMemTable;
    dsGrupo: TDataSource;
    FdMtblGrupo: TFDMemTable;
    dsFornecedor: TDataSource;
    FdMtblFornecedor: TFDMemTable;
    FdMtblProduto: TFDMemTable;
    dsProduto: TDataSource;
    FdMtblUnidade: TFDMemTable;
    dsUnidade: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FcdsGrupo: TClientDataSet;
    FcdsProduto: TClientDataSet;
    FcdsUnidade: TClientDataSet;
    FcdsFornecedor: TClientDataSet;
    FcdsNotasFiscais: TClientDataSet;
  private
    procedure CriarDataSet();
    procedure DestroyDataSet();
  public
    { Public declarations }
  end;

var
  frmEntradaNF: TfrmEntradaNF;

implementation

uses
  Classe.Request;

{$R *.dfm}

{ TfrmEntradaNF }

procedure TfrmEntradaNF.CriarDataSet();
begin
  FcdsGrupo := TClientDataSet.Create(nil);
  FcdsProduto := TClientDataSet.Create(nil);
  FcdsUnidade := TClientDataSet.Create(nil);
  FcdsFornecedor := TClientDataSet.Create(nil);
  FcdsNotasFiscais := TClientDataSet.Create(nil);
end;

procedure TfrmEntradaNF.DestroyDataSet();
begin
  FreeAndNil(FcdsGrupo);
  FreeAndNil(FcdsProduto);
  FreeAndNil(FcdsUnidade);
  FreeAndNil(FcdsFornecedor);
  FreeAndNil(FcdsNotasFiscais);
end;

procedure TfrmEntradaNF.FormDestroy(Sender: TObject);
begin
  inherited;
  DestroyDataSet();
end;

procedure TfrmEntradaNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27  then
    Close();
end;

end.
