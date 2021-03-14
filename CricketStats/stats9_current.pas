unit stats9_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStats9_current = class(TForm)
    DataSource1: TDataSource;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStats9_current: TfrmStats9_current;

implementation

{$R *.dfm}

uses data, update9;

procedure TfrmStats9_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStats9_current.Button2Click(Sender: TObject);
begin
  frmUpdate9 := Tfrmupdate9.Create(self);
  frmUpdate9.ShowModal;
  frmupdate9.Free;
end;

end.
