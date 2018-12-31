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
  Datasnap.DBClient, cxCurrencyEdit;

type
  TfrmEntradaNF = class(TfrmBase)
    gridEntradaNFDBTableView1: TcxGridDBTableView;
    gridEntradaNFLevel1: TcxGridLevel;
    gridEntradaNF: TcxGrid;
    ClientDataSet1: TClientDataSet;
    pnlEntradaNF: TPanel;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DataSource1: TDataSource;
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
    ClientDataSet1Mes: TStringField;
    ClientDataSet1Dia: TIntegerField;
    ClientDataSet1Grupo: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    ClientDataSet1Produto: TStringField;
    ClientDataSet1Un: TStringField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Preco: TFloatField;
    ClientDataSet1ValorTOtal: TFloatField;
    ClientDataSet1Observacao: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormShow(Sender: TObject);
  private
    procedure JSONtoDataSet(const pDataSet: TDataSet; pJSON: String);
    procedure AlimentarDataSet();
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

procedure TfrmEntradaNF.AlimentarDataSet;
begin
  ClientDataSet1.CreateDataSet;
  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;

    ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Mes').AsString := 'Dezembro';
  ClientDataSet1.FieldByName('Dia').AsInteger := 20;
  ClientDataSet1.FieldByName('Grupo').AsString := 'Hort Fruit';
  ClientDataSet1.FieldByName('Fornecedor').AsString := 'Jao Legumes';
  ClientDataSet1.FieldByName('Produto').AsString := 'Banana';
  ClientDataSet1.FieldByName('Un').AsString := 'KG';
  ClientDataSet1.FieldByName('Quantidade').AsFloat := 0.76;
  ClientDataSet1.FieldByName('Preco').AsFloat := 3.20;
  ClientDataSet1.FieldByName('ValorTotal').AsFloat := 1;
  ClientDataSet1.FieldByName('Observacao').AsString := 'Banana madura';
  ClientDataSet1.Post;
end;

procedure TfrmEntradaNF.FormShow(Sender: TObject);
var
  lRequest: TRequest;
  lRetorno: String;
begin
  inherited;
  AlimentarDataSet;
//  lRequest := TRequest.Create;
//  lRetorno := lRequest.GET('getProdutos');
//  JSONtoDataSet(ClientDataSet1, lRetorno);
end;

procedure TfrmEntradaNF.JSONtoDataSet(const pDataSet: TDataSet; pJSON: String);
var
  JSONObj: TJSONArray;
  lConvert: TCustomJSONDataSetAdapter;
begin
  if (pJSON = EmptyStr) then
    Exit;

  JSONObj := TJSONObject.ParseJSONValue(pJSON) as TJSONArray;
  lConvert := TCustomJSONDataSetAdapter.Create(nil);

  try
    lConvert.Dataset := pDataSet;
    lConvert.UpdateDataSet(JSONObj);
  finally
    lConvert.Free();
    JSONObj.Free();
  end;
end;

end.
