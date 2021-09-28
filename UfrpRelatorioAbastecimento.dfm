object FrpRelatorioAbastecimento: TFrpRelatorioAbastecimento
  Left = 0
  Top = 0
  Caption = 'FrpRelatorioAbastecimento'
  ClientHeight = 561
  ClientWidth = 790
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
    Left = -12
    Top = -32
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      object RLLabel1: TRLLabel
        Left = 216
        Top = 16
        Width = 313
        Height = 29
        Caption = 'Relat'#243'rio de Abatecimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 40
      object RLDBDataHora: TRLDBText
        Left = 32
        Top = 21
        Width = 92
        Height = 16
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 176
        Top = 21
        Width = 92
        Height = 16
        Text = ''
      end
    end
  end
end
