unit uEntradaNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGrid, cxContainer, dxGDIPlusClasses, cxImage, Datasnap.DBClient,
  Vcl.ExtCtrls, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, cxCurrencyEdit,
  Vcl.WinXPanels, cxLocalization, cxLabel;

type
  TfrmEntradaNF = class(TForm)
    gridEntradaNFDBTableView1: TcxGridDBTableView;
    gridEntradaNFLevel1: TcxGridLevel;
    gridEntradaNF: TcxGrid;
    gridColMes: TcxGridDBColumn;
    gridColDia: TcxGridDBColumn;
    gridColGrupo: TcxGridDBColumn;
    gridColFornecedor: TcxGridDBColumn;
    gridColProduto: TcxGridDBColumn;
    gridUndMedida: TcxGridDBColumn;
    gridColQuantidade: TcxGridDBColumn;
    gridColPreco: TcxGridDBColumn;
    gridColValorTotal: TcxGridDBColumn;
    gridColObservacao: TcxGridDBColumn;
    cdsEntradaNF: TClientDataSet;
    cdsEntradaNFMes: TStringField;
    cdsEntradaNFGrupo: TStringField;
    cdsEntradaNFDia: TIntegerField;
    cdsEntradaNFFornecedor: TStringField;
    cdsEntradaNFProduto: TStringField;
    cdsEntradaNFUndMedida: TStringField;
    cdsEntradaNFPreco: TFloatField;
    cdsEntradaNFValorTotal: TFloatField;
    cdsEntradaNFObservacao: TStringField;
    dsEntradaNF: TDataSource;
    cdsEntradaNFQuantidade: TFloatField;
    imgLogoEtchTurl: TcxImage;
    Panel1: TPanel;
    btnGestaoCMV: TButton;
    btnMetaCompras: TButton;
    btnCotacao: TButton;
    btnGraficoCompras: TButton;
    btnBaixaEstoque: TButton;
    btnEntradaNF: TButton;
    btnFechamentoFinanceiro: TButton;
    cxLocalizer1: TcxLocalizer;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure alimentarDataSet();
  public
    { Public declarations }
  end;

var
  frmEntradaNF: TfrmEntradaNF;

implementation

{$R *.dfm}

{ TfrmEntradaNF }

procedure TfrmEntradaNF.alimentarDataSet;
var
  I: Integer;
begin
  cdsEntradaNF.CreateDataSet();
  for I := 0 to 10 do
  begin
    cdsEntradaNF.Append();
    cdsEntradaNF.Fields.FieldByName('Mes').AsString := 'Outubro';
    cdsEntradaNF.Fields.FieldByName('Dia').AsInteger := 22;
    cdsEntradaNF.Fields.FieldByName('Grupo').AsString := 'HORT FRUIT';
    cdsEntradaNF.Fields.FieldByName('Fornecedor').AsString := 'Feira';
    cdsEntradaNF.Fields.FieldByName('Produto').AsString := 'Aipim';
    cdsEntradaNF.Fields.FieldByName('Quantidade').AsFloat := 20;
    cdsEntradaNF.Fields.FieldByName('UndMedida').AsString := 'kg';
    cdsEntradaNF.Fields.FieldByName('Preco').AsFloat := 5.00;
    cdsEntradaNF.Fields.FieldByName('ValorTotal').AsFloat := 100;
    cdsEntradaNF.Fields.FieldByName('Observacao').AsString := '1190';
    cdsEntradaNF.Post();
  end
end;

procedure TfrmEntradaNF.FormShow(Sender: TObject);
begin
  alimentarDataSet();
end;

end.                                                                                                      -
