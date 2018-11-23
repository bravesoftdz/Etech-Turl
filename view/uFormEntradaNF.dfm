inherited frmEntradaNF: TfrmEntradaNF
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 192
    Width = 1024
    Height = 528
    Align = alBottom
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited TimerHora: TTimer
    Left = 880
    Top = 0
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 816
  end
end
