unit calculate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  TCalculate = class(TObject)
    Private
    {here comes the private members}
    Public
    {here comes the public members}
    function calculateBatHigh(current, new: Integer): Integer;
    function calculateBatAvg(innings, runs: integer): Double;
    function calcualteBatStrike(balls, runs: Integer): Double;
    function calculateBowlAvg(bowlWickets, bowlRuns: Integer): Double;
    function calculateBowlEco(bowlRuns: Integer; bowlOvers: Double): Double;
    function calculateBowlStrke(balls: Double; wickets: Integer): Double;
    function calculateBowlBest(currentBest: String; newWickets, newRuns: Integer): String;
    function updateRuns(currentRuns, newRuns: Integer): integer;
    function updateFifty(currentFifty, newRuns: Integer): Integer;
    function updateHunderd(currentHundred, newRuns: Integer):Integer;
    function updateBatMatches(currentBatMatches, newBatMatch: Integer): Integer;
    function updateBatInnings(currentInnings, newInnings: Integer): Integer;
    function updateBowlInnings(currentInnings, newInnings: Integer): Integer;
    function updateBowlOvers(currentOvers, newOvers: Double): Double;
    function updateWides(currentWides, newWides: Integer): Integer;
    function updateNoBalls(currentNoBalls, newNoBalls: Integer): Integer;
    function updateBowlWickets(currentWickets, newWickets: Integer): Integer;
    function updateBowlRuns(currentRuns, newRuns: Integer):Integer;
    function updateBallsBat(currentBalls, newBalls: Integer): Integer;
    function twoDecimal(number: Double): Double;
    function getBalls(overs: double):Double;
  end;

implementation

{ TCalculate }



{ TCalculate }



function TCalculate.calcualteBatStrike(balls, runs: integer): Double;
begin
  result := (runs / balls) * 100;
end;

function TCalculate.calculateBatAvg(innings, runs: Integer): Double;
begin
  if innings = 0 then
    result := runs / 1
  else
    result := runs / innings;
end;

function TCalculate.calculateBatHigh(current, new: Integer): Integer;
begin
  if current >= new then
    result := current
  else
    result := new
end;

function TCalculate.calculateBowlAvg(bowlWickets, bowlRuns: integer): Double;
begin
  if bowlWickets = 0 then
    result := 0
  else
    result := bowlRuns / bowlWickets;

end;

function TCalculate.calculateBowlBest(currentBest: String; newWickets,
  newRuns: Integer): String;
var number: string;
var position, strLength, frontNumber, backNumber: integer;
var wickets, runs, front, back :string;
begin
  strLength := length(currentBest);
  position := pos('/', currentBest);

  if strLength > 1 then
  begin
    front := currentBest;
    back := currentBest;
    delete(front, position, strLength);   //get the wickets
    delete(back, 1, position); //get the runs

    //now we convert to integers so we can compare with the new wickets and runs
    frontNumber := StrToInt(front);
    backNumber := StrToInt(back);

    //now we test the current to the
    if frontNumber = newWickets then
    begin
      if backNumber <= newRuns then
      begin
        result := currentBest;
      end
      else
      begin
        result := front + '/' + IntToStr(newRuns);
      end;
    end
    else if frontNumber < newWickets then
    begin
      result := IntToStr(newWickets) + '/' + IntToStr(newRuns);
    end
    else
      result := currentBest;
  end
  else
    result := IntToStr(newWickets) +  '/' + IntToStr(newRuns);

end;

function TCalculate.calculateBowlEco(bowlRuns: Integer;
  bowlOvers: Double): Double;
begin
  if bowlOvers = 0 then
    result := 0
  else
    result := bowlRuns / bowlOvers;

end;

function TCalculate.calculateBowlStrke(balls: Double; wickets: Integer): Double;
begin
  result := balls / wickets;
end;

function TCalculate.getBalls(overs: double): double;
var front, back, position, strLength: Integer;
var frontStr, backStr, overStr: String;
begin
  overStr := FloatToStr(overs);
  strLength := length(overStr);
  position := pos(',', overStr);
  if position > 0 then
  begin
    frontStr := overStr;
    backStr := overStr;
    delete(frontStr, position, strLength);
    delete(backStr, 1, position);
    front := StrToInt(frontStr);
    back := StrToInt(backStr);
    result := front + back;
  end
  else
    result := overs * 6;
end;

function TCalculate.twoDecimal(number: Double): Double;
begin
  result := round(number*100)/100;
end;

function TCalculate.updateBallsBat(currentBalls, newBalls: Integer): Integer;
begin
  result := currentBalls + newBalls;
end;

function TCalculate.updateBatInnings(currentInnings,
  newInnings: Integer): Integer;
begin
  result := currentInnings + newInnings;
end;

function TCalculate.updateBatMatches(currentBatMatches,
  newBatMatch: Integer): Integer;
begin
  result := currentBatMatches + newBatMatch;
end;

function TCalculate.updateBowlInnings(currentInnings,
  newInnings: Integer): Integer;
begin
  result := currentInnings + newInnings;
end;

function TCalculate.updateBowlOvers(currentOvers, newOvers: Double): Double;
var overs, totalOvers, extraBalls: Double;
begin
  overs := trunc(currentOvers) + trunc(newOvers);
  extraBalls := (frac(currentOvers) * 10) + (frac(newOvers) * 10);

  if extraballs = 6 then
    overs := overs + 1
  else if extraballs < 6 then
    overs := overs + (extraballs / 10 )
  else
  begin
    overs := overs + ((extraballs - 6) / 10);
  end;

  result := overs;
end;

function TCalculate.updateBowlRuns(currentRuns, newRuns: Integer): Integer;
begin
  result := currentRuns + newRuns;
end;

function TCalculate.updateBowlWickets(currentWickets,
  newWickets: Integer): Integer;
begin
  result := currentWickets + newWickets;
end;

function TCalculate.updateFifty(currentFifty, newRuns: Integer): Integer;
begin
   if newRuns > 49 then
      result := currentFifty + 1
   else
      result := currentFifty;
end;

function TCalculate.updateHunderd(currentHundred, newRuns: Integer): Integer;
begin
  if newRuns > 99 then
    result := currentHundred + 1
  else
    result := currentHundred;
end;

function TCalculate.updateNoBalls(currentNoBalls, newNoBalls: Integer): Integer;
begin
  result := currentNoBalls + newNoBalls;
end;

function TCalculate.updateRuns(currentRuns, newRuns: Integer): integer;
begin
  result := currentRuns + newRuns;
end;

function TCalculate.updateWides(currentWides, newWides: Integer): Integer;
begin
  result := currentWides + newWides;
end;

end.
