unit uFormEntradaNF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDMRequest,
  System.uJson, REST.Json.Types, REST.JsonReflect, REST.Json,
  Data.DBXJSONReflect, System.NetEncoding, System.DateUtils, Classe.NotasFiscais,
  Controller.NotasFiscaisInterface, dxmdaset, ControllerProdutoInterface, Classe.Produto,
  Controller.GrupoInterface, Classe.Grupo, Controller.FornecedorInterface,
  Classe.Fornecedor, Controller.UnidadeInterface, Classe.Unidade, cxLabel,
  cxLocalization, System.Classes, Classe.Request, cxContainer, cxCheckBox;

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
    dsGrupo: TDataSource;
    dsFornecedor: TDataSource;
    dsProduto: TDataSource;
    dsUnidade: TDataSource;
    dsDiasMes: TDataSource;
    cxLocalizer: TcxLocalizer;
    imgIconSalvar: TImage;
    lblSalvar: TLabel;
    cxCheckBox1: TcxCheckBox;
    dsMes: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FcdsGrupoBeforePost(DataSet: TDataSet);
    procedure FcdsProdutoBeforePost(DataSet: TDataSet);
    procedure FcdsUnidadeBeforePost(DataSet: TDataSet);
    procedure FcdsFornecedorBeforePost(DataSet: TDataSet);
    procedure FcdsNotasFiscaisBeforeEdit(DataSet: TDataSet);
    procedure gridEntradaNFDGrupoPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
    procedure gridEntradaNFFornecedorPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
    procedure gridEntradaNFProdutoPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
    procedure gridEntradaNFUnMedidaPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
    procedure gridEntradaNFDBTableView1DblClick(Sender: TObject);
    procedure gridEntradaNFQuantidadePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure gridEntradaNFPrecoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    FGrupo: IGrupo;
    FUnidade: IUnidade;
    FProduto: IProduto;
    FcdsMes: TClientDataSet;
    FcdsGrupo: TClientDataSet;
    FFornecedores: IFornecedor;
    FcdsProduto: TClientDataSet;
    FcdsUnidade: TClientDataSet;
    FcdsDiasMes: TClientDataSet;
    FListaNFAlterado: TStringList;
    FcdsFornecedor: TClientDataSet;
    FGETTLista: TListaNotasFiscais;
    FGETNotasFiscais: INotasFiscais;
    FcdsNotasFiscais: TClientDataSet;
    procedure CreateFieldsGrupo;
    procedure CreateFieldsProduto;
    procedure CreateFieldsUnidade;
    procedure CreateFieldsFornecedor;
    procedure CreateFieldsMes;
    procedure AlimentarDataSetMes;
  private
    procedure AlimentarSetProduto(const pProduto: TProduto);
    procedure AlimentarSetGrupo(const pGrupo: TGrupo);
    procedure AlimentarSetFornecedor(const pFornecdor: TFornecedor);
    procedure AlimentarSetUnidade(const pUnidade: TUnidade);

    procedure SalvarNotaFiscalEdicao();
    procedure SalvarNotaFiscalNovo();
    procedure PreencherDiasMes();
    procedure GetDadosAdicionais();
    procedure CreateFieldsDiasMes();
    procedure CreateFieldsNotasFiscais();
    procedure InserirDadosDataSet(pDataSet: TDataSet; pValue: String);

    procedure CriarDataSet();
    procedure DestroyDataSet();

    procedure GETDadosBanco();
  public
    class procedure AbrirTela();
  end;

var
  frmEntradaNF: TfrmEntradaNF;

implementation

{$R *.dfm}

{ TfrmEntradaNF }

class procedure TfrmEntradaNF.AbrirTela();
begin
  frmEntradaNF := TfrmEntradaNF.Create(nil);
  try
    frmEntradaNF.ShowModal();
  finally
    FreeAndNil(frmEntradaNF);
  end;
end;

procedure TfrmEntradaNF.AlimentarDataSetMes();
var
  I: Integer;
begin
  for I := 1 to 12 do
  begin
    FcdsMes.Append;
    FcdsMes.FieldByName('Id').AsInteger := I;
    FcdsMes.FieldByName('Mes').AsString := TLibUtils.GETMes(I);
    FcdsMes.Post;
  end;
end;

procedure TfrmEntradaNF.AlimentarSetFornecedor(const pFornecdor: TFornecedor);
begin
  FcdsFornecedor.Locate('nome', FcdsNotasFiscais.FieldByName('Fornecedor').AsString, []);
  pFornecdor.Id(FcdsFornecedor.FieldByName('Id').AsInteger);
  pFornecdor.Nome(FcdsFornecedor.FieldByName('Nome').AsString);
end;

procedure TfrmEntradaNF.AlimentarSetGrupo(const pGrupo: TGrupo);
begin
  FcdsGrupo.Locate('nome', FcdsNotasFiscais.FieldByName('Grupo').AsString, []);
  pGrupo.Id(FcdsGrupo.FieldByName('Id').AsInteger);
  pGrupo.Nome(FcdsGrupo.FieldByName('nome').AsString);
end;

procedure TfrmEntradaNF.AlimentarSetProduto(const pProduto: TProduto);
begin
  FcdsProduto.Locate('nome', FcdsNotasFiscais.FieldByName('Produto').AsString, []);
  pProduto.Id(FcdsProduto.FieldByName('Id').AsInteger);
  pProduto.Nome(FcdsProduto.FieldByName('Nome').AsString);
end;

procedure TfrmEntradaNF.AlimentarSetUnidade(const pUnidade: TUnidade);
begin
  FcdsUnidade.Locate('nome', FcdsNotasFiscais.FieldByName('Unidade').AsString, []);
  pUnidade.Id(FcdsUnidade.FieldByName('Id').AsInteger);
  pUnidade.Nome(FcdsUnidade.FieldByName('Nome').AsString);
end;

procedure TfrmEntradaNF.CreateFieldsMes;
begin
  FcdsMes.FieldDefs.Add('Id', ftInteger);
  FcdsMes.FieldDefs.Add('Mes', ftString, 20);
end;

procedure TfrmEntradaNF.CreateFieldsFornecedor;
begin
  FcdsFornecedor.FieldDefs.Add('Id', ftInteger);
  FcdsFornecedor.FieldDefs.Add('Nome', ftString, 20);
  FcdsFornecedor.FieldDefs.Add('CNPJ', ftString, 20);
end;

procedure TfrmEntradaNF.CreateFieldsUnidade;
begin
  FcdsUnidade.FieldDefs.Add('Id', ftInteger);
  FcdsUnidade.FieldDefs.Add('Nome', ftString, 20);
  FcdsUnidade.FieldDefs.Add('Unitario', ftBoolean);
end;

procedure TfrmEntradaNF.CreateFieldsProduto;
begin
  FcdsProduto.FieldDefs.Add('Id', ftInteger);
  FcdsProduto.FieldDefs.Add('Nome', ftString, 20);
  FcdsProduto.FieldDefs.Add('IdGrupo', ftInteger);
  FcdsProduto.FieldDefs.Add('NomeGrupo', ftString, 20);
end;

procedure TfrmEntradaNF.CreateFieldsGrupo;
begin
  FcdsGrupo.FieldDefs.Add('Id', ftInteger);
  FcdsGrupo.FieldDefs.Add('Nome', ftString, 20);
end;

procedure TfrmEntradaNF.CreateFieldsDiasMes();
begin
  FcdsDiasMes.FieldDefs.Add('Dia', ftInteger);
end;

procedure TfrmEntradaNF.CreateFieldsNotasFiscais();
begin
  FcdsNotasFiscais.FieldDefs.Add('Id', ftInteger);
  FcdsNotasFiscais.FieldDefs.Add('Mes', ftString, 20);
  FcdsNotasFiscais.FieldDefs.Add('Dia', ftInteger);
  FcdsNotasFiscais.FieldDefs.Add('Grupo', ftString, 50);
  FcdsNotasFiscais.FieldDefs.Add('Fornecedor', ftString, 20);
  FcdsNotasFiscais.FieldDefs.Add('Produto', ftString, 100);
  FcdsNotasFiscais.FieldDefs.Add('Unidade', ftString, 20);
  FcdsNotasFiscais.FieldDefs.Add('Quantidade', ftFloat);
  FcdsNotasFiscais.FieldDefs.Add('Preco', ftFloat);
  FcdsNotasFiscais.FieldDefs.Add('ValorTotal', ftFloat);
  FcdsNotasFiscais.FieldDefs.Add('Observacoes', ftString, 150);
  FcdsNotasFiscais.FieldDefs.Add('NovoRegistro', ftBoolean);
  FcdsNotasFiscais.FieldDefs.Add('Data', ftDate);
end;

procedure TfrmEntradaNF.CriarDataSet();
begin
  FcdsMes := TClientDataSet.Create(nil);
  FListaNFAlterado := TStringList.Create;
  FcdsGrupo := TClientDataSet.Create(nil);
  FcdsProduto := TClientDataSet.Create(nil);
  FcdsUnidade := TClientDataSet.Create(nil);
  FcdsDiasMes := TClientDataSet.Create(nil);
  FcdsFornecedor := TClientDataSet.Create(nil);
  FcdsNotasFiscais := TClientDataSet.Create(nil);

  CreateFieldsMes();
  CreateFieldsGrupo();
  CreateFieldsUnidade();
  CreateFieldsProduto();
  CreateFieldsDiasMes();
  CreateFieldsFornecedor();
  CreateFieldsNotasFiscais();

  FcdsMes.CreateDataSet();
  FcdsGrupo.CreateDataSet();
  FcdsProduto.CreateDataSet();
  FcdsUnidade.CreateDataSet();
  FcdsDiasMes.CreateDataSet();
  FcdsFornecedor.CreateDataSet();
  FcdsNotasFiscais.CreateDataSet();

  AlimentarDataSetMes();
end;

procedure TfrmEntradaNF.DestroyDataSet();
begin
  FreeAndNil(FcdsMes);
  FreeAndNil(FcdsGrupo);
  FreeAndNil(FcdsProduto);
  FreeAndNil(FcdsUnidade);
  FreeAndNil(FcdsDiasMes);
  FreeAndNil(FcdsFornecedor);
  FreeAndNil(FcdsNotasFiscais);
end;

procedure TfrmEntradaNF.FcdsNotasFiscaisBeforeEdit(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to Pred(FListaNFAlterado.Count) do
    if (FListaNFAlterado[I] = IntToStr(FcdsNotasFiscais.FieldByName('ID').AsInteger)) then
      Exit;

  if not (FcdsNotasFiscais.FieldByName('ID').AsInteger = 0) then
    FListaNFAlterado.Add(IntToStr(FcdsNotasFiscais.FieldByName('ID').AsInteger));
end;

procedure TfrmEntradaNF.FcdsFornecedorBeforePost(DataSet: TDataSet);
var
  lJSON: string;
begin
  inherited;
  FFornecedores := TFornecedor.New
                                .Nome(FcdsFornecedor.FieldByName('nome').AsString)
                                  .CNPJ(EmptyStr);

  lJSON := '[' + TJson.ObjectToJsonString(FFornecedores as TFornecedor) + ']';

  DMRequest.POST('fornecedores', lJSON);
end;

procedure TfrmEntradaNF.FcdsGrupoBeforePost(DataSet: TDataSet);
var
  lJSON: string;
begin
  inherited;
  FGrupo := TGrupo.New.Nome(FcdsGrupo.FieldByName('nome').AsString);

  lJSON := '[' + TJson.ObjectToJsonString(FGrupo as TGrupo) + ']';

  DMRequest.POST('grupos', lJSON);
end;

procedure TfrmEntradaNF.FcdsProdutoBeforePost(DataSet: TDataSet);
var
  lJSON: string;
begin
  inherited;
  FProduto := TProduto.New
                        .Nome(FcdsProduto.FieldByName('nome').AsString);

  lJSON := '[' + TJson.ObjectToJsonString(FProduto as TProduto, [joIgnoreEmptyStrings]) + ']';

  DMRequest.POST('produtos', lJSON);
end;

procedure TfrmEntradaNF.FcdsUnidadeBeforePost(DataSet: TDataSet);
var
  lJSON: string;
begin
  inherited;
  FUnidade := TUnidade.New
                        .Nome(FcdsUnidade.FieldByName('nome').AsString)
                          .Unitario(true);

  lJSON := '[' + TJson.ObjectToJsonString((FUnidade as TUnidade), [joIgnoreEmptyStrings]) + ']';

  DMRequest.POST('unidades', lJSON);
end;

procedure TfrmEntradaNF.FormDestroy(Sender: TObject);
begin
  inherited;
  DestroyDataSet();
  FreeAndNil(FListaNFAlterado);
end;

procedure TfrmEntradaNF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = Ord('S')) then
  begin
    SalvarNotaFiscalEdicao();
    SalvarNotaFiscalNovo();
  end;
end;

procedure TfrmEntradaNF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27  then
    Close();
end;

procedure TfrmEntradaNF.FormPaint(Sender: TObject);
begin
  inherited;
  lblRazaoSocial.Caption := FNomeEmpresa;
  lblUsuarioLogado.Caption := FNomeUsuario;

  imgUsuario.Visible := (FNomeUsuario <> EmptyStr);
end;

procedure TfrmEntradaNF.FormShow(Sender: TObject);
begin
  inherited;
  CriarDataSet();

  GETDadosBanco();

  GetDadosAdicionais();

  Self.WindowState := wsMaximized;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height;
end;

procedure TfrmEntradaNF.GETDadosBanco();
var
  lJSONArray: TJSONArray;
  lJSON: string;
  I: Integer;
  lDate: TDate;
  lData: TStringList;
  lDia: Integer;
  lMes: Integer;
  lAno: Integer;
begin
  FcdsNotasFiscais.EmptyDataSet;

  lJSON := DMRequest.GETNotasFiscais(TLibUtils.GETPrimeiroeUiltimoDiaMes(tpDataPrimeiroDia),
                                      TLibUtils.GETPrimeiroeUiltimoDiaMes(tpDataUltimoDia));

  if not (lJSON = EmptyStr) then
  begin
    lJSONArray := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(lJSON), 0) as TJSONArray;

    FGETTLista := TListaNotasFiscais.Create;
    for I := 0 to Pred(lJSONArray.Count) do
    begin
      FGETNotasFiscais := TJSON.JsonToObject<TNotasFiscais>(lJSONArray.Items[I].ToString);
      FcdsNotasFiscais.Append();

      lData := TStringList.Create;

      ExtractStrings(['-'], [], PChar(FGETNotasFiscais.GETData), lData);
      lDia := StrToInt(lData[2]);
      lMes := StrToInt(lData[1]);
      lAno := StrToInt(lData[0]);

      lDate := StrToDate(IntToStr(lDia) + '/' + IntToStr(lMes) + '/' + IntToStr(lAno));

      FcdsNotasFiscais.FieldByName('Id').AsInteger := FGETNotasFiscais.GETId;
      FcdsNotasFiscais.FieldByName('Mes').AsInteger := StrToInt(FormatDateTime('MM', lDate));
      FcdsNotasFiscais.FieldByName('Dia').AsInteger := StrToInt(FormatDateTime('DD', lDate));
      FcdsNotasFiscais.FieldByName('Grupo').AsString := FGETNotasFiscais.GETGrupo.GetNome;
      FcdsNotasFiscais.FieldByName('Fornecedor').AsString := FGETNotasFiscais.GETFornecedor.GETNome;
      FcdsNotasFiscais.FieldByName('Produto').AsString := FGETNotasFiscais.GETProduto.GETNome;
      FcdsNotasFiscais.FieldByName('Unidade').AsString := FGETNotasFiscais.GETUnidade.GETNome;
      FcdsNotasFiscais.FieldByName('Quantidade').AsFloat := FGETNotasFiscais.GETQuantidade;
      FcdsNotasFiscais.FieldByName('Preco').AsFloat := FGETNotasFiscais.GETPrecoUnitario;
      FcdsNotasFiscais.FieldByName('ValorTotal').AsFloat := FGETNotasFiscais.GETQuantidade * FGETNotasFiscais.GETPrecoUnitario;
      FcdsNotasFiscais.FieldByName('Observacoes').AsString := FGETNotasFiscais.GETObservacoes;
      FcdsNotasFiscais.FieldByName('NovoRegistro').AsBoolean := False;
      FcdsNotasFiscais.FieldByName('Data').AsDateTime := lDate;
      FcdsNotasFiscais.Post();

      lData.Free;
    end;
    FcdsNotasFiscais.First;
  end;
  dsNotasFiscais.DataSet := FcdsNotasFiscais;
end;

procedure TfrmEntradaNF.gridEntradaNFDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  FcdsNotasFiscais.Append;
  FcdsNotasFiscais.FieldByName('Mes').AsInteger := StrToInt(FormatDateTime('MM', Date));
  FcdsNotasFiscais.FieldByName('Dia').AsString := FormatDateTime('D', Date);
  FcdsNotasFiscais.FieldByName('NovoRegistro').AsBoolean := True;
  FcdsNotasFiscais.FieldByName('Data').AsDateTime := Now;
  FcdsNotasFiscais.Post;
end;

procedure TfrmEntradaNF.gridEntradaNFDGrupoPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
begin
  inherited;
  if AText = EmptyStr then
  begin
    gridEntradaNFDGrupo.EditValue := FcdsNotasFiscais.FieldByName('Grupo').AsString;
    Exit;
  end;

  if Application.MessageBox(PChar('Deseja inserir o grupo: ' + AText + ' ?'), 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
    InserirDadosDataSet(FcdsGrupo, AText);
end;

procedure TfrmEntradaNF.gridEntradaNFFornecedorPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
begin
  inherited;
  if AText = EmptyStr then
  begin
    gridEntradaNFFornecedor.EditValue := FcdsNotasFiscais.FieldByName('Fornecedor').AsString;
    Exit;
  end;

  if Application.MessageBox(PChar('Deseja inserir o fornecedor: ' + Atext + ' ?'), 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
    InserirDadosDataSet(FcdsFornecedor, AText);
end;

procedure TfrmEntradaNF.gridEntradaNFPrecoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if (DisplayValue = EmptyStr) or (DisplayValue = 0) then
  begin
    gridEntradaNFPreco.EditValue := FcdsNotasFiscais.FieldByName('Preco').AsFloat;
    Exit;
  end;
  FcdsNotasFiscais.FieldByName('Preco').AsFloat := DisplayValue;
  FcdsNotasFiscais.FieldByName('ValorTotal').AsFloat := DisplayValue * FcdsNotasFiscais.FieldByName('Quantidade').AsFloat;
end;

procedure TfrmEntradaNF.gridEntradaNFProdutoPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
begin
  inherited;
  if AText = EmptyStr then
  begin
    gridEntradaNFProduto.EditValue := FcdsNotasFiscais.FieldByName('Produto').AsString;
    Exit;
  end;

  if Application.MessageBox(PChar('Deseja inserir o produto: ' + AText + ' ?'), 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
    InserirDadosDataSet(FcdsProduto, AText);
end;

procedure TfrmEntradaNF.gridEntradaNFQuantidadePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if (DisplayValue = EmptyStr) or (DisplayValue = 0) then
  begin
    gridEntradaNFQuantidade.EditValue := FcdsNotasFiscais.FieldByName('Quantidade').AsFloat;
    Exit;
  end;
  FcdsNotasFiscais.FieldByName('Quantidade').AsFloat := DisplayValue;
  FcdsNotasFiscais.FieldByName('ValorTotal').AsFloat := DisplayValue * FcdsNotasFiscais.FieldByName('Preco').AsFloat;
end;

procedure TfrmEntradaNF.gridEntradaNFUnMedidaPropertiesNewLookupDisplayText(Sender: TObject; const AText: TCaption);
begin
  inherited;
  if AText = EmptyStr then
  begin
    gridEntradaNFUnMedida.EditValue := FcdsNotasFiscais.FieldByName('Unidade').AsString;
    Exit;
  end;

  if Application.MessageBox(PChar('Deseja inserir a unidade: ' + Atext + ' ?'), 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
    InserirDadosDataSet(FcdsUnidade, AText);
end;

procedure TfrmEntradaNF.GetDadosAdicionais();
begin
  DMRequest.GET('grupos', FcdsGrupo);
  dsGrupo.DataSet := FcdsGrupo;

  DMRequest.GET('produtos', FcdsProduto);
  dsProduto.DataSet := FcdsProduto;

  DMRequest.GET('unidades', FcdsUnidade);
  dsUnidade.DataSet := FcdsUnidade;

  DMRequest.GET('fornecedores', FcdsFornecedor);
  dsFornecedor.DataSet := FcdsFornecedor;

  FcdsDiasMes.EmptyDataSet;
  PreencherDiasMes();
  dsDiasMes.DataSet := FcdsDiasMes;

  dsMes.DataSet := FcdsMes;

  FcdsGrupo.BeforePost := FcdsGrupoBeforePost;
  FcdsProduto.BeforePost := FcdsProdutoBeforePost;
  FcdsUnidade.BeforePost := FcdsUnidadeBeforePost;
  FcdsFornecedor.BeforePost := FcdsFornecedorBeforePost;
  FcdsNotasFiscais.BeforeEdit := FcdsNotasFiscaisBeforeEdit;
end;

procedure TfrmEntradaNF.InserirDadosDataSet(pDataSet: TDataSet; pValue: String);
begin
  pDataSet.Append;
  pDataSet.FieldByName('nome').AsString := pValue;
  pDataSet.Post;
end;

procedure TfrmEntradaNF.PreencherDiasMes();
var
  I: Integer;
begin
  for I := 1 to StrToInt(TLibUtils.GETPrimeiroeUiltimoDiaMes(tpNumeroUltimoDia)) do
  begin
    FcdsDiasMes.Append;
    FcdsDiasMes.FieldByName('Dia').AsInteger := I;
    FcdsDiasMes.Post;
  end;
end;

procedure TfrmEntradaNF.SalvarNotaFiscalEdicao();
var
  lGrupo: IGrupo;
  lProduto: IProduto;
  lUnidade: IUnidade;
  lFornecedor: IFornecedor;
  lNotasFiscais: INotasFiscais;
  lJSONArray: TJSONArray;

  I: Integer;
  lOk: Boolean;
  lBookMark: TBookmark;
begin
  lNotasFiscais := TNotasFiscais.New;
  lJSONArray := TJSONArray.Create;

  lProduto := TProduto.New;
  lUnidade := TUnidade.New;
  lFornecedor := TFornecedor.New;
  lGrupo := TGrupo.New;
  lOk := False;
  try
    lBookMark := FcdsNotasFiscais.GetBookmark;
    FcdsNotasFiscais.DisableControls;
    for I := 0 to Pred(FListaNFAlterado.Count) do
    begin
      FcdsNotasFiscais.Locate('Id', FListaNFAlterado[I], []);

      AlimentarSetGrupo(lGrupo as TGrupo);
      AlimentarSetProduto(lProduto as TProduto);
      AlimentarSetUnidade(lUnidade as TUnidade);
      AlimentarSetFornecedor(lFornecedor as TFornecedor);

      lNotasFiscais.Id(FcdsNotasFiscais.FieldByName('Id').AsInteger);
      lNotasFiscais.Data(FormatDateTime('YYYY-MM-DD', Now));
      lNotasFiscais.Produto(lProduto as TProduto);
      lNotasFiscais.Grupo(lGrupo as TGrupo);
      lNotasFiscais.Unidade(lUnidade as TUnidade);
      lNotasFiscais.Quantidade(FcdsNotasFiscais.FieldByName('Quantidade').AsFloat);
      lNotasFiscais.Observacoes(FcdsNotasFiscais.FieldByName('Observacoes').AsString);
      lNotasFiscais.PrecoUnitario(FcdsNotasFiscais.FieldByName('Preco').AsFloat);
      lNotasFiscais.Fornecedor(lFornecedor as TFornecedor);
      lNotasFiscais.Semana(TLibUtils.GETSemana(FcdsNotasFiscais.FieldByName('Data').AsDateTime));

      lJSONArray.AddElement(TJson.ObjectToJsonObject(lNotasFiscais as TNotasFiscais));

      lOk := True;
    end;

    if lOk then
    try
      DMRequest.POST('notasFiscais', lJSONArray.ToString);
    except

    end;

  finally
    if FcdsNotasFiscais.BookmarkValid(lBookMark) then
      FcdsNotasFiscais.GotoBookmark(lBookMark);
    FcdsNotasFiscais.FreeBookmark(lBookMark);
    FcdsNotasFiscais.EnableControls;
    FreeAndNil(lJSONArray);
    FListaNFAlterado.Clear;
  end;

end;

procedure TfrmEntradaNF.SalvarNotaFiscalNovo();
var
  lGrupo: IGrupo;
  lProduto: IProduto;
  lUnidade: IUnidade;
  lFornecedor: IFornecedor;
  lNotasFiscais: INotasFiscais;
  lJSONArray: TJSONArray;

  I: Integer;
  lOk: Boolean;
  lBookMark: TBookmark;
begin
  lNotasFiscais := TNotasFiscais.New;
  lJSONArray := TJSONArray.Create;

  lProduto := TProduto.New;
  lUnidade := TUnidade.New;
  lFornecedor := TFornecedor.New;
  lGrupo := TGrupo.New;
  lOk := False;
  try
    lBookMark := FcdsNotasFiscais.GetBookmark;
    FcdsNotasFiscais.DisableControls;

    FcdsNotasFiscais.First;
    while not FcdsNotasFiscais.Eof do
    begin
      if FcdsNotasFiscais.FieldByName('NovoRegistro').AsBoolean then
      begin
        AlimentarSetGrupo(lGrupo as TGrupo);
        AlimentarSetProduto(lProduto as TProduto);
        AlimentarSetUnidade(lUnidade as TUnidade);
        AlimentarSetFornecedor(lFornecedor as TFornecedor);

        lNotasFiscais.Id(FcdsNotasFiscais.FieldByName('Id').AsInteger);
        lNotasFiscais.Data(FormatDateTime('YYYY-MM-DD', Now));
        lNotasFiscais.Produto(lProduto as TProduto);
        lNotasFiscais.Grupo(lGrupo as TGrupo);
        lNotasFiscais.Unidade(lUnidade as TUnidade);
        lNotasFiscais.Quantidade(FcdsNotasFiscais.FieldByName('Quantidade').AsFloat);
        lNotasFiscais.Observacoes(FcdsNotasFiscais.FieldByName('Observacoes').AsString);
        lNotasFiscais.PrecoUnitario(FcdsNotasFiscais.FieldByName('Preco').AsFloat);
        lNotasFiscais.Fornecedor(lFornecedor as TFornecedor);
        lNotasFiscais.Semana(TLibUtils.GETSemana(FcdsNotasFiscais.FieldByName('Data').AsDateTime));

        lJSONArray.AddElement(TJson.ObjectToJsonObject(lNotasFiscais as TNotasFiscais));

        lOk := True;
      end;

      FcdsNotasFiscais.Next;
    end;

    if lOK then
    try
      DMRequest.POST('notasFiscais', lJSONArray.ToString);
    except

    end;

  finally
    if FcdsNotasFiscais.BookmarkValid(lBookMark) then
      FcdsNotasFiscais.GotoBookmark(lBookMark);
    FcdsNotasFiscais.FreeBookmark(lBookMark);
    FcdsNotasFiscais.EnableControls;
    FreeAndNil(lJSONArray);
  end;



end;

end.

