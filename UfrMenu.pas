unit UfrMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TFrmMenu = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Configuraodebomba1: TMenuItem;
    Relatrio1: TMenuItem;
    Relatriode1: TMenuItem;
    Bombas1: TMenuItem;
    anque1: TMenuItem;
    Consulta1: TMenuItem;
    anques1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Bombas1Click(Sender: TObject);
    procedure anque1Click(Sender: TObject);
    procedure anques1Click(Sender: TObject);
    procedure Relatriode1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses ufrBombas, UfrCadastroBombas, ufrCadastroTanque, UfrConsultaTanque,
  ufrPrincipal, UnFunc, UDados, ufrAbastercerTanque,URelAbastecimento,UfrpRelatorioAbastecimento ,
  Ufrchamarel;

procedure TFrmMenu.anque1Click(Sender: TObject);
var
  CadTaque: TFrmCadastroTanque;
begin
  CadTaque := TFrmCadastroTanque.Create(Self);
  CadTaque.Show;
end;

procedure TFrmMenu.anques1Click(Sender: TObject);
var
  ConsTanque: TFrmConsultatanque;
begin
  ConsTanque := TFrmConsultatanque.Create(Self);
  ConsTanque.Show;
end;

procedure TFrmMenu.Bombas1Click(Sender: TObject);
var
  Cadbomba: TFrmCadBombas;
begin
  Cadbomba := TFrmCadBombas.Create(Self);
  Cadbomba.Show;
end;

procedure TFrmMenu.Relatriode1Click(Sender: TObject);
var
  relabastecimento : TFrmchamarel;
begin
  relabastecimento := TFrmchamarel.Create(Self);
  relabastecimento.Show;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := 'Date : ' + datetostr(date);
  StatusBar1.Panels[2].Text := 'Hora : ' + TimeToStr(Time);
end;

end.
