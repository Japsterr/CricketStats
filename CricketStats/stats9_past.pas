unit stats9_past;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TfrmStats9_past = class(TForm)
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
  frmStats9_past: TfrmStats9_past;

implementation

{$R *.dfm}

uses data;

procedure TfrmStats9_past.Button1Click(Sender: TObject);
begin
  close;
end;

end.
