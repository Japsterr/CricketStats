unit stats13_past;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStats13_past = class(TForm)
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
  frmStats13_past: TfrmStats13_past;

implementation

{$R *.dfm}

uses data;

procedure TfrmStats13_past.Button1Click(Sender: TObject);
begin
  close;
end;

end.
