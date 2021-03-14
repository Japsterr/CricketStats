unit playerDelete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPlayerDelete = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    lblPlayer: TLabel;
    lblTeamOne: TLabel;
    lblTeamTwo: TLabel;
    lblTeamThree: TLabel;
    lblTeamFour: TLabel;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure showPlayer();
    procedure deletePlayer();
  end;

var
  frmPlayerDelete: TfrmPlayerDelete;

implementation

{$R *.dfm}

uses data;

{ TfrmPlayerDelete }

procedure TfrmPlayerDelete.Button1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to delete this Player?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    deletePlayer;

end;

procedure TfrmPlayerDelete.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPlayerDelete.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  showPlayer;
end;

procedure TfrmPlayerDelete.deletePlayer;
var SearchOptions : TLocateOptions;
var playerNumber: Integer;
begin
  playerNumber := Database.qPlayerTeamsPNum.Value;
  SearchOptions := [loCaseInsensitive];

  if Database.tbPlayer.Locate('PNum', playerNumber, SearchOptions) then
  begin
    Database.tbPlayer.Delete;
    ShowMessage('Player has been successfully removed from the system.');
    Database.qPlayers.Active := false;
    Database.qPlayers.Active := true;
    DBGrid1.Refresh;
  end;
end;

procedure TfrmPlayerDelete.FormCreate(Sender: TObject);
begin
  Database.qPlayers.Active := false;
  Database.qPlayers.Active := true;
  showPlayer;
end;

procedure TfrmPlayerDelete.showPlayer;
var playerCode, teamCount: Integer;
var playerName: String;
begin
  playerCode := Database.qPlayersPnum.Value;
  playerName := Database.qPlayersNames.Value + ' ' + Database.qPlayersSurname.Value;
  lblPlayer.Caption := playerName;


  Database.qPlayerTeams.Active := false;
  Database.qPlayerTeams.Parameters.ParamByName('number').Value := playerCode;
  Database.qPlayerTeams.Active := true;

  teamCount := Database.qPlayerTeams.RecordCount;

  Database.qPlayerTeams.First;

  if TeamCount = 4 then
  begin
    lblTeamOne.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamOne.Visible := true;

    Database.qPlayerTeams.Next;
    lblTeamTwo.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamTwo.Visible := true;

    Database.qPlayerTeams.Next;
    lblTeamThree.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamThree.Visible := true;

    Database.qPlayerTeams.Next;
    lblTeamFour.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamFour.Visible := true;

  end
  else if TeamCount = 3 then
  begin
    lblTeamOne.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamOne.Visible := true;

    Database.qPlayerTeams.Next;
    lblTeamTwo.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamTwo.Visible := true;

    Database.qPlayerTeams.Next;
    lblTeamThree.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamThree.Visible := true;

    lblTeamFour.Visible := false;
  end
  else if Teamcount = 2 then
  begin
    lblTeamOne.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamOne.Visible := true;

    Database.qPlayerTeams.Next;
    lblTeamTwo.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamTwo.Visible := true;

    lblTeamThree.Visible := false;
    lblTeamFour.Visible := false;
  end
  else if TeamCount = 1 then
  begin
    lblTeamOne.Caption := Database.qPlayerTeamsTeam.Value;
    lblTeamOne.Visible := true;

    lblTeamTwo.Visible := false;
    lblTeamThree.Visible := false;
    lblTeamFour.Visible := false;
  end;

end;

end.
