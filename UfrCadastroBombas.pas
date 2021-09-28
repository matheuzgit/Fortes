unit UfrCadastroBombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.UI.Intf, FireDAC.VCLUI.Error, FireDAC.Comp.UI;

type
  TFrmCadBombas = class(TForm)
    Panel1: TPanel;
    DblkTanque: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Meditimposto: TMaskEdit;
    MeditValor: TMaskEdit;
    BtnConfirmar: TButton;
    QryBombas: TFDQuery;
    QryTanque: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    SingleField1: TSingleField;
    DsTanque: TDataSource;
    QryBombasBOMBA: TStringField;
    QryBombasID_TANQUE: TStringField;
    QryBombasIMPOSTO: TSingleField;
    QryBombasVALOR_LITRO: TSingleField;
    Dblkbomba: TDBLookupComboBox;
    DsBombas: TDataSource;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBombas: TFrmCadBombas;

implementation

{$R *.dfm}

uses UDados;

procedure TFrmCadBombas.BtnConfirmarClick(Sender: TObject);
VAR
  VALOR, IMPOSTO : Currency;
begin
  VALOR := StrToFloat(Copy( MeditValor.Text,1,3));
  IMPOSTO := StrToFloat(Copy( Meditimposto.Text,1,3));

  QryBombas.SQL.Clear;
  QryBombas.SQL.Add('SELECT * FROM TBBOMBAS');
  QryBombas.Open;
  QryBombas.First;

  while not QryBombas.eof do
  begin
    if Dblkbomba.Text = QryBombasBOMBA.AsString then
    begin
      if MessageDlg('Este Bomba já exites , deseja alterar os dados conforme os campos digitados?', mtInformation, [mbYes,mbNo], 0) = mrYes then
      begin
        QryTanque.SQL.Clear;
        if Meditimposto.Text <> '00,00%' then
           QryTanque.SQL.Add('UPDATE  TBBOMBAS SET IMPOSTO = '+ CurrToStr(IMPOSTO));
        if MeditValor.Text <> '00,00' then
           QryTanque.SQL.Add(', VALOR_LITRO = '+ CurrToStr(VALOR));

        QryTanque.SQL.Add('where BOMBA = '''+Dblkbomba.Text+'''');
        QryTanque.ExecSQL;
        MessageDlg('Alterações realizadas com sucesso', mtInformation, [mbOK], 0);
        Break;
      end
      else
        Break;
    end;
    QryBombas.Next;
  end;


  QryBombas.SQL.Clear;
  QryBombas.SQL.Add('INSERT INTO  TBBOMBAS(BOMBA, ID_TANQUE, IMPOSTO, VALOR_LITRO )'+
                    'VALUES(:BOMBA, :ID_TANQUE, :IMPOSTO, :VALOR_LITRO)');

  QryBombas.Params.ParamByName('BOMBA').AsString := Dblkbomba.Text;
  QryBombas.Params.ParamByName('ID_TANQUE').AsString := DblkTanque.Text;
  QryBombas.Params.ParamByName('IMPOSTO').AsFloat := IMPOSTO;
  QryBombas.Params.ParamByName('VALOR_LITRO').AsFloat := VALOR;
  QryBombas.ExecSQL;
  MessageDlg('Bomba Cadastrada com Sucesso', mtInformation, [mbOK], 0);



end;

procedure TFrmCadBombas.FormCreate(Sender: TObject);
begin
  QryTanque.open;
  QryBombas.open;
end;

end.
