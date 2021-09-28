unit ufrAbastercerTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmAbastercerTanque = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    MEditLitos: TMaskEdit;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    QryAbastecer: TFDQuery;
    QryAbastecerID_TANQUE: TStringField;
    QryAbastecerTIPO_COMBUSTIVEL: TStringField;
    QryAbastecerLITROS: TSingleField;
    QryTanque: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    SingleField1: TSingleField;
    Dstanque: TDataSource;
    DblkTanque: TDBLookupComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbastercerTanque: TFrmAbastercerTanque;

implementation

{$R *.dfm}

procedure TFrmAbastercerTanque.FormCreate(Sender: TObject);
begin
  QryTanque.Open;
end;

procedure TFrmAbastercerTanque.SpeedButton1Click(Sender: TObject);
begin
  QryAbastecer.SQL.Clear;
  QryAbastecer.SQL.Add('SELECT * FROM TBTANQUE WHERE ID_TANQUE =''' + DbLkTanque.Text+'''' );
  QryAbastecer.close;
  QryAbastecer.Open;

  if MEditLitos.Text > '10000'  then
    raise Exception.Create('Tanque tem suporte até 10.000 litros');

  if  QryAbastecerLITROS.AsFloat > 0  then
    raise Exception.Create('Tanque só pode ser abastcido quando estiver vázio');



  if (DbLkTanque.Text <> '') and (MEditLitos.Text <> '') then
  begin

    QryAbastecer.SQL.Clear;
    QryAbastecer.SQL.Add('UPDATE  TBTANQUE SET LITROS =  '+ (MEditLitos.Text));
    QryAbastecer.SQL.Add('where ID_TANQUE = '''+DbLkTanque.Text+'''');
    QryAbastecer.ExecSQL;
    MessageDlg('Abastecimento feito com sucesso', mtInformation, [mbOK], 0);

  end
  else
  begin
    MessageDlg('Todos os campos são obrigatórios', mtInformation, [mbOK], 0)
  end;


end;

end.
