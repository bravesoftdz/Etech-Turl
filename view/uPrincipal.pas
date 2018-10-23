unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.StdCtrls,
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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.Menus, cxButtons,
  System.ImageList, Vcl.ImgList, FireDAC.Stan.StorageJSON, uEntradaNF, uBaixaEstoque;

type
  TfrmPrincipal = class(TForm)
    pnlTop: TPanel;
    imgLogoEtchTurl: TcxImage;
    cxImageList1: TcxImageList;
    btnMetaCompras: TButton;
    btnBaixaEstoque: TButton;
    btnGraficoCompras: TButton;
    btnGestaoCMV: TButton;
    btnFechamentoFinanceiro: TButton;
    btnCotacao: TButton;
    btnEntradaNF: TButton;
    procedure btnEntradaNFClick(Sender: TObject);
    procedure btnBaixaEstoqueClick(Sender: TObject);
    procedure btnGraficoComprasClick(Sender: TObject);
    procedure btnGestaoCMVClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uLogin;

{$R *.dfm}

procedure TfrmPrincipal.btnBaixaEstoqueClick(Sender: TObject);
var
  frmEntradaNF: TfrmEntradaNF;
begin
  frmEntradaNF := TfrmEntradaNF.Create(nil);
  try
    frmEntradaNF.ShowModal;
  finally
    FreeAndNil(frmEntradaNF);
  end;
end;

procedure TfrmPrincipal.btnEntradaNFClick(Sender: TObject);
var
  frmLogin: TfrmLogin;
begin
  frmLogin := TfrmLogin.Create(nil);
  try
    frmLogin.ShowModal;
  finally
    FreeAndNil(frmLogin);
  end;
end;

procedure TfrmPrincipal.btnGestaoCMVClick(Sender: TObject);
var
  frmBaixaEstoque: TfrmBaixaEstoque;
begin
  frmBaixaEstoque := TfrmBaixaEstoque.Create(nil);
  try
    frmBaixaEstoque.ShowModal;
  finally
    FreeAndNil(frmBaixaEstoque);
  end;
end;

procedure TfrmPrincipal.btnGraficoComprasClick(Sender: TObject);
begin
  ShowMessage(IntToStr(DayOfWeek(Now)))
end;

end.
