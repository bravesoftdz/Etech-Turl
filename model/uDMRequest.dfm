object DMRequest: TDMRequest
  OldCreateOrder = False
  Height = 147
  Width = 329
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://localhost:8010/001/produtos'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 40
    Top = 16
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 168
    Top = 16
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 40
    Top = 72
  end
  object RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = RESTResponse
    Left = 168
    Top = 72
  end
end
