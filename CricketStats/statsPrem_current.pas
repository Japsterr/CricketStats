unit statsPrem_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsPrem_current = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatsPrem_current: TfrmStatsPrem_current;

implementation

{$R *.dfm}

uses data, UpdatePrem;

procedure TfrmStatsPrem_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsPrem_current.Button2Click(Sender: TObject);
begin
  frmUpdatePrem := TfrmUpdatePrem.Create(self);
  frmUpdatePrem.ShowModal;
  frmUpdatePrem.Free;
end;

end.
