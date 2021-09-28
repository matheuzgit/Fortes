unit URelAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFrpAbastecimento = class(TForm)
    QryResultAbastecimento: TFDQuery;
    DsResultAbastecimento: TDataSource;
    QryResultAbastecimentoBOMBA: TStringField;
    QryResultAbastecimentoID_TANQUE: TStringField;
    QryResultAbastecimentoDATAHORA: TSQLTimeStampField;
    QryResultAbastecimentoVALOR_PAGO: TSingleField;
    QryResultAbastecimentoQUANTIDADE: TSingleField;
    QryResultAbastecimentoIMPOSTO_PAGO: TSingleField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLGroup1: TRLGroup;
    RLGroup2: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    diaini,diafim,mesini,mesfim,anoini,anofim, datainicial, datafinal : string
  end;

var
  FrpAbastecimento: TFrpAbastecimento;


implementation

{$R *.dfm}

uses UDados, UfrpRelatorioAbastecimento, Ufrchamarel;

END.
