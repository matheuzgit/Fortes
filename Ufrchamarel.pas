unit Ufrchamarel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFrmchamarel = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimeFinal: TDateTimePicker;
    BtnGeraRel: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure BtnGeraRelClick(Sender: TObject);
  private
    { Private declarations }
  public
     datainicial, datafinal : string;
    { Public declarations }
  end;

var
  Frmchamarel: TFrmchamarel;

implementation

{$R *.dfm}

uses UDados, URelAbastecimento;

procedure TFrmchamarel.BtnGeraRelClick(Sender: TObject);
var rel : TFrpAbastecimento;
begin
  rel :=  TFrpAbastecimento.Create(self);
  try
    rel.QryResultAbastecimento.ParamByName('DtInicial').AsDate := DateTimePicker1.Date;
    rel.QryResultAbastecimento.ParamByName('DtFinal').AsDate  := DateTimeFinal.Date;
    rel.QryResultAbastecimento.Open;
    rel.RLReport1.PreviewModal;
    rel.Release;
  finally
    rel.Free;
  end;
end;

end.
