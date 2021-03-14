unit programSettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmProgramSettings = class(TForm)
    btnTeam: TButton;
    gbTeam: TGroupBox;
    edtTeam: TEdit;
    btnTeamSave: TButton;
    Button2: TButton;
    Button1: TButton;
    procedure btnTeamClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnTeamSaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProgramSettings: TfrmProgramSettings;

implementation

{$R *.dfm}

uses data;

procedure TfrmProgramSettings.btnTeamClick(Sender: TObject);
begin
  gbTeam.Visible := true;
  btnTeam.enabled := false;
end;

procedure TfrmProgramSettings.btnTeamSaveClick(Sender: TObject);
begin
  if length(Trim(edtTeam.Text)) = 0 then
    showMessage('Enter team name before pressing Save.')
  else
  begin
    Database.tbTeam.Insert;
    Database.tbTeamNames.Value := edtTeam.Text;
    Database.tbTeam.Post;
    ShowMessage('The team has been saved');
    edtTeam.Clear;
    edtTeam.SetFocus;
  end;
end;

procedure TfrmProgramSettings.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmProgramSettings.Button2Click(Sender: TObject);
begin
  edtTeam.Clear;
  btnTeam.Enabled := true;
  gbTeam.Visible := false;
end;

end.
