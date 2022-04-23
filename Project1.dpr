program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {fCalculaValor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfCalculaValor, fCalculaValor);
  Application.Run;
end.
