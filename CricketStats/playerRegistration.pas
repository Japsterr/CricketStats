unit playerRegistration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPlayerRegistration = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gbDivisionOne: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    gbDivisionTwo: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edtSurname: TEdit;
    edtName: TEdit;
    cbDivisionOne: TComboBox;
    cbTeamOne: TComboBox;
    cbDivisionTwo: TComboBox;
    cbTeamTwo: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    edtTelephone: TEdit;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    cbDivisionThree: TComboBox;
    cbTeamThree: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clearFields();
    procedure saveData();
    procedure fillTeams();
    function verifyData():Boolean;
  end;

var
  frmPlayerRegistration: TfrmPlayerRegistration;

implementation

{$R *.dfm}

uses data;



procedure TfrmPlayerRegistration.Button1Click(Sender: TObject);
begin
  if verifyData then
  begin
    saveData;
    showMessage('The player has been registered.');
    clearFields;
  end
  else
    ShowMessage('The player cannot be registered as all the fields are not correct.');

end;

procedure TfrmPlayerRegistration.Button2Click(Sender: TObject);
begin
  close;
end;

//The purpose here is to reset the input fields for the next player
procedure TfrmPlayerRegistration.clearFields;
begin
  edtName.Clear;
  edtName.SetFocus;
  edtSurname.Clear;
  edtTelephone.Clear;
  cbDivisionOne.ItemIndex := 0;
  cbTeamOne.ItemIndex := 0;
  cbDivisionTwo.ItemIndex := 0;
  cbTeamTwo.ItemIndex := 0;
  cbDivisionThree.ItemIndex := 0;
  cbTeamThree.ItemIndex := 0;
end;

procedure TfrmPlayerRegistration.fillTeams;
begin
  Database.tbTeam.First;
  while not(Database.tbTeam.Eof) do
  begin
    cbTeamOne.Items.Add(Database.tbTeamNames.Value);
    cbTeamTwo.Items.Add(Database.tbTeamNames.Value);
    cbTeamThree.Items.Add(Database.tbTeamNames.Value);
    Database.tbTeam.Next;
  end;
end;

procedure TfrmPlayerRegistration.FormCreate(Sender: TObject);
begin
  fillTeams;
end;

//Here we are going to save all the data into the appropriate tables
procedure TfrmPlayerRegistration.saveData;
begin

  //we start by saving the basic player info
  Database.tbPlayer.Insert;
  Database.tbPlayerNames.Value := edtName.Text;
  Database.tbPlayerSurname.Value := edtSurname.Text;
  Database.tbPlayerTelephone.Value := edtTelephone.text;
  Database.tbPlayerDeleted.Value := false;
  Database.tbPlayer.Post;



  //We now have to enter the information for each division
  if cbTeamOne.Text <> 'Select Team' then
  begin

    Database.tbPlayer_Stats_current.Insert;
    Database.tbPlayer_Stats_currentPNum.Value := Database.tbPlayerPNum.Value;
    Database.tbPlayer_Stats_currentDivision.Value := cbDivisionOne.Text;
    Database.tbPlayer_Stats_currentTeam.Value := cbTeamOne.Text;
    Database.tbPlayer_Stats_current.Post;
  end;


  if cbTeamTwo.Text <> 'Select Team' then
  begin
    Database.tbPlayer_Stats_current.Insert;
    Database.tbPlayer_Stats_currentPNum.Value := Database.tbPlayerPNum.Value;
    Database.tbPlayer_Stats_currentDivision.Value := cbDivisionTwo.Text;
    Database.tbPlayer_Stats_currentTeam.Value := cbTeamTwo.Text;
    Database.tbPlayer_Stats_current.Post;
  end;

  if cbTeamThree.Text <> 'Select Team' then
  begin
    Database.tbPlayer_Stats_current.Insert;
    Database.tbPlayer_Stats_currentPNum.Value := Database.tbPlayerPNum.Value;
    Database.tbPlayer_Stats_currentDivision.Value := cbDivisionThree.Text;
    Database.tbPlayer_Stats_currentTeam.Value := cbTeamThree.Text;
    Database.tbPlayer_Stats_current.Post;
  end;

end;

function TfrmPlayerRegistration.verifyData: Boolean;
var verified: Boolean;
begin
  verified := true;

  if Length(Trim(edtName.Text)) = 0 then
    verified := false;

  if Length(Trim(edtSurname.Text)) = 0 then
    verified := false;

  if cbDivisionOne.Text <> 'Select Division' then
  begin
    if cbTeamOne.Text = 'Select Team' then
      verified := false;
  end;

  if cbDivisionTwo.Text <> 'Select Division' then
  begin
    if cbTeamTwo.Text = 'Select Team' then
      verified := false;
  end;

    if cbDivisionTwo.Text = 'Select Division' then
      if cbDivisionOne.Text = 'Select Division' then
        verified := false;

    if cbTeamOne.Text = cbTeamTwo.Text then
      verified := false;

    if cbTeamOne.Text = cbTeamThree.Text then
      verified := false;


  result := verified;

end;

end.
