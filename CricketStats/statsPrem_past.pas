unit statsPrem_past;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsPrem_past = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatsPrem_past: TfrmStatsPrem_past;

implementation

{$R *.dfm}

uses data;

procedure TfrmStatsPrem_past.Button1Click(Sender: TObject);
begin
  close;
end;

end.
