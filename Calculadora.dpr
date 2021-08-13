program Calculadora;

uses
  Vcl.Forms,
  UformCalculadora in 'UformCalculadora.pas' {FrmCalculadora},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCalculadora, FrmCalculadora);
  Application.Run;
end.
