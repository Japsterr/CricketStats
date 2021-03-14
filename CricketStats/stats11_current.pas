unit stats11_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TfrmStats11_current = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStats11_current: TfrmStats11_current;

implementation

{$R *.dfm}

uses data, update11;

procedure TfrmStats11_current.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmStats11_current.Button2Click(Sender: TObject);
begin
  frmUpdate11 := TfrmUpdate11.Create(self);
  frmUpdate11.ShowModal;
  frmUpdate11.Free;
end;

end.
