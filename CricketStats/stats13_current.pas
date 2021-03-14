unit stats13_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStats13_current = class(TForm)
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
  frmStats13_current: TfrmStats13_current;

implementation

{$R *.dfm}

uses data, update13;

procedure TfrmStats13_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStats13_current.Button2Click(Sender: TObject);
begin
  frmUpdate13 := TfrmUpdate13.Create(self);
  frmUpdate13.ShowModal;
  frmUpdate13.Free;
end;

end.
