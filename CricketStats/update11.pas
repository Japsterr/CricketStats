unit update11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmUpdate11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updatePlayer();
    function verifyData(): Boolean;
    procedure calculateAverages();
  end;

var
  frmUpdate11: TfrmUpdate11;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmUpdate11.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmUpdate11.calculateAverages;
begin

end;

procedure TfrmUpdate11.updatePlayer;
begin

end;

function TfrmUpdate11.verifyData: Boolean;
begin

end;

end.
