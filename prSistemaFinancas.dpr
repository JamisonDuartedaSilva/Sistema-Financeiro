program prSistemaFinancas;

uses
  Vcl.Forms,
  UFrPrincipal in 'UFrPrincipal.pas' {frPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
