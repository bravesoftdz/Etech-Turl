unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxLabel, MaskUtils, cxButtonEdit, cxCheckBox;

type
  TfrmLogin = class(TForm)
    pnlPrincipal: TPanel;
    pnlBottom: TPanel;
    lblBemVindo: TLabel;
    Image2: TImage;
    lblFacaSeuLogin: TLabel;
    btnEntrar: TImage;
    lblCNPJ: TLabel;
    lblLogin: TLabel;
    lblSenha: TLabel;
    lblCancelar: TLabel;
    lblEntar: TLabel;
    btnLogin: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    btnSenha: TcxButtonEdit;
    cxCheckBox1: TcxCheckBox;
    procedure lblCancelarClick(Sender: TObject);
    procedure lblCancelarMouseEnter(Sender: TObject);
    procedure lblCancelarMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.lblCancelarClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmLogin.lblCancelarMouseEnter(Sender: TObject);
begin
  lblCancelar.Font.Color := $004b5fee;
end;

procedure TfrmLogin.lblCancelarMouseLeave(Sender: TObject);
begin
  lblCancelar.Font.Color := $0081817F;
end;

end.
