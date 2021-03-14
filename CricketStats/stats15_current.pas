unit stats15_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStats15_current = class(TForm)
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
  frmStats15_current: TfrmStats15_current;

implementation

{$R *.dfm}

uses data, update15;

procedure TfrmStats15_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStats15_current.Button2Click(Sender: TObject);
begin
  frmUpdate15 := TfrmUpdate15.Create(self);
  frmUpdate15.ShowModal;
  frmUpdate15.Free;
end;

end.
