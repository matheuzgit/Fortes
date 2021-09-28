program Syscombo;

uses
  Vcl.Forms,
  UDados in 'UDados.pas' {DataModule1: TDataModule},
  UfrCadastroBombas in 'UfrCadastroBombas.pas' {FrmCadBombas},
  ufrAbastercerTanque in 'ufrAbastercerTanque.pas' {FrmAbastercerTanque},
  ufrBombas in 'ufrBombas.pas' {FrmBombas},
  ufrCadastroTanque in 'ufrCadastroTanque.pas' {FrmCadastroTanque},
  Ufrchamarel in 'Ufrchamarel.pas' {Frmchamarel},
  UfrConsultaTanque in 'UfrConsultaTanque.pas' {FrmConsultatanque},
  UfrMenu in 'UfrMenu.pas' {FrmMenu},
  UfrPrincipal in 'UfrPrincipal.pas' {Form1},
  URelAbastecimento in 'URelAbastecimento.pas' {FrpAbastecimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmCadBombas, FrmCadBombas);
  Application.CreateForm(TFrmchamarel, Frmchamarel);
  Application.CreateForm(TFrmAbastercerTanque, FrmAbastercerTanque);
  Application.CreateForm(TFrmBombas, FrmBombas);
  Application.CreateForm(TFrmCadastroTanque, FrmCadastroTanque);
  Application.CreateForm(TFrmchamarel, Frmchamarel);
  Application.CreateForm(TFrmConsultatanque, FrmConsultatanque);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrpAbastecimento, FrpAbastecimento);
  Application.Run;
end.
