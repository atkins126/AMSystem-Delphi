object DM: TDM
  Height = 366
  Width = 493
  object zCon: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    HostName = 'localhost'
    Port = 3306
    Database = 'projeto_db'
    User = 'root'
    Password = '123456'
    Protocol = 'mysql'
    LibraryLocation = 
      'Z:\Desenvolvimento\Projetos\Delphi\AMSystem-Delphi\libmariadb.dl' +
      'l'
    Left = 24
    Top = 16
  end
  object qPesq: TZQuery
    Connection = zCon
    Params = <>
    Left = 160
    Top = 81
  end
  object dPesq: TDataSource
    DataSet = qPesq
    Left = 176
    Top = 81
  end
  object qExecSQL: TZQuery
    Connection = zCon
    Params = <>
    Left = 176
    Top = 24
  end
end
