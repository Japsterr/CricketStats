unit updatePlayer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmUpdatePlayer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtRuns_scored: TEdit;
    radNo: TRadioButton;
    radYes: TRadioButton;
    edtWickets: TEdit;
    edtOvers_bolwed: TEdit;
    Button1: TButton;
    Button2: TButton;
    edtBalls_faced: TEdit;
    edtWides: TEdit;
    edtNo_balls: TEdit;
    edtRuns_conceded: TEdit;
    lblPlayer: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure saveData();
    function verifyInput(): Boolean;
    procedure getPlayer();
    procedure GetCalculations();
    procedure convertDecimal();
  end;

var
  frmUpdatePlayer: TfrmUpdatePlayer;

implementation

{$R *.dfm}

uses data, calculate;

procedure TfrmUpdatePlayer.Button1Click(Sender: TObject);
begin

  if verifyInput then
  begin
    getPlayer();
    saveData;
    getCalculations;
    showMessage('The stats have been saved');
    close;
  end
  else
    showMessage('Not all the inputs are correct');

end;

procedure TfrmUpdatePlayer.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUpdatePlayer.convertDecimal;
var position, strLength: Integer;
var sentence: string;
begin
  sentence := edtOvers_bolwed.Text;
  position := pos('.', sentence);

  if position <> 0 then
  begin
    delete(sentence, position, 1);
    insert(',', sentence, position);
    edtOvers_bolwed.text := sentence;
  end
  else
    edtOvers_bolwed.text := sentence;
end;

procedure TfrmUpdatePlayer.FormCreate(Sender: TObject);
begin
  lblPlayer.Caption := Database.qPlayerStats_currentNames.Text+' '+Database.qPlayerStats_currentSurname.Text;
end;

procedure TfrmUpdatePlayer.GetCalculations;
var oversBowl, ballsBowl: Double;
var runsBat, runsBowl, InningsBat, WidesBowl, noBallsBowl, ballsBat, wickets: Integer;
var calculation : TCalculate;
begin
  oversBowl := Database.qUpdatePlayerStatsOvers_Bowled.Value;
  runsBat := Database.qUpdatePlayerStatsRuns_Scored.Value;
  runsBowl := Database.qUpdatePlayerStatsRuns_Bowled.Value;
  inningsBat := Database.qUpdatePlayerStatsMatches_Bat.Value;
  widesBowl := Database.qUpdatePlayerStatsWides_Bowled.Value;
  noBallsBowl := Database.qUpdatePlayerStatsNo_Bowled.Value;
  ballsBat := Database.qUpdatePlayerStatsBatting_Balls.Value;
  wickets := Database.qUpdatePlayerStatsWickets.Value;


  if StrToInt(edtBalls_faced.Text) > 0 then
  begin
    Database.qUpdatePlayerStats.Edit;
    Database.qUpdatePlayerStatsBatting_Strike.Value := calculation.twoDecimal(calculation.calcualteBatStrike(ballsBat, runsBat));
    Database.qUpdatePlayerStatsBatting_Avg.Value := calculation.twoDecimal(calculation.calculateBatAvg(inningsBat, runsBat));
    Database.qUpdatePlayerStats.Post;
  end;

  if StrTofloat(edtOvers_bolwed.Text) > 0 then
  begin
    Database.qUpdatePlayerStats.Edit;
    Database.qUpdatePlayerStatsAvg_Bowled.Value := calculation.twoDecimal(calculation.calculateBowlAvg(wickets, runsBowl));
    Database.qUpdatePlayerStatsEco_Bowled.Value := calculation.twoDecimal(calculation.calculateBowlEco(runsBowl, oversBowl));
    Database.qUpdatePlayerStats.Post;


    oversBowl := Database.qUpdatePlayerStatsOvers_Bowled.Value;
    ballsBowl := calculation.getBalls(oversBowl);

    Database.qUpdatePlayerStats.Edit;
    Database.qupdateplayerstatsStrike_Bowled.Value := calculation.twoDecimal(calculation.calculateBowlStrke(ballsBowl, wickets));
    Database.qUpdatePlayerStats.Post;
  end;

end;

procedure TfrmUpdatePlayer.getPlayer;
begin
  Database.qUpdatePlayerStats.Active := false;
  Database.qUpdatePlayerStats.Parameters.ParamByName('number').Value := Database.qPlayerStats_currentplayer_stats_currentPNum.Value;
  Database.qUpdatePlayerStats.Parameters.ParamByName('span').Value := Database.qPlayerStats_currentTeam.Value;
  Database.qUpdatePlayerStats.Active := true;
end;

procedure TfrmUpdatePlayer.saveData;
var newRuns, newBalls, newWickets, newWides, newNo_balls, newRuns_conceded: Integer;
  currentOvers_bowled, newOvers_bowled : Double;
  currentRuns, currentBalls, currentWickets, currentWides, currentNo_balls, currentRuns_conceded: Integer;
  currentMatches_bat, currentMatches_played, currentFifties, currentHundred, currentBatting_high: Integer;
  currentMatches_bowled: integer;
  calculation : TCalculate;
  var finalRuns, finalMatchesBat, finalMatchesPlayed, finalBattingBalls, finalFifties, finalHundred, finalBattingHigh: integer;

  var finalMatchesBowled, finalWidesBolwed, finalNoBalls, finalRunsBowled, finalWickets: Integer;
  var finalOversBowled : double;
  var finalBestBowled, currentBestBowl: String;
begin
  //first we assign the values the user used as input to the variables
  //the variables will all start with the word New
  convertDecimal;
  newRuns := StrToInt(edtRuns_scored.Text);
  newBalls := StrToInt(edtballs_faced.Text);
  newWickets := StrToInt(edtWickets.Text);
  newNo_balls := StrToInt(edtNo_balls.Text);
  newRuns_conceded := StrToInt(edtRuns_conceded.Text);
  newOvers_bowled := StrToFloat(edtOvers_bolwed.Text);
  newWides := StrToInt(edtWides.Text);

  //new we retrieve the current values from the record in the database to be
  //used for the calculations. These variables will start with the word current
  currentRuns := Database.qPlayerStats_currentRuns_Scored.Value;
  currentBalls := Database.qPlayerStats_currentBatting_Balls.Value;
  currentWickets := Database.qPlayerStats_currentWickets.Value;
  currentWides := Database.qPlayerStats_currentWides_Bowled.Value;
  currentNo_balls := Database.qPlayerStats_currentNo_Bowled.Value;
  currentRuns_conceded := Database.qPlayerStats_currentRuns_Bowled.Value;
  currentMatches_bat := Database.qPlayerStats_currentMatches_Bat.Value;
  currentMatches_played := Database.qPlayerStats_currentMatches_Played.Value;
  currentFifties := Database.qPlayerStats_currentNumber_50.Value;
  currentHundred := Database.qPlayerStats_currentNumber_100.Value;
  currentBatting_high := Database.qPlayerStats_currentBatting_High.Value;
  currentMatches_bowled := Database.qPlayerStats_currentMatches_Bowled.Value;
  currentOvers_bowled := Database.qPlayerStats_currentOvers_Bowled.Value;
  currentBestBowl := Database.qPlayerStats_currentBest_Bowled.Value;

  //setting variables that needs to be save in database
  //Batting variables first

  finalRuns := Calculation.updateRuns(currentRuns, newRuns);
  if radNo.Checked then
  begin
    finalMatchesBat := Calculation.updateBatInnings(currentMatches_bat, 1);
  end
  else
  begin
    finalMatchesBat := Calculation.updateBatInnings(currentMatches_bat, 0);
  end;

  finalMatchesPlayed := Calculation.updateBatMatches(currentMatches_played, 1);
  finalBattingBalls := calculation.updateBallsBat(currentBalls, newBalls);
  finalFifties := calculation.updateFifty(currentfifties, newRuns);
  finalHundred := calculation.updateHunderd(currentHundred, newRuns);
  finalBattingHigh := calculation.calculateBatHigh(currentBatting_high, newRuns);

  //Bowling variables
  if StrTofloat(edtOvers_bolwed.Text) > 0 then
  begin
    finalMatchesBowled := calculation.updateBatMatches(currentMatches_bowled, 1);
    finalOversBowled := calculation.updateBowlOvers(currentOvers_bowled, newOvers_bowled);
    finalWidesBolwed := calculation.updateWides(currentWides, newWides);
    finalNoBalls := calculation.updateNoBalls(currentNo_balls, newNo_balls);
    finalRunsBowled := calculation.updateBowlRuns(currentRuns_conceded, newRuns_conceded);
    finalWickets := calculation.updateBowlWickets(currentWickets, newWickets);
    finalBestBowled := calculation.calculateBowlBest(currentBestBowl, newWickets, newRuns_Conceded);
  end;

  Database.qUpdatePlayerStats.Edit;
  Database.qUpdatePlayerStatsMatches_Played.Value := finalMatchesPlayed;

  //enter only if he faced more then 0 balls otherwise do not update batting
  if StrToInt(edtBalls_faced.Text) > 0 then
  begin
    Database.qUpdatePlayerStatsRuns_Scored.Value := finalRuns;
    Database.qUpdatePlayerStatsMatches_Bat.Value := finalMatchesBat;
    Database.qUpdatePlayerStatsBatting_Balls.Value := finalBattingBalls;
    Database.qUpdatePlayerStatsNumber_50.Value := finalFifties;
    Database.qUpdatePlayerStatsNumber_100.Value := finalHundred;
    Database.qUpdatePlayerStatsBatting_High.Value := finalBattingHigh;
  end;

  //now we need to add the bowling figures if he actually bowled an over
  if StrToFloat(edtOvers_bolwed.Text) > 0 then
  begin
    Database.qUpdatePlayerStatsMatches_Bowled.Value := finalMatchesBowled;
    Database.qUpdatePlayerStatsOvers_Bowled.Value := finalOversBowled;
    Database.qUpdatePlayerStatsWides_Bowled.Value := finalWidesBolwed;
    Database.qUpdatePlayerStatsNo_Bowled.Value := finalNoBalls;
    Database.qUpdatePlayerStatsRuns_Bowled.Value := finalRunsBowled;
    Database.qUpdatePlayerStatsWickets.Value := finalWickets;
    Database.qUpdatePlayerStatsBest_Bowled.Value := finalBestBowled;
  end;

  Database.qUpdatePlayerStats.Post;
end;

function TfrmUpdatePlayer.verifyInput: Boolean;
var verified : boolean;
begin
  verified := true;

  if length(trim(edtRuns_scored.Text)) < 1 then
   verified := false;

  if length(trim(edtBalls_faced.Text)) < 1 then
   verified := false;

  if length(trim(edtwickets.Text)) < 1 then
   verified := false;

  if length(trim(edtRuns_scored.Text)) < 1 then
   verified := false;

  if length(trim(edtWides.Text)) < 1 then
   verified := false;

  if length(trim(edtNo_balls.Text)) < 1 then
   verified := false;

  if length(trim(edtRuns_conceded.Text)) < 1 then
   verified := false;

  result := verified;


end;

end.
