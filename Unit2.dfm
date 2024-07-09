object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 137
  Height = 222
  Width = 328
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=penju' +
      'alan'
    Provider = 'MSDASQL.1'
    Left = 40
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=penju' +
      'alan'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kustomer')
    Left = 160
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 112
  end
end
