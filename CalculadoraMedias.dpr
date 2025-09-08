program CalculadoraMedias;

uses
  Vcl.Forms,
  CalculadoraMedias.Principal in 'src\CalculadoraMedias.Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
