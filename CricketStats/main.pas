unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, ShellAPI, Vcl.Imaging.pngimage;

type
  TfrmMain = class(TForm)
    btnPlayer: TButton;
    btnStats: TButton;
    Button5: TButton;
    Button6: TButton;
    lblWarning: TLabel;
    gbStats: TGroupBox;
    cbTeam: TComboBox;
    Button1: TButton;
    gbSeason: TGroupBox;
    rbPresent: TRadioButton;
    rbPast: TRadioButton;
    Image1: TImage;
    ImgFooter: TImage;
    procedure Button6Click(Sender: TObject);
    procedure btnPlayerClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStatsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ImgFooterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fillTeams();
    procedure openScreen();
    procedure goToSite();
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses playerMenu, programSettings, data, stats11_current, stats11_past,
  stats13_current, stats13_past, stats15_current, stats15_past, stats9_current,
  stats9_past, statsPrem_current, statsPrem_past, statsPres_current,
  statsPres_past, statsSA1_current, statsSA1_past, statsSA5_current,
  statsSA5_past, statsSU2_current, statsSU2_past, statsSU7_current,
  statsSU7_past, statsSU9_current, statsSU9_past, teamStats_current,
  teamStats_past, calculate;

procedure TfrmMain.btnPlayerClick(Sender: TObject);
begin
  gbSeason.Visible := False;
  gbStats.Visible := False;
  frmPlayerMenu := TfrmPlayerMenu.Create(self);
  frmPlayerMenu.ShowModal;
  frmPlayerMenu.Free;
end;

procedure TfrmMain.btnStatsClick(Sender: TObject);
begin
  fillTeams;
  gbStats.Visible := true;
  gbSeason.Visible := true;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  openScreen;
end;

procedure TfrmMain.Button5Click(Sender: TObject);
begin
  gbSeason.Visible := False;
  gbStats.Visible := False;
  frmProgramSettings := TfrmProgramSettings.Create(self);
  frmProgramSettings.ShowModal;
  frmProgramSettings.Free;

  if Database.tbTeam.IsEmpty then
  begin
    btnPlayer.Enabled := false;
    btnStats.Enabled := false;
    lblWarning.Visible := true;
  end
  else
  begin
    btnPlayer.Enabled := true;
    btnStats.Enabled := true;
    lblWarning.Visible := false;
  end;
end;

procedure TfrmMain.Button6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.fillTeams;
begin
  Database.tbTeam.First;

  cbTeam.Clear;
  cbTeam.Text := 'Select Team';
  while not(Database.tbTeam.Eof) do
  begin
    cbTeam.Items.Add(Database.tbTeamNames.Value);
    database.tbTeam.Next;
  end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
var calculation :TCalculate;
begin
  if Database.tbTeam.IsEmpty then
  begin
    btnPlayer.Enabled := false;
    btnStats.Enabled := false;
    lblWarning.Visible := true;
  end;
end;


procedure TfrmMain.goToSite;
var
  MyLink: string;
begin
  MyLink := 'http://www.rentmysoftware.co.za/';
  ShellExecute(Application.Handle, PChar('open'), PChar(MyLink),
   nil, nil, SW_SHOW);
end;


procedure TfrmMain.ImgFooterClick(Sender: TObject);
begin
  goToSite();
end;

procedure TfrmMain.openScreen;
begin
  if cbTeam.Text = 'Select Team' then
    ShowMessage('Please select a team first.')
  else if rbPresent.Checked then
  begin
    Database.qPlayerStats_current.Active := false;
    Database.qPlayerStats_current.Parameters.ParamByName('team').Value := cbTeam.Text;
    Database.qPlayerStats_current.Active := true;

    frmTeamStats_current := TfrmTeamStats_current.Create(self);
    frmTeamStats_current.ShowModal;
    frmTeamStats_current.Free;
    gbSeason.Visible := false;
    gbStats.Visible := false;
  end
  else
  begin
    Database.qPlayerStats_past.Active := false;
    Database.qPlayerStats_past.Parameters.ParamByName('team').Value := cbTeam.Text;
    Database.qPlayerStats_past.Active := true;

    frmTeamStats_past := TfrmTeamStats_past.Create(self);
    frmTeamStats_past.ShowModal;
    frmTeamStats_past.Free;
    gbSeason.Visible := false;
    gbStats.Visible := false;
  end;

end;

end.
