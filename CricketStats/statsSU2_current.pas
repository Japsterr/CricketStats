unit statsSU2_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsSU2_current = class(TForm)
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
  frmStatsSU2_current: TfrmStatsSU2_current;

implementation

{$R *.dfm}

uses data, UpdateSU2;

procedure TfrmStatsSU2_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsSU2_current.Button2Click(Sender: TObject);
begin
  frmUpdateSU2 := TfrmUpdateSU2.Create(self);
  frmUpdateSU2.ShowModal;
  frmUpdateSU2.Free;
end;

end.
