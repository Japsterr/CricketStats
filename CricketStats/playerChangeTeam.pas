unit playerChangeTeam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TfrmPlayerChangeTeam = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    lblPlayer: TLabel;
    lblTeamOne: TLabel;
    lblTeamTwo: TLabel;
    lblTeamThree: TLabel;
    lblTeamFour: TLabel;
    GroupBox2: TGroupBox;
    cbTeam: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cbDivision: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fillTeams();
    procedure showPlayer();
    procedure addTeam();
    function findTeam():Boolean;
  end;

var
  frmPlayerChangeTeam: TfrmPlayerChangeTeam;

implementation

{$R *.dfm}

uses data;

procedure TfrmPlayerChangeTeam.addTeam;
begin
  Database.tbPlayer_Stats_current.Insert;
  Database.tbPlayer_Stats_currentPNum.Value := Database.qPlayersPNum.Value;
  Database.tbPlayer_Stats_currentTeam.Value := cbTeam.Text;
  Database.tbPlayer_Stats_currentDivision.Value := cbDivision.Text;
  Database.tbPlayer_Stats_current.Post;
end;

procedure TfrmPlayerChangeTeam.Button1Click(Sender: TObject);
begin

  if (cbDivision.Text = 'Select Division') or (cbTeam.Text = 'Select Team') then
  begin
    Showmessage('First Select Division and Team before Clicking Add.');
  end
  else if not(findTeam) then
  begin
    addTeam;
    ShowMessage('The team has been added.');
    cbTeam.ItemIndex := 0;
    ShowPlayer;
  end
  else
    ShowMessage('The player is already in this team, please select another team to add.');
end;

procedure TfrmPlayerChangeTeam.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPlayerChangeTeam.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  showPlayer;
end;

procedure TfrmPlayerChangeTeam.DBGrid1CellClick(Column: TColumn);
begin
  showPlayer;
end;

procedure TfrmPlayerChangeTeam.DBGrid1ColEnter(Sender: TObject);
begin
  showPlayer;
end;

procedure TfrmPlayerChangeTeam.fillTeams;
begin
  Database.tbTeam.First;


  while not(Database.tbTeam.Eof) do
  begin
    cbTeam.Items.Add(Database.tbTeamNames.Value);
    database.tbTeam.Next;
  end;
end;

function TfrmPlayerChangeTeam.findTeam: Boolean;
var SearchOptions : TLocateOptions;
var team: String;
begin
  SearchOptions := [loCaseInsensitive];
  team := cbTeam.Text;
  result := Database.qPlayerTeams.Locate('team', team, SearchOptions);
end;

procedure TfrmPlayerChangeTeam.FormCreate(Sender: TObject);
begin
  Database.qPlayers.Active := false;
  Database.qPlayers.Active := true;

  //fill teams
  fillTeams;

  //show top Player Details
  showPlayer;
end;

procedure TfrmPlayerChangeTeam.showPlayer;
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
