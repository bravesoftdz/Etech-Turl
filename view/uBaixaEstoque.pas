unit uBaixaEstoque;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxImage, cxGridBandedTableView, Datasnap.DBClient, cxLabel,
  cxGridDBBandedTableView;

type
  TfrmBaixaEstoque = class(TForm)
    gridBaixaEstoque: TcxGrid;
    imgLogoEtchTurl: TcxImage;
    pnlBotoes: TPanel;
    btnGestaoCMV: TButton;
    btnMetaCompras: TButton;
    btnCotacao: TButton;
    btnGraficoCompras: TButton;
    btnBaixaEstoque: TButton;
    btnEntradaNF: TButton;
    btnFechamentoFinanceiro: TButton;
    gridBaixaEstoqueLevel1: TcxGridLevel;
    cdsBaixaEstoque: TClientDataSet;
    dsBaixaEstoque: TDataSource;
    cdsBaixaEstoqueGrupo: TStringField;
    cdsBaixaEstoqueProduto: TStringField;
    cdsBaixaEstoqueSaldAnterior: TFloatField;
    cdsBaixaEstoqueEntrada: TFloatField;
    cdsBaixaEstoqueSegunda: TFloatField;
    cdsBaixaEstoqueTerca: TFloatField;
    cdsBaixaEstoqueQuarta: TFloatField;
    cdsBaixaEstoqueQuinta: TFloatField;
    cdsBaixaEstoqueSexta: TFloatField;
    cdsBaixaEstoqueSabado: TFloatField;
    cdsBaixaEstoqueDomingo: TFloatField;
    cdsBaixaEstoqueConsumo: TFloatField;
    cxLabel1: TcxLabel;
    gridBaixaEstoqueDBBandedTableView1: TcxGridDBBandedTableView;
    gridColGrupo: TcxGridDBBandedColumn;
    gridColProduto: TcxGridDBBandedColumn;
    gridColSaldoAnterior: TcxGridDBBandedColumn;
    gridColEntrada: TcxGridDBBandedColumn;
    gridColSegunda: TcxGridDBBandedColumn;
    gridColTerca: TcxGridDBBandedColumn;
    gridColQuarta: TcxGridDBBandedColumn;
    gridColQuinta: TcxGridDBBandedColumn;
    gridColSexta: TcxGridDBBandedColumn;
    gridColSabado: TcxGridDBBandedColumn;
    gridColDomingo: TcxGridDBBandedColumn;
    gridColConsumo: TcxGridDBBandedColumn;
    gridColTotal: TcxGridDBBandedColumn;
    cdsBaixaEstoqueSaldoFinal: TFloatField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AlimentarDataSet();
  public
    { Public declarations }
  end;

var
  frmBaixaEstoque: TfrmBaixaEstoque;

implementation

{$R *.dfm}

{ TfrmBaixaEstoque }

procedure TfrmBaixaEstoque.AlimentarDataSet;
begin
  cdsBaixaEstoque.CreateDataSet();
  cdsBaixaEstoque.Append();
  cdsBaixaEstoque.FieldByName('Grupo').AsString := 'HORT FRUIT';
  cdsBaixaEstoque.FieldByName('Produto').AsString := 'Batata';
  cdsBaixaEstoque.FieldByName('SaldAnterior').AsFloat := 30;
  cdsBaixaEstoque.FieldByName('Entrada').AsFloat := 25;
  cdsBaixaEstoque.FieldByName('Segunda').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Terca').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Quarta').AsFloat := 5.10;
  cdsBaixaEstoque.FieldByName('Quinta').AsFloat := 1;
  cdsBaixaEstoque.FieldByName('Sexta').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Sabado').AsFloat := 32;
  cdsBaixaEstoque.FieldByName('Domingo').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Consumo').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('SaldoFinal').AsFloat := 0;
  cdsBaixaEstoque.Post();

  cdsBaixaEstoque.Append();
  cdsBaixaEstoque.FieldByName('Grupo').AsString := 'HORT FRUIT';
  cdsBaixaEstoque.FieldByName('Produto').AsString := 'Aipim';
  cdsBaixaEstoque.FieldByName('SaldAnterior').AsFloat := 30;
  cdsBaixaEstoque.FieldByName('Entrada').AsFloat := 25;
  cdsBaixaEstoque.FieldByName('Segunda').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Terca').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Quarta').AsFloat := 5.10;
  cdsBaixaEstoque.FieldByName('Quinta').AsFloat := 1;
  cdsBaixaEstoque.FieldByName('Sexta').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Sabado').AsFloat := 32;
  cdsBaixaEstoque.FieldByName('Domingo').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Consumo').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('SaldoFinal').AsFloat := 0;
  cdsBaixaEstoque.Post();

  cdsBaixaEstoque.Append();
  cdsBaixaEstoque.FieldByName('Grupo').AsString := 'HORT FRUIT';
  cdsBaixaEstoque.FieldByName('Produto').AsString := 'Alface';
  cdsBaixaEstoque.FieldByName('SaldAnterior').AsFloat := 30;
  cdsBaixaEstoque.FieldByName('Entrada').AsFloat := 25;
  cdsBaixaEstoque.FieldByName('Segunda').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Terca').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Quarta').AsFloat := 5.10;
  cdsBaixaEstoque.FieldByName('Quinta').AsFloat := 1;
  cdsBaixaEstoque.FieldByName('Sexta').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Sabado').AsFloat := 32;
  cdsBaixaEstoque.FieldByName('Domingo').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Consumo').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('SaldoFinal').AsFloat := 0;
  cdsBaixaEstoque.Post();

  cdsBaixaEstoque.Append();
  cdsBaixaEstoque.FieldByName('Grupo').AsString := 'Bebidas';
  cdsBaixaEstoque.FieldByName('Produto').AsString := 'Refrigerante';
  cdsBaixaEstoque.FieldByName('SaldAnterior').AsFloat := 30;
  cdsBaixaEstoque.FieldByName('Entrada').AsFloat := 25;
  cdsBaixaEstoque.FieldByName('Segunda').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Terca').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Quarta').AsFloat := 5.10;
  cdsBaixaEstoque.FieldByName('Quinta').AsFloat := 1;
  cdsBaixaEstoque.FieldByName('Sexta').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Sabado').AsFloat := 32;
  cdsBaixaEstoque.FieldByName('Domingo').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Consumo').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('SaldoFinal').AsFloat := 0;
  cdsBaixaEstoque.Post();

  cdsBaixaEstoque.Append();
  cdsBaixaEstoque.FieldByName('Grupo').AsString := 'Bebidas';
  cdsBaixaEstoque.FieldByName('Produto').AsString := 'Agua';
  cdsBaixaEstoque.FieldByName('SaldAnterior').AsFloat := 30;
  cdsBaixaEstoque.FieldByName('Entrada').AsFloat := 25;
  cdsBaixaEstoque.FieldByName('Segunda').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Terca').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Quarta').AsFloat := 5.10;
  cdsBaixaEstoque.FieldByName('Quinta').AsFloat := 1;
  cdsBaixaEstoque.FieldByName('Sexta').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('Sabado').AsFloat := 32;
  cdsBaixaEstoque.FieldByName('Domingo').AsFloat := 10;
  cdsBaixaEstoque.FieldByName('Consumo').AsFloat := 0;
  cdsBaixaEstoque.FieldByName('SaldoFinal').AsFloat := 0;
  cdsBaixaEstoque.Post();
end;

procedure TfrmBaixaEstoque.FormShow(Sender: TObject);
begin
  AlimentarDataSet();
end;

end.
