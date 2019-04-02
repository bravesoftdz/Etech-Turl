unit Classe.LayoutUtils;

interface

uses
  interfaces.LayoutUtils, Vcl.Forms, Vcl.Graphics, System.SysUtils, Winapi.Windows, Vcl.Controls, Winapi.Messages;

type

  TLayoutUtils = class(TInterfacedObject, iLayoutUtils)
  private
    FFormBase: TForm;
    procedure CriarFormBaseEsmaecer();
  public
    procedure EsmaecerFundoShow();
    procedure EsmaecerFundoClose();
    procedure ArredondarBordas(pComponent: TWinControl);
  public
    constructor Create();
    destructor Destroy(); override;
    class function New(): iLayoutUtils;
  end;

implementation

{ TLayoutUtils }

procedure TLayoutUtils.ArredondarBordas(pComponent: TWinControl);
var
   R: TRect;
   Rgn: HRGN;
begin
  R := pComponent.ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10) ;
  pComponent.Perform(EM_GETRECT, 0, lParam(@r)) ;
  InflateRect(r, - 4, - 4) ;
  pComponent.Perform(EM_SETRECTNP, 0, lParam(@r)) ;
  SetWindowRgn(pComponent.Handle, rgn, True) ;
  pComponent.Invalidate;
end;

constructor TLayoutUtils.Create;
begin
  CriarFormBaseEsmaecer();
end;

procedure TLayoutUtils.CriarFormBaseEsmaecer;
begin
  FFormBase := TForm.Create(nil);
  FFormBase.Color := ClBlack;
  FFormBase.WindowState := wsMaximized;
  FFormBase.AlphaBlend := True;
  FFormBase.AlphaBlendValue := 110;
  FFormBase.BorderStyle := bsNone;
end;

destructor TLayoutUtils.Destroy;
begin
  FreeAndNil(FFormBase);
  inherited;
end;

procedure TLayoutUtils.EsmaecerFundoClose;
begin
  FFormBase.Close();
end;

procedure TLayoutUtils.EsmaecerFundoShow;
begin
  FFormBase.Show();
end;

class function TLayoutUtils.New: iLayoutUtils;
begin
  Result := Self.Create;
end;

end.
