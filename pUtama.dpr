program pUtama;

uses
  Vcl.Forms,
  uUtama in 'uUtama.pas' {frmUtama},
  uRepositories in 'Repositories\uRepositories.pas',
  uDM in 'uDM.pas' {dbGoMSSQLConnection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmUtama, frmUtama);
  Application.CreateForm(TdbGoMSSQLConnection, dbGoMSSQLConnection);
  Application.Run;
end.
