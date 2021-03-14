object Database: TDatabase
  OldCreateOrder = False
  Height = 707
  Width = 608
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\CricketStats\dat' +
      'a.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 24
  end
  object tbPlayer: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Player'
    Left = 64
    Top = 104
    object tbPlayerPNum: TAutoIncField
      FieldName = 'PNum'
      ReadOnly = True
    end
    object tbPlayerNames: TWideStringField
      FieldName = 'Names'
      Size = 100
    end
    object tbPlayerSurname: TWideStringField
      FieldName = 'Surname'
      Size = 100
    end
    object tbPlayerTelephone: TWideStringField
      FieldName = 'Telephone'
      Size = 12
    end
    object tbPlayerDeleted: TBooleanField
      FieldName = 'Deleted'
    end
  end
  object tbTeam: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Team'
    Left = 64
    Top = 416
    object tbTeamNames: TWideStringField
      FieldName = 'Names'
      Size = 100
    end
  end
  object tbPlayer_Stats_current: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Player_Stats_current'
    Left = 64
    Top = 168
    object tbPlayer_Stats_currentPNum: TIntegerField
      FieldName = 'PNum'
    end
    object tbPlayer_Stats_currentDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object tbPlayer_Stats_currentTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object tbPlayer_Stats_currentRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object tbPlayer_Stats_currentMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object tbPlayer_Stats_currentMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object tbPlayer_Stats_currentBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object tbPlayer_Stats_currentBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object tbPlayer_Stats_currentBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object tbPlayer_Stats_currentBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object tbPlayer_Stats_currentNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object tbPlayer_Stats_currentNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object tbPlayer_Stats_currentBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object tbPlayer_Stats_currentMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object tbPlayer_Stats_currentNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object tbPlayer_Stats_currentOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object tbPlayer_Stats_currentWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object tbPlayer_Stats_currentNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object tbPlayer_Stats_currentRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object tbPlayer_Stats_currentWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object tbPlayer_Stats_currentBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object tbPlayer_Stats_currentAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object tbPlayer_Stats_currentEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object tbPlayer_Stats_currentBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object tbPlayer_Stats_currentStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object tbPlayer_Stats_past: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Player_Stats_past'
    Left = 64
    Top = 232
    object tbPlayer_Stats_pastPNum: TIntegerField
      FieldName = 'PNum'
    end
    object tbPlayer_Stats_pastDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object tbPlayer_Stats_pastTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object tbPlayer_Stats_pastRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object tbPlayer_Stats_pastMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object tbPlayer_Stats_pastMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object tbPlayer_Stats_pastBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object tbPlayer_Stats_pastBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object tbPlayer_Stats_pastBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object tbPlayer_Stats_pastBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object tbPlayer_Stats_pastNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object tbPlayer_Stats_pastNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object tbPlayer_Stats_pastBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object tbPlayer_Stats_pastMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object tbPlayer_Stats_pastNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object tbPlayer_Stats_pastOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object tbPlayer_Stats_pastWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object tbPlayer_Stats_pastNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object tbPlayer_Stats_pastRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object tbPlayer_Stats_pastWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object tbPlayer_Stats_pastBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object tbPlayer_Stats_pastAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object tbPlayer_Stats_pastEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object tbPlayer_Stats_pastBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object tbPlayer_Stats_pastStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object qPlayerStats_current: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'team'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT*'
      'FROM player_stats_current, player'
      'WHERE player_stats_current.pnum = player.pnum'
      'AND player_stats_current.team = :team'
      'ORDER BY player.Surname;')
    Left = 64
    Top = 296
    object qPlayerStats_currentplayer_stats_currentPNum: TIntegerField
      FieldName = 'player_stats_current.PNum'
    end
    object qPlayerStats_currentDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object qPlayerStats_currentTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object qPlayerStats_currentRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object qPlayerStats_currentMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object qPlayerStats_currentMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object qPlayerStats_currentBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object qPlayerStats_currentBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object qPlayerStats_currentBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object qPlayerStats_currentBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object qPlayerStats_currentNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object qPlayerStats_currentNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object qPlayerStats_currentBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object qPlayerStats_currentMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object qPlayerStats_currentNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object qPlayerStats_currentOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object qPlayerStats_currentWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object qPlayerStats_currentNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object qPlayerStats_currentRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object qPlayerStats_currentWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object qPlayerStats_currentBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object qPlayerStats_currentAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object qPlayerStats_currentEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object qPlayerStats_currentBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object qPlayerStats_currentplayerPNum: TAutoIncField
      FieldName = 'player.PNum'
      ReadOnly = True
    end
    object qPlayerStats_currentNames: TWideStringField
      FieldName = 'Names'
      Size = 100
    end
    object qPlayerStats_currentSurname: TWideStringField
      FieldName = 'Surname'
      Size = 100
    end
    object qPlayerStats_currentTelephone: TWideStringField
      FieldName = 'Telephone'
      Size = 12
    end
    object qPlayerStats_currentDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qPlayerStats_currentStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object qPlayerStats_past: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'team'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT*'
      'FROM player_stats_past, player'
      'WHERE player_stats_past.pnum = player.pnum'
      'AND player_stats_past.team = :team'
      'ORDER BY Surname;')
    Left = 64
    Top = 352
    object qPlayerStats_pastplayer_stats_pastPNum: TIntegerField
      FieldName = 'player_stats_past.PNum'
    end
    object qPlayerStats_pastDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object qPlayerStats_pastTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object qPlayerStats_pastRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object qPlayerStats_pastMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object qPlayerStats_pastMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object qPlayerStats_pastBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object qPlayerStats_pastBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object qPlayerStats_pastBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object qPlayerStats_pastBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object qPlayerStats_pastNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object qPlayerStats_pastNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object qPlayerStats_pastBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object qPlayerStats_pastMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object qPlayerStats_pastNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object qPlayerStats_pastOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object qPlayerStats_pastWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object qPlayerStats_pastNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object qPlayerStats_pastRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object qPlayerStats_pastWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object qPlayerStats_pastBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object qPlayerStats_pastAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object qPlayerStats_pastEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object qPlayerStats_pastBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object qPlayerStats_pastplayerPNum: TAutoIncField
      FieldName = 'player.PNum'
      ReadOnly = True
    end
    object qPlayerStats_pastNames: TWideStringField
      FieldName = 'Names'
      Size = 100
    end
    object qPlayerStats_pastSurname: TWideStringField
      FieldName = 'Surname'
      Size = 100
    end
    object qPlayerStats_pastTelephone: TWideStringField
      FieldName = 'Telephone'
      Size = 12
    end
    object qPlayerStats_pastDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qPlayerStats_pastStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object qUpdatePlayerStats: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'number'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'span'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT*'
      'FROM player_stats_current'
      'WHERE pnum = :number'
      'AND team = :span;')
    Left = 64
    Top = 520
    object qUpdatePlayerStatsPNum: TIntegerField
      FieldName = 'PNum'
    end
    object qUpdatePlayerStatsDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object qUpdatePlayerStatsTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object qUpdatePlayerStatsRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object qUpdatePlayerStatsMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object qUpdatePlayerStatsMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object qUpdatePlayerStatsBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object qUpdatePlayerStatsBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object qUpdatePlayerStatsBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object qUpdatePlayerStatsBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object qUpdatePlayerStatsNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object qUpdatePlayerStatsNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object qUpdatePlayerStatsBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object qUpdatePlayerStatsMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object qUpdatePlayerStatsNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object qUpdatePlayerStatsOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object qUpdatePlayerStatsWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object qUpdatePlayerStatsNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object qUpdatePlayerStatsRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object qUpdatePlayerStatsWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object qUpdatePlayerStatsBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object qUpdatePlayerStatsAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object qUpdatePlayerStatsEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object qUpdatePlayerStatsBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object qUpdatePlayerStatsStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object qUpdatePlayerStatsPast: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'number'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'span'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT*'
      'FROM player_stats_past'
      'WHERE pnum = :number'
      'AND team = :span;')
    Left = 56
    Top = 600
    object qUpdatePlayerStatsPastPNum: TIntegerField
      FieldName = 'PNum'
    end
    object qUpdatePlayerStatsPastDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object qUpdatePlayerStatsPastTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object qUpdatePlayerStatsPastRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object qUpdatePlayerStatsPastMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object qUpdatePlayerStatsPastMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object qUpdatePlayerStatsPastBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object qUpdatePlayerStatsPastBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object qUpdatePlayerStatsPastBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object qUpdatePlayerStatsPastBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object qUpdatePlayerStatsPastNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object qUpdatePlayerStatsPastNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object qUpdatePlayerStatsPastBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object qUpdatePlayerStatsPastMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object qUpdatePlayerStatsPastNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object qUpdatePlayerStatsPastOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object qUpdatePlayerStatsPastWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object qUpdatePlayerStatsPastNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object qUpdatePlayerStatsPastRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object qUpdatePlayerStatsPastWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object qUpdatePlayerStatsPastBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object qUpdatePlayerStatsPastAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object qUpdatePlayerStatsPastEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object qUpdatePlayerStatsPastBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object qUpdatePlayerStatsPastStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object qPlayers: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM player;')
    Left = 208
    Top = 600
    object qPlayersPNum: TAutoIncField
      FieldName = 'PNum'
      ReadOnly = True
    end
    object qPlayersNames: TWideStringField
      FieldName = 'Names'
      Size = 100
    end
    object qPlayersSurname: TWideStringField
      FieldName = 'Surname'
      Size = 100
    end
    object qPlayersTelephone: TWideStringField
      FieldName = 'Telephone'
      Size = 12
    end
    object qPlayersDeleted: TBooleanField
      FieldName = 'Deleted'
    end
  end
  object qPlayerTeams: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'number'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM player_stats_current'
      'WHERE pnum = :number;')
    Left = 208
    Top = 552
    object qPlayerTeamsPNum: TIntegerField
      FieldName = 'PNum'
    end
    object qPlayerTeamsDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object qPlayerTeamsTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object qPlayerTeamsRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object qPlayerTeamsMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object qPlayerTeamsMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object qPlayerTeamsBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object qPlayerTeamsBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object qPlayerTeamsBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object qPlayerTeamsBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object qPlayerTeamsNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object qPlayerTeamsNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object qPlayerTeamsBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object qPlayerTeamsMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object qPlayerTeamsNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object qPlayerTeamsOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object qPlayerTeamsWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object qPlayerTeamsNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object qPlayerTeamsRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object qPlayerTeamsWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object qPlayerTeamsBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object qPlayerTeamsAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object qPlayerTeamsEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object qPlayerTeamsBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object qPlayerTeamsStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
  object qWholeTeam: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'span'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT*'
      'FROM player_stats_current'
      'WHERE team = :span;')
    Left = 296
    Top = 600
    object qWholeTeamPNum: TIntegerField
      FieldName = 'PNum'
    end
    object qWholeTeamDivision: TWideStringField
      FieldName = 'Division'
      Size = 50
    end
    object qWholeTeamTeam: TWideStringField
      FieldName = 'Team'
      Size = 50
    end
    object qWholeTeamRuns_Scored: TIntegerField
      FieldName = 'Runs_Scored'
    end
    object qWholeTeamMatches_Bat: TIntegerField
      FieldName = 'Matches_Bat'
    end
    object qWholeTeamMatches_Played: TIntegerField
      FieldName = 'Matches_Played'
    end
    object qWholeTeamBatting_Balls: TIntegerField
      FieldName = 'Batting_Balls'
    end
    object qWholeTeamBatting_Strike: TFloatField
      FieldName = 'Batting_Strike'
    end
    object qWholeTeamBatting_Avg: TFloatField
      FieldName = 'Batting_Avg'
    end
    object qWholeTeamBatting_Ratting: TFloatField
      FieldName = 'Batting_Ratting'
    end
    object qWholeTeamNumber_50: TIntegerField
      FieldName = 'Number_50'
    end
    object qWholeTeamNumber_100: TIntegerField
      FieldName = 'Number_100'
    end
    object qWholeTeamBatting_High: TIntegerField
      FieldName = 'Batting_High'
    end
    object qWholeTeamMatches_Bowled: TIntegerField
      FieldName = 'Matches_Bowled'
    end
    object qWholeTeamNumber_5: TIntegerField
      FieldName = 'Number_5'
    end
    object qWholeTeamOvers_Bowled: TFloatField
      FieldName = 'Overs_Bowled'
    end
    object qWholeTeamWides_Bowled: TIntegerField
      FieldName = 'Wides_Bowled'
    end
    object qWholeTeamNo_Bowled: TIntegerField
      FieldName = 'No_Bowled'
    end
    object qWholeTeamRuns_Bowled: TIntegerField
      FieldName = 'Runs _Bowled'
    end
    object qWholeTeamWickets: TIntegerField
      FieldName = 'Wickets'
    end
    object qWholeTeamBest_Bowled: TWideStringField
      FieldName = 'Best_Bowled'
      Size = 10
    end
    object qWholeTeamAvg_Bowled: TFloatField
      FieldName = 'Avg_Bowled'
    end
    object qWholeTeamEco_Bowled: TFloatField
      FieldName = 'Eco_Bowled'
    end
    object qWholeTeamBowling_Ratting: TFloatField
      FieldName = 'Bowling_Ratting'
    end
    object qWholeTeamStrike_Bowled: TFloatField
      FieldName = 'Strike_Bowled'
    end
  end
end
