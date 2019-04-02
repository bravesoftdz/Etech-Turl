unit uFormBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses;

type
  TfrmBase = class(TForm)
    imgSombraTopo: TImage;
    pnlTop: TPanel;
    lblHora: TLabel;
    lblSair: TLabel;
    lblData: TLabel;
    lblDiadaSemana: TLabel;
    pnlLogo: TPanel;
    imgLogo: TImage;
    TimerHora: TTimer;
    pnlBottom: TPanel;
    imgUsuario: TImage;
    Image4: TImage;
    lblRazaoSocial: TLabel;
    lblUsuarioLogado: TLabel;
    shpDivisoria: TShape;
    procedure lblSairMouseEnter(Sender: TObject);
    procedure lblSairMouseLeave(Sender: TObject);
    procedure lblSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerHoraTimer(Sender: TObject);
  private
    function DiadaSemana(const pDia: Integer): string;
  private
    procedure ExibirDataHora();
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

{ TForm1 }

function TfrmBase.DiadaSemana(const pDia: Integer): string;
begin
  case pDia of
    1:Result := 'Domingo';
    2:Result := 'Segunda-Feira';
    3:Result := 'Terça-Feira';
    4:Result := 'Quarta-Feira';
    5:Result := 'Quinta-Feira';
    6:Result := 'Sexta-Fiera';
    7:Result := 'Sábado';
  end;
end;

procedure TfrmBase.ExibirDataHora;
begin
  lblHora.Caption := FormatDateTime('HH:MM', Time);
  lblData.Caption := FormatDateTime('dd "de" MMMM "de" yyyy', Date);
  lblDiadaSemana.Caption := DiadaSemana(DayOfWeek(Now)) + ',';
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  ExibirDataHora();
end;

procedure TfrmBase.lblSairClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmBase.lblSairMouseEnter(Sender: TObject);
begin
  lblSair.Font.Color := $004b5fee;
end;

procedure TfrmBase.lblSairMouseLeave(Sender: TObject);
begin
  lblSair.Font.Color := clWhite;
end;

procedure TfrmBase.TimerHoraTimer(Sender: TObject);
begin
  ExibirDataHora();
end;

end.
