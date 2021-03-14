program CricketStats;

uses
  Vcl.Forms,
  main in 'main.pas' {frmMain},
  data in 'data.pas' {Database: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  playerMenu in 'playerMenu.pas' {frmPlayerMenu},
  playerRegistration in 'playerRegistration.pas' {frmPlayerRegistration},
  programSettings in 'programSettings.pas' {frmProgramSettings},
  calculate in 'calculate.pas',
  teamStats_past in 'teamStats_past.pas' {frmTeamStats_past},
  updatePlayer in 'updatePlayer.pas' {frmUpdatePlayer},
  playerChangeTeam in 'playerChangeTeam.pas' {frmPlayerChangeTeam},
  playerDelete in 'playerDelete.pas' {frmPlayerDelete},
  editStats in 'editStats.pas' {frmEditStats},
  teamStats_current in 'teamStats_current.pas' {frmTeamStats_current};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TDatabase, Database);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmTeamStats_current, frmTeamStats_current);
  Application.CreateForm(TfrmTeamStats_current, frmTeamStats_current);
  Application.Run;
end.
