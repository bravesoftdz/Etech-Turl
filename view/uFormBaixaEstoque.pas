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
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmBaixaEstoque = class(TfrmBase)
    gridBaixadeEstoque: TcxGrid;
    gridBaixadeEstoqueDBBandedTableView1: TcxGridDBBandedTableView;
    gridColBaixadeEstoqueGrupo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueProduto: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSaldoAnterior: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia1: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia2: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia3: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia4: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia5: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia6: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Dia7: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana1SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia8: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia9: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia10: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia11: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia12: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia13: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Dia14: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana2SaladoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia15: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia16: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia17: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia18: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia19: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia20: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Dia21: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana3SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia22: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia23: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia24: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia25: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia26: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia27: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Dia28: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana4SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Entrada: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Dia29: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Dia30: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Dia31: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5Consumo: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueSemana5SaldoFinal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueQuantidadeConsumoTotal: TcxGridDBBandedColumn;
    gridColBaixadeEstoqueValorConsumoTotal: TcxGridDBBandedColumn;
    gridBaixadeEstoqueLevel1: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaixaEstoque: TfrmBaixaEstoque;

implementation

{$R *.dfm}

end.
