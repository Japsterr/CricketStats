unit editStats;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEditStats = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button1: TButton;
    Button2: TButton;
    edtMatchesPlayed: TEdit;
    edtInningsBat: TEdit;
    edtRunsScored: TEdit;
    edtBallsFaced: TEdit;
    edtFifties: TEdit;
    edtHundreds: TEdit;
    edtHighestScore: TEdit;
    edtOversBowled: TEdit;
    edtWides: TEdit;
    edtNoBalls: TEdit;
    edtRunsConceded: TEdit;
    edtWickets: TEdit;
    Label14: TLabel;
    edtBestBowl: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    var runsScored, matchesPlayed, inningsBat, ballsFaced, fifties, hundreds: Integer;
    var highestScore, wides, noBalls, runsConceded, wickets: Integer;
    var oversBowled: double;
    var bestBowl: String;
  public
    { Public declarations }
    procedure display();
    procedure edit();
    procedure verifyEdit();
    procedure convertDecimal();
    procedure getPlayer();
  end;

var
  frmEditStats: TfrmEditStats;

implementation

{$R *.dfm}

uses calculate, data;

{ TfrmEditStats }

procedure TfrmEditStats.Button1Click(Sender: TObject);
begin
  getPlayer();
  verifyEdit;
  edit;
  ShowMessage('The Stats have been Edited Successfully');
  close;
end;

procedure TfrmEditStats.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmEditStats.convertDecimal;
var position, strLength: Integer;
var sentence: string;
begin
  sentence := edtOversBowled.Text;
  position := pos('.', sentence);

  if position <> 0 then
  begin
    delete(sentence, position, 1);
    insert(',', sentence, position);
    edtOversBowled.text := sentence;
  end
  else
    edtOversBowled.text := sentence;
end;

procedure TfrmEditStats.display;
begin
  edtRunsScored.Text := IntToStr(runsScored);
  edtMatchesPlayed.Text := IntToStr(matchesPlayed);
  edtInningsBat.Text := IntToStr(inningsBat);
  edtBallsFaced.Text := IntToStr(ballsFaced);
  edtFifties.Text := IntToStr(fifties);
  edtHundreds.Text := IntToStr(hundreds);
  edtHighestScore.Text := IntToStr(highestScore);
  edtWides.Text := IntToStr(wides);
  edtNoBalls.Text := IntToStr(noBalls);
  edtRunsConceded.Text := IntToStr(runsConceded);
  edtWickets.Text := intToStr(wickets);
  edtOversBowled.Text := FloatToStr(oversBowled);
  edtBestBowl.Text := bestBowl;
  label1.Caption := Database.GetPlayerName(Database.qPlayerStats_currentplayer_stats_currentPNum.Value);
end;

procedure TfrmEditStats.edit;
var calculation: TCalculate;
var oversBowl, ballsBowl: Double;
begin
  Database.qUpdatePlayerStats.Edit;
  Database.qUpdatePlayerStatsRuns_Scored.Value := runsScored;
  Database.qUpdatePlayerStatsMatches_Played.Value := matchesPlayed;
  Database.qUpdatePlayerStatsMatches_Bat.Value := inningsBat;
  Database.qUpdatePlayerStatsBatting_Balls.Value := ballsFaced;
  Database.qUpdatePlayerStatsNumber_50.Value := fifties;
  Database.qUpdatePlayerStatsNumber_100.Value := hundreds;
  Database.qUpdatePlayerStatsBatting_High.Value := highestScore;
  Database.qUpdatePlayerStatsWides_bowled.Value := wides;
  Database.qUpdatePlayerStatsNo_Bowled.Value := noBalls;
  Database.qUpdatePlayerStatsRuns_Bowled.Value := runsConceded;
  Database.qUpdatePlayerStatsOvers_Bowled.Value := oversBowled;
  Database.qUpdatePlayerStatsBest_Bowled.Value := bestBowl;
  Database.qUpdatePlayerStats.Post;

  //now we do the calculation of the averages
  Database.qUpdatePlayerStats.Edit;
  Database.qUpdatePlayerStatsBatting_strike.Value := calculation.twoDecimal(calculation.calcualteBatStrike(ballsFaced, RunsScored));
  Database.qUpdatePlayerStatsBatting_avg.Value := calculation.twoDecimal(calculation.calculateBatAvg(inningsBat, RunsScored));
  Database.qUpdatePlayerStatsAvg_Bowled.Value := calculation.twoDecimal(calculation.calculateBowlAvg(wickets, runsConceded));
  Database.qUpdatePlayerStatsEco_bowled.Value := calculation.twoDecimal(calculation.calculateBowlEco(runsConceded, oversBowled));
  Database.qUpdatePlayerStats.Post;

  //now we get strike rate
  oversBowl := Database.qUpdatePlayerStatsOvers_Bowled.Value;
  ballsBowl := calculation.getBalls(oversBowl);

  Database.qUpdatePlayerStats.Edit;
  Database.qupdateplayerstatsStrike_Bowled.Value := calculation.twoDecimal(calculation.calculateBowlStrke(ballsBowl, wickets));
  Database.qUpdatePlayerStats.Post;
end;

procedure TfrmEditStats.FormCreate(Sender: TObject);
begin
  //first we assign values to our private variables that we will be using
  //taking the current values out of the database
  runsScored := Database.qPlayerStats_currentRuns_Scored.Value;
  matchesPlayed := Database.qPlayerStats_currentMatches_Played.Value;
  inningsBat := Database.qPlayerStats_currentMatches_Bat.Value;
  ballsFaced := Database.qPlayerStats_currentBatting_Balls.Value;
  fifties := Database.qPlayerStats_currentNumber_50.Value;
  hundreds := Database.qPlayerStats_currentNumber_100.Value;
  highestScore := Database.qPlayerStats_currentBatting_High.Value;
  wides := Database.qPlayerStats_currentWides_Bowled.Value;
  noBalls := Database.qPlayerStats_currentNo_Bowled.Value;
  runsConceded := Database.qPlayerStats_currentRuns_Bowled.Value;
  wickets := Database.qPlayerStats_currentWickets.Value;
  oversBowled := Database.qPlayerStats_currentOvers_Bowled.Value;
  bestBowl := Database.qPlayerStats_currentBest_Bowled.Value;

  //now we are going to display the current values in the form
  display();
end;

procedure TfrmEditStats.getPlayer;
begin
  Database.qUpdatePlayerStats.Active := false;
  Database.qUpdatePlayerStats.Parameters.ParamByName('number').Value := Database.qPlayerStats_currentplayer_stats_currentPNum.Value;
  Database.qUpdatePlayerStats.Parameters.ParamByName('span').Value := Database.qPlayerStats_currentTeam.Value;
  Database.qUpdatePlayerStats.Active := true;
end;

procedure TfrmEditStats.verifyEdit;
begin
  //here we make sure that each edit box has a value, or we keep the
  //original value
  if length(trim(edtRunsScored.Text)) > 0 then
    runsScored := StrToInt(edtRunsScored.Text);

  if length(trim(edtMatchesPlayed.Text)) > 0 then
    matchesPlayed := StrToInt(edtMatchesPlayed.Text);

  if length(trim(edtInningsBat.Text)) > 0 then
    inningsBat := StrToInt(edtInningsBat.Text);

  if length(trim(edtBallsFaced.Text)) > 0 then
    ballsFaced := StrToInt(edtBallsFaced.Text);

  if length(trim(edtfifties.Text)) > 0 then
    fifties := StrToInt(edtFifties.Text);

  if length(trim(edtHundreds.Text)) > 0 then
    hundreds := StrToInt(edtHundreds.Text);

  if length(trim(edtHighestScore.Text)) > 0 then
    highestScore := StrToInt(edtHighestScore.Text);

  if length(trim(edtwides.Text)) > 0 then
    wides := StrToInt(edtWides.Text);

  if length(trim(edtnoBalls.Text)) > 0 then
    noBalls := StrToInt(edtNoBalls.Text);

  if length(trim(edtRunsConceded.Text)) > 0 then
    runsConceded := StrToInt(edtRunsConceded.Text);

  if length(trim(edtWickets.Text))  > 0 then
    wickets := StrToInt(edtWickets.Text);

  convertDecimal; //we first change the '.' in the number to a ','
  if length(trim(edtOversBowled.Text)) > 0 then
    oversBowled := StrToFloat(edtOversBowled.Text);

  if length(trim(edtBestBowl.Text)) > 0 then
    bestBowl := edtBestBowl.Text;

end;

end.
