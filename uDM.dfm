object dbGoMSSQLConnection: TdbGoMSSQLConnection
  OldCreateOrder = True
  Height = 198
  Width = 282
  object Connection: TADOConnection
    Left = 64
    Top = 8
  end
  object AureliusConnection1: TAureliusConnection
    AdapterName = 'dbGo'
    AdaptedConnection = Connection
    SQLDialect = 'MSSQL'
    Left = 64
    Top = 64
  end
end
