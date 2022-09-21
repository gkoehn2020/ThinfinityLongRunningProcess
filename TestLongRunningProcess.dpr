program TestLongRunningProcess;

uses
  Vcl.Forms,
  frmUIMain in 'frmUIMain.pas' {Form2},
  untVirtualUIInit in 'untVirtualUIInit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
