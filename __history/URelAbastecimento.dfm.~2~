object FrpAbastecimento: TFrpAbastecimento
  Left = 0
  Top = 0
  Caption = 'FrpAbastecimento'
  ClientHeight = 749
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DsResultAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 110
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 152
        Top = 48
        Width = 407
        Height = 24
        Caption = 'Relat'#243'rio de Abastecimento Posto ABC '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 148
      Width = 718
      Height = 149
      DataFields = 'ID_TANQUE'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 41
        BandType = btHeader
        object RLLabel2: TRLLabel
          Left = 7
          Top = 14
          Width = 62
          Height = 16
          Caption = 'Data/Hora'
        end
        object RLLabel3: TRLLabel
          Left = 207
          Top = 14
          Width = 46
          Height = 16
          Caption = 'Tanque'
        end
        object RLLabel4: TRLLabel
          Left = 393
          Top = 14
          Width = 45
          Height = 16
          Caption = 'Bomba'
        end
        object RLLabel5: TRLLabel
          Left = 577
          Top = 14
          Width = 125
          Height = 16
          Caption = 'Valor/Abastecimento'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 30
          Width = 715
          Height = 11
          DrawKind = dkLine
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 41
        Width = 718
        Height = 24
        object RLDBText1: TRLDBText
          Left = 3
          Top = 6
          Width = 75
          Height = 16
          DataField = 'DATAHORA'
          DataSource = DsResultAbastecimento
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 207
          Top = 6
          Width = 76
          Height = 16
          DataField = 'ID_TANQUE'
          DataSource = DsResultAbastecimento
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 378
          Top = 6
          Width = 52
          Height = 16
          DataField = 'BOMBA'
          DataSource = DsResultAbastecimento
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 575
          Top = 5
          Width = 93
          Height = 16
          DataField = 'VALOR_PAGO'
          DataSource = DsResultAbastecimento
          DisplayMask = 'R$#,##,0.00'
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 40
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 577
          Top = 21
          Width = 70
          Height = 16
          DataField = 'VALOR_PAGO'
          DataSource = DsResultAbastecimento
          DisplayMask = 'R$#,##,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 501
          Top = 21
          Width = 74
          Height = 16
          Caption = 'Valor Total :'
        end
      end
    end
  end
  object RLGroup1: TRLGroup
    Left = 416
    Top = 408
    Width = 1
    Height = 64
    Transparent = False
  end
  object QryResultAbastecimento: TFDQuery
    Connection = DataModule1.FDconSYSCombo
    SQL.Strings = (
      'Select * from TBABASTECIMENTO   a'
      
        'where   cast(a.DATAHORA as date)  between :DtInicial and :DtFina' +
        'l'
      'order by a.id_tanque,'
      '                a.datahora')
    Left = 432
    Top = 568
    ParamData = <
      item
        Name = 'DTINICIAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTFINAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QryResultAbastecimentoBOMBA: TStringField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
      Required = True
      Size = 10
    end
    object QryResultAbastecimentoID_TANQUE: TStringField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object QryResultAbastecimentoDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
      Required = True
    end
    object QryResultAbastecimentoVALOR_PAGO: TSingleField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Required = True
    end
    object QryResultAbastecimentoQUANTIDADE: TSingleField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object QryResultAbastecimentoIMPOSTO_PAGO: TSingleField
      FieldName = 'IMPOSTO_PAGO'
      Origin = 'IMPOSTO_PAGO'
      Required = True
    end
  end
  object DsResultAbastecimento: TDataSource
    DataSet = QryResultAbastecimento
    Left = 280
    Top = 568
  end
end
