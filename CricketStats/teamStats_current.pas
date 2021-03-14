unit teamStats_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, frxClass, frxDBSet, frxDesgn, Vcl.ExtCtrls;

type
  TfrmTeamStats_current = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    btnUpdate: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnPlayer: TButton;
    btnTeam: TButton;
    Button5: TButton;
    frxRptStatsCurrent: TfrxReport;
    frxDesigner2: TfrxDesigner;
    qteamStats_current: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnPlayerClick(Sender: TObject);
    procedure btnTeamClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure removePlayer();
    procedure removeTeam();
  end;

var
  frmTeamStats_current: TfrmTeamStats_current;

implementation

{$R *.dfm}

uses data, updatePlayer, calculate, editStats;

procedure TfrmTeamStats_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmTeamStats_current.Button2Click(Sender: TObject);
begin
  frmEditStats := TfrmEditStats.Create(self);
  frmEditStats.ShowModal;
  frmEditStats.Free;

  Database.qPlayerStats_current.Active := false;
  Database.qPlayerStats_current.Active := true;
  DBGrid1.Refresh;
end;

procedure TfrmTeamStats_current.btnUpdateClick(Sender: TObject);
begin
  frmUpdatePlayer := TfrmUpdatePlayer.Create(self);
  frmUpdatePlayer.ShowModal;
  frmUpdatePlayer.Free;

  Database.qPlayerStats_current.Active := false;
  Database.qPlayerStats_current.Active := true;
  DBGrid1.Refresh;
end;

procedure TfrmTeamStats_current.btnPlayerClick(Sender: TObject);
var playername : string;
begin
  playername := Database.GetPlayerName(Database.qPlayerStats_currentplayer_stats_currentPNum.Value);
  if MessageDlg('Do you want to delete player '+playername+'?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      removePlayer();
      Database.qPlayerStats_current.Active := false;
      Database.qPlayerStats_current.Active := true;
      DBGrid1.Refresh;
    end;
end;

procedure TfrmTeamStats_current.btnTeamClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to remove the whole team?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      removeTeam;
      Database.qPlayerStats_current.Active := false;
      Database.qPlayerStats_current.Active := true;
      DBGrid1.Refresh;
    end;
end;

procedure TfrmTeamStats_current.Button5Click(Sender: TObject);
Var reportfile : string;
begin
  Database.qPlayerStats_current.Active := false;
  Database.qPlayerStats_current.Active := true;
  Database.qPlayerStats_current.First;

  if copy(Database.qPlayerStats_currentDivision.Text,1,27) = 'ACC - Alberton Cricket Club' then
     reportfile := 'C:\CricketStats\Reports\PlayerStatsCurrent.fr3'
    else
      reportfile := 'C:\CricketStats\Reports\PlayerStatsCurrentJnr.fr3';

  if frxRptStatsCurrent.LoadFromFile(reportfile) then
     if frxRptStatsCurrent.PrepareReport then
        frxRptStatsCurrent.ShowPreparedReport
       else
         Showmessage('Not Prepared')
    else
      Showmessage('Fastreport not found: '+reportfile);
end;

procedure TfrmTeamStats_current.FormCreate(Sender: TObject);
begin
  if Database.qPlayerStats_current.IsEmpty then
  begin
    btnTeam.Enabled := false;
    btnPlayer.Enabled := false;
    btnUpdate.Enabled := false;
  end;

end;

procedure TfrmTeamStats_current.removePlayer;
var matches, innings, runs, balls, fifty, hundred, topScorePast, topScoreNew, wides, noBalls, wickets, runsConceded: integer;
var oversPast, oversNew: double;
var bestPast: string;
var calculation: TCalculate;
begin
  //first we get the current player
  Database.qUpdatePlayerStats.Active := false;
  Database.qUpdatePlayerStats.Parameters.ParamByName('number').Value := Database.qPlayerStats_currentplayer_stats_currentPNum.Value;
  Database.qUpdatePlayerStats.Parameters.ParamByName('span').Value := Database.qPlayerStats_currentTeam.Value;
  Database.qUpdatePlayerStats.Active := true;

  //now we need to transfer the player to the past table, but we first need to see if the player
  //has not played for the team before
  Database.qUpdatePlayerStatsPast.Active := false;
  Database.qUpdatePlayerStatsPast.Parameters.ParamByName('number').Value := Database.qPlayerStats_currentplayer_stats_currentPNum.Value;
  Database.qUpdatePlayerStatsPast.Parameters.ParamByName('span').Value := Database.qPlayerStats_currentTeam.Value;
  Database.qUpdatePlayerStatsPast.Active := true;

  if (Database.qUpdatePlayerStatsPast.IsEmpty) then  //if there is no past record of this team then
  begin
    Database.qUpdatePlayerStatsPast.Insert;
    Database.qUpdatePlayerStatsPastPNum.Value := Database.qUpdatePlayerStatsPNum.Value;
    Database.qUpdatePlayerStatsPastDivision.Value := Database.qUpdatePlayerStatsDivision.Value;
    Database.qUpdatePlayerStatsPastTeam.Value := Database.qUpdatePlayerStatsTeam.Value;
    Database.qUpdatePlayerStatsPastRuns_Scored.Value := Database.qUpdatePlayerStatsRuns_Scored.Value;
    Database.qUpdatePlayerStatsPastMatches_Bat.Value := Database.qUpdatePlayerStatsMatches_Bat.Value;
    Database.qUpdatePlayerStatsPastMatches_Played.Value := Database.qUpdatePlayerStatsMatches_Played.Value;
    Database.qUpdatePlayerStatsPastBatting_Balls.Value := Database.qUpdatePlayerStatsBatting_Balls.Value;
    Database.qUpdatePlayerStatsPastBatting_Strike.Value := Database.qUpdatePlayerStatsBatting_Strike.Value;
    Database.qUpdatePlayerStatsPastBatting_Avg.Value := Database.qUpdatePlayerStatsBatting_avg.Value;
    Database.qUpdatePlayerStatsPastNumber_50.Value := Database.qUpdatePlayerStatsNumber_50.Value;
    Database.qUpdatePlayerStatsPastNumber_100.Value := Database.qUpdatePlayerStatsNumber_100.Value;
    Database.qUpdatePlayerStatsPastBatting_High.Value := Database.qUpdatePlayerStatsBatting_High.Value;
    Database.qUpdatePlayerStatsPastOvers_Bowled.Value := Database.qUpdatePlayerStatsOvers_Bowled.Value;
    Database.qUpdatePlayerStatsPastWides_Bowled.Value := Database.qUpdatePlayerStatsWides_Bowled.Value;
    Database.qUpdatePlayerStatsPastNo_Bowled.Value := Database.qUpdatePlayerStatsNo_Bowled.Value;
    Database.qUpdatePlayerStatsPastRuns_Bowled.Value := Database.qUpdatePlayerStatsRuns_Bowled.Value;
    Database.qUpdatePlayerStatsPastWickets.Value := Database.qUpdatePlayerStatsWickets.Value;
    Database.qUpdatePlayerStatsPastBest_Bowled.Value := Database.qUpdatePlayerStatsBest_Bowled.Value;
    Database.qUpdatePlayerStatsPastAvg_Bowled.Value := Database.qUpdatePlayerStatsAvg_Bowled.Value;
    Database.qUpdatePlayerStatsPastEco_Bowled.Value := Database.qUpdatePlayerStatsEco_Bowled.Value;
    Database.qUpdatePlayerStatsPast.Post;
    Database.qUpdatePlayerStats.Delete;
  end
  else //if there is a past recorcd of this player in the team then add these runs
  begin
    //first we need to assign values to the variable we are going to use
    runs := Database.qUpdatePlayerStatsRuns_Scored.Value +  Database.qUpdatePlayerStatsPastRuns_Scored.Value;
    matches := Database.qUpdatePlayerStatsPastMatches_Played.Value + Database.qUpdatePlayerStatsMatches_Played.Value;
    innings := Database.qUpdatePlayerStatsPastMatches_Bat.Value + Database.qUpdatePlayerStatsMatches_Bat.Value;
    balls := Database.qUpdatePlayerStatsPastBatting_Balls.Value + Database.qUpdatePlayerStatsBatting_Balls.Value;
    fifty := Database.qUpdatePlayerStatsPastNumber_50.Value + Database.qUpdatePlayerStatsNumber_50.Value;
    hundred := Database.qUpdatePlayerStatsPastNumber_100.Value + Database.qUpdatePlayerStatsNumber_100.Value;
    topScorePast := Database.qUpdatePlayerStatsPastBatting_High.Value;
    topScoreNew :=  Database.qUpdatePlayerStatsBatting_High.Value;
    wides := Database.qUpdatePlayerStatsPastWides_Bowled.Value + Database.qUpdatePlayerStatsWides_Bowled.Value;
    noBalls := Database.qUpdatePlayerStatsPastNo_Bowled.Value + Database.qUpdatePlayerStatsNo_Bowled.Value;
    runsConceded := Database.qUpdatePlayerStatsPastRuns_Bowled.Value + Database.qUpdatePlayerStatsRuns_Bowled.Value;
    oversPast := Database.qUpdatePlayerStatsPastOvers_Bowled.Value;
    oversNew :=  Database.qUpdatePlayerStatsOvers_Bowled.Value;
    bestPast := Database.qUpdatePlayerStatsPastBest_Bowled.Value;
    wickets := Database.qUpdatePlayerStatsPastWickets.Value + Database.qUpdatePlayerStatsWickets.Value;

    //now we update the database with our new values
    Database.qUpdatePlayerStatsPast.Edit;
    Database.qUpdatePlayerStatsPastPNum.Value := Database.qUpdatePlayerStatsPNum.Value;
    Database.qUpdatePlayerStatsPastDivision.Value := Database.qUpdatePlayerStatsDivision.Value;
    Database.qUpdatePlayerStatsPastTeam.Value := Database.qUpdatePlayerStatsTeam.Value;
    Database.qUpdatePlayerStatsPastRuns_Scored.Value := runs;
    Database.qUpdatePlayerStatsPastMatches_Bat.Value := innings;
    Database.qUpdatePlayerStatsPastMatches_Played.Value := matches;
    Database.qUpdatePlayerStatsPastBatting_Balls.Value := balls;
    Database.qUpdatePlayerStatsPastBatting_Strike.Value := calculation.calcualteBatStrike(balls, runs);
    Database.qUpdatePlayerStatsPastBatting_Avg.Value := calculation.calculateBatAvg(innings, runs);
    Database.qUpdatePlayerStatsPastNumber_50.Value := fifty;
    Database.qUpdatePlayerStatsPastNumber_100.Value := hundred;
    Database.qUpdatePlayerStatsPastBatting_High.Value := calculation.calculateBatHigh(topScorePast, topScoreNew);
    Database.qUpdatePlayerStatsPastOvers_Bowled.Value := calculation.updateBowlOvers(oversPast, oversNew);
    Database.qUpdatePlayerStatsPastWides_Bowled.Value := wides;
    Database.qUpdatePlayerStatsPastNo_Bowled.Value := noBalls;
    Database.qUpdatePlayerStatsPastRuns_Bowled.Value := runsConceded;
    Database.qUpdatePlayerStatsPastWickets.Value := wickets;
    Database.qUpdatePlayerStatsPastBest_Bowled.Value := calculation.calculateBowlBest(bestPast, wickets, runsConceded);
    Database.qUpdatePlayerStatsPastAvg_Bowled.Value := calculation.calculateBowlAvg(innings, runsConceded);
    Database.qUpdatePlayerStatsPastEco_Bowled.Value := calculation.calculateBowlEco(runsConceded, calculation.updateBowlOvers(oversPast, oversNew));
    Database.qUpdatePlayerStatsPast.Post;
    Database.qUpdatePlayerStats.Delete;
  end;

  if Database.qPlayerStats_current.IsEmpty then
  begin
    btnPlayer.enabled := false;
    btnTeam.Enabled := false;
  end;

end;

procedure TfrmTeamStats_current.removeTeam;
begin

  //first we get the current player
  Database.qUpdatePlayerStats.Active := false;
  Database.qUpdatePlayerStats.Parameters.ParamByName('number').Value := Database.qPlayerStats_currentplayer_stats_currentPNum.Value;
  Database.qUpdatePlayerStats.Parameters.ParamByName('span').Value := Database.qPlayerStats_currentTeam.Value;
  Database.qUpdatePlayerStats.Active := true;

  Database.qUpdatePlayerStats.First;
  while not(Database.qUpdatePlayerStats.Eof) OR not(Database.qUpdatePlayerStats.IsEmpty) do
  begin
    removePlayer;
    Database.qUpdatePlayerStats.First;
  end;

end;

end.
