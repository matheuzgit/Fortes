unit UfrConsultaTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConsultatanque = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    BtnConsulta: TButton;
    Label1: TLabel;
    QryTanque: TFDQuery;
    Dstanque: TDataSource;
    DblkTanque: TDBLookupComboBox;
    QryTanqueID_TANQUE: TStringField;
    QryTanqueTIPO_COMBUSTIVEL: TStringField;
    QryTanqueLITROS: TSingleField;
    QryPesquisa: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    SingleField1: TSingleField;
    dspesquisa: TDataSource;
    procedure BtnConsultaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultatanque: TFrmConsultatanque;

implementation

{$R *.dfm}

uses UDados;

procedure TFrmConsultatanque.BtnConsultaClick(Sender: TObject);
begin
  if DblkTanque.Text <> EmptyStr then
  begin
    QryPesquisa.SQL.Clear;
    QryPesquisa.SQL.Add('SELECT * FROM TBTANQUE WHERE ID_TANQUE = '''+ DblkTanque.Text+'''');
    QryPesquisa.Close;
    QryPesquisa.open;
  end
  else
  begin
    QryPesquisa.SQL.Clear;
    QryPesquisa.SQL.Add('SELECT * FROM TBTANQUE ');
    QryPesquisa.Close;
    QryPesquisa.open;
  end;
end;

procedure TFrmConsultatanque.FormCreate(Sender: TObject);
begin
  QryTanque.open;
end;

end.
