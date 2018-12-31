inherited frmBaixaEstoque: TfrmBaixaEstoque
  PixelsPerInch = 96
  TextHeight = 13
  object gridBaixadeEstoque: TcxGrid [2]
    Left = 0
    Top = 176
    Width = 1093
    Height = 542
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 175
    object gridBaixadeEstoqueDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Base'
          FixedKind = fkLeft
        end
        item
          Caption = 'Semana1'
        end
        item
          Caption = 'Semana2'
        end
        item
          Caption = 'Semana3'
        end
        item
          Caption = 'Semana4'
        end
        item
          Caption = 'Semana5'
        end
        item
          Caption = 'Total'
        end>
      object gridColBaixadeEstoqueGrupo: TcxGridDBBandedColumn
        Visible = False
        GroupIndex = 0
        MinWidth = 200
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueProduto: TcxGridDBBandedColumn
        Caption = 'Produto'
        MinWidth = 200
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSaldoAnterior: TcxGridDBBandedColumn
        Caption = 'Saldo Anterior'
        MinWidth = 100
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Entrada: TcxGridDBBandedColumn
        Caption = 'Entrada'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia1: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia2: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia3: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia4: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia5: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia6: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Dia7: TcxGridDBBandedColumn
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1Consumo: TcxGridDBBandedColumn
        Caption = 'Consumo'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana1SaldoFinal: TcxGridDBBandedColumn
        Caption = 'Saldo Final'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Entrada: TcxGridDBBandedColumn
        Caption = 'Entrada'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia8: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia9: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia10: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia11: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia12: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia13: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Dia14: TcxGridDBBandedColumn
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2Consumo: TcxGridDBBandedColumn
        Caption = 'Consumo'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana2SaladoFinal: TcxGridDBBandedColumn
        Caption = 'Saldo Final'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Entrada: TcxGridDBBandedColumn
        Caption = 'Entrada'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia15: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia16: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia17: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia18: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia19: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia20: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Dia21: TcxGridDBBandedColumn
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3Consumo: TcxGridDBBandedColumn
        Caption = 'Consumo'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana3SaldoFinal: TcxGridDBBandedColumn
        Caption = 'Saldo Final'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Entrada: TcxGridDBBandedColumn
        Caption = 'Entrada'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia22: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia23: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia24: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia25: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia26: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia27: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Dia28: TcxGridDBBandedColumn
        Position.BandIndex = 4
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4Consumo: TcxGridDBBandedColumn
        Caption = 'Consumo'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 4
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana4SaldoFinal: TcxGridDBBandedColumn
        Caption = 'Saldo Final'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 4
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana5Entrada: TcxGridDBBandedColumn
        Caption = 'Entrada'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana5Dia29: TcxGridDBBandedColumn
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana5Dia30: TcxGridDBBandedColumn
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana5Dia31: TcxGridDBBandedColumn
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana5Consumo: TcxGridDBBandedColumn
        Caption = 'Consumo'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 5
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueSemana5SaldoFinal: TcxGridDBBandedColumn
        Caption = 'Saldo Final'
        MinWidth = 100
        Width = 100
        Position.BandIndex = 5
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueQuantidadeConsumoTotal: TcxGridDBBandedColumn
        Caption = 'Quantidade Consumo Total'
        MinWidth = 100
        Width = 200
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gridColBaixadeEstoqueValorConsumoTotal: TcxGridDBBandedColumn
        Caption = 'Valor Consumo Total'
        MinWidth = 100
        Width = 200
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object gridBaixadeEstoqueLevel1: TcxGridLevel
      GridView = gridBaixadeEstoqueDBBandedTableView1
    end
  end
  inherited pnlBottom: TPanel
    TabOrder = 2
    ExplicitTop = 47
    inherited Image4: TImage
      Left = -37
      Top = -7
      Height = 50
      ExplicitLeft = -37
      ExplicitTop = -7
      ExplicitHeight = 50
    end
  end
  inherited TimerHora: TTimer
    Left = 976
    Top = 3
  end
end
