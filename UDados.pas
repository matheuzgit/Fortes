unit UDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, Vcl.Forms;

type
  TDataModule1 = class(TDataModule)
    FDconSYSCombo: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDPhysFBDriverLink1DriverCreated(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  FDconSYSCombo.Params.Database := ExtractFilePath(Application.ExeName) + 'BDPOSTOABC.fdb';
  FDconSYSCombo.Connected := TRUE;

end;

procedure TDataModule1.FDPhysFBDriverLink1DriverCreated(Sender: TObject);
begin
  FDPhysFBDriverLink1.VendorLib := ExtractFilePath(Application.ExeName) + 'FBCLIENT.DLL';

end;

end.
