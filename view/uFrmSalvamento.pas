unit uFrmSalvamento;

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
  dxSkinXmas2008Blue, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls, cxImage,
  interfaces.LayoutUtils, Vcl.Imaging.GIFImg, Vcl.ComCtrls, Vcl.Imaging.jpeg;

type
  TFrmSalvamento = class(TForm)
    imgTopo: TImage;
    imgBaixo: TImage;
    lblAguarde: TcxLabel;
    cxImage1: TcxImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FLayout: iLayoutUtils;
  public
    class procedure Show();
    class procedure Close();
  end;

var
  FrmSalvamento: TFrmSalvamento;

implementation

{$R *.dfm}

{ TFrmSalvamento }

class procedure TFrmSalvamento.Close;
begin
  FrmSalvamento.Close();
end;

procedure TFrmSalvamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FrmSalvamento);
end;

procedure TFrmSalvamento.FormCreate(Sender: TObject);
var
  region : hrgn;
begin
  TdxGIFImage(cxImage1.Picture.Graphic).Animation := True;
  region:= CreateRoundRectRgn(0, 0, width, height, 20, 20);
  setwindowrgn(handle, region, true);
end;

class procedure TFrmSalvamento.Show;
begin
  FrmSalvamento := TFrmSalvamento.Create(nil);
  FrmSalvamento.ShowModal();
end;

end.
