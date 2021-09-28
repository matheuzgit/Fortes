unit ufrCadastroTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.Comp.Client, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TFrmCadastroTanque = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    QryTanque: TFDQuery;
    DStanque: TDataSource;
    QryTanqueID_TANQUE: TStringField;
    QryTanqueTIPO_COMBUSTIVEL: TStringField;
    QryTanqueLITROS: TSingleField;
    FDCommand1: TFDCommand;
    EdtIdTanque: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtTipoComb: TEdit;
    Label3: TLabel;
    Button3: TButton;
    EdtQntComb: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTanque: TFrmCadastroTanque;

implementation

{$R *.dfm}

uses UDados, ufrAbastercerTanque;

procedure TFrmCadastroTanque.Button1Click(Sender: TObject);
var
  qtdcomb : Currency;
begin
  QryTanque.SQL.Clear;
  QryTanque.SQL.Add('select * from TBTANQUE');
  QryTanque.Close;
  QryTanque.Open;
  QryTanque.First;

  qtdcomb := StringToCursor(EdtQntComb.Text);

  while not QryTanque.eof do
  begin
    if EdtIdTanque.Text = QryTanqueID_TANQUE.AsString then
    begin
      if MessageDlg('Este tanque já exites , deseja abastece-ló?', mtInformation, [mbYes, mbNo], 0) = mrYes then
      begin
        FrmAbastercerTanque.ShowModal;
      end
      else
        Break;
    end;
    QryTanque.Next;
  end;

  QryTanque.SQL.Clear;
  QryTanque.SQL.Add('INSERT INTO  tbtanque(ID_TANQUE, TIPO_COMBUSTIVEL, LITROS)'+
                    'VALUES(:ID_TANQUE, :TIPO_COMBUSTIVEL, :LITROS)');

  QryTanque.Params.ParamByName('ID_TANQUE').AsString := EdtIdTanque.Text;
  QryTanque.Params.ParamByName('TIPO_COMBUSTIVEL').AsString := EdtTipoComb.Text;
  QryTanque.Params.ParamByName('LITROS').AsFloat := qtdcomb;
  QryTanque.ExecSQL;
  MessageDlg('Cadastro do tanque feito com sucesso', mtInformation, [ mbOK], 0)

end;

procedure TFrmCadastroTanque.Button3Click(Sender: TObject);
var
  AbasTaque : TFrmAbastercerTanque;
begin
  AbasTaque := TFrmAbastercerTanque.Create(Self);
  AbasTaque.Show;
end;

end.
