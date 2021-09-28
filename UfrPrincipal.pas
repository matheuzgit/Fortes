unit UfrPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtDlgs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses  UDados, ufrAbastercerTanque, ufrBombas, UfrCadastroBombas,
  ufrCadastroTanque, UfrConsultaTanque, UfrMenu, UfrpRelatorioAbastecimento,
  UnFunc, URelAbastecimento;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  menu : TFrmMenu;
begin
  menu := TFrmMenu.Create(Self);
  menu.Show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  Bombas : TFrmBombas;
begin
  Bombas := TFrmBombas.Create(Self);
  Bombas.Show;
end;

end.
