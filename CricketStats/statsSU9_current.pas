unit statsSU9_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsSU9_current = class(TForm)
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
  frmStatsSU9_current: TfrmStatsSU9_current;

implementation

{$R *.dfm}

uses data, UpdateSU9;

procedure TfrmStatsSU9_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsSU9_current.Button2Click(Sender: TObject);
begin
  frmUpdateSU9 := TfrmUpdateSU9.Create(self);
  frmUpdateSU9.ShowModal;
  frmUpdateSU9.Free;
end;

end.
