unit playerMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPlayerMenu = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlayerMenu: TfrmPlayerMenu;

implementation

{$R *.dfm}

uses playerRegistration, playerChangeTeam, playerDelete;

procedure TfrmPlayerMenu.Button1Click(Sender: TObject);
begin
  frmPlayerRegistration := TfrmPlayerRegistration.Create(self);
  frmPlayerRegistration.ShowModal;
  frmPlayerRegistration.Free;
end;

procedure TfrmPlayerMenu.Button2Click(Sender: TObject);
begin
  frmPlayerChangeTeam := TfrmPlayerChangeTeam.Create(self);
  frmPlayerChangeTeam.ShowModal;
  frmPlayerChangeTeam.Free;
end;

procedure TfrmPlayerMenu.Button3Click(Sender: TObject);
begin
  frmPlayerDelete := TfrmPlayerDelete.Create(self);
  frmPlayerDElete.ShowModal;
  frmPlayerDelete.Free;
end;

procedure TfrmPlayerMenu.Button4Click(Sender: TObject);
begin
  close;
end;

end.
