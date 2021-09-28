object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 220
  Width = 535
  object FDconSYSCombo: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 248
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    OnDriverCreated = FDPhysFBDriverLink1DriverCreated
    Left = 80
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 136
  end
end
