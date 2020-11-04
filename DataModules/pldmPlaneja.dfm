object dmPlaneja: TdmPlaneja
  OldCreateOrder = False
  Height = 274
  Width = 374
  object Conexão: TFDConnection
    Params.Strings = (
      'Database=D:\Projetos Prog\Planejamento\Banco\BDPLON.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 16
    Top = 16
  end
  object tbLogin: TFDTable
    DetailFields = 'LOGIN;SENHA'
    Connection = Conexão
    UpdateOptions.UpdateTableName = 'TLOGIN'
    TableName = 'TLOGIN'
    Left = 16
    Top = 72
    object tbLoginID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object tbLoginLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 50
    end
    object tbLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 10
    end
  end
  object dsTables: TDataSource
    DataSet = tbLogin
    Left = 16
    Top = 136
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = Conexão
    Left = 216
    Top = 176
  end
end
