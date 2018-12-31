program prSistemaFinancas;

uses
  Vcl.Forms,
  UFrPrincipal in 'UFrPrincipal.pas' {frPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrPrincipal, frPrincipal);
  Application.Run;
end.
