unit statsSU7_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsSU7_current = class(TForm)
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
  frmStatsSU7_current: TfrmStatsSU7_current;

implementation

{$R *.dfm}

uses data, UpdateSU7;

procedure TfrmStatsSU7_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsSU7_current.Button2Click(Sender: TObject);
begin
  frmUpdateSU7 := TfrmUpdateSU7.Create(self);
  frmUpdateSU7.ShowModal;
  frmUpdateSU7.Free;
end;

end.
