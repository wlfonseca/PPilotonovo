object DmItem: TDmItem
  OldCreateOrder = False
  Height = 194
  Width = 376
  object Con1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'localhost'
    Port = 0
    Database = 'exemplo'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'c:\sistemas\libmysql.dll'
    Left = 32
    Top = 32
  end
  object ZqPesquisar: TZQuery
    Params = <>
    Left = 80
    Top = 32
  end
  object ZqQIncluir: TZQuery
    Params = <>
    Left = 144
    Top = 32
  end
  object ZqExcluir: TZQuery
    Params = <>
    Left = 200
    Top = 32
  end
  object ZQuery4: TZQuery
    Params = <>
    Left = 272
    Top = 32
  end
end
