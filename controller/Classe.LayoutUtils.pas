unit Classe.LayoutUtils;

interface

uses
  interfaces.LayoutUtils, Vcl.Forms, Vcl.Graphics, System.SysUtils;

type

  TLayoutUtils = class(TInterfacedObject, iLayoutUtils)
  private
    FFormBase: TForm;
    procedure CriarFormBaseEsmaecer();
  public
    procedure EsmaecerFundoShow();
    procedure EsmaecerFundoClose();
  public
    constructor Create();
    destructor Destroy(); override;
    class function New(): iLayoutUtils;
  end;

implementation

{ TLayoutUtils }

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
