unit UFrPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrPrincipal = class(TForm)
    imgUsuarios: TImage;
    imgReceber: TImage;
    imgPagar: TImage;
    imgCaixa: TImage;
    imgConReceber: TImage;
    imgConPagamento: TImage;
    imgRelPagar: TImage;
    imgConfig: TImage;
    imgNavegador: TImage;
    imgRelReceber: TImage;
    imgRelCaixa: TImage;
    BalloonHint1: TBalloonHint;
    gbCadastro: TGroupBox;
    gbRelatórios: TGroupBox;
    gbSistema: TGroupBox;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frPrincipal: TfrPrincipal;

implementation

{$R *.dfm}

procedure TfrPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(Application.MessageBox('Deseja Realmente Sair?','Atenção',MB_YESNO) = mrYes) then
    Application.Terminate
  else
    abort;
end;

procedure TfrPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(Now);
end;

end.
