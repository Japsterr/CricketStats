unit statsSA1_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsSA1_current = class(TForm)
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
  frmStatsSA1_current: TfrmStatsSA1_current;

implementation

{$R *.dfm}

uses data, UpdateSA1;

procedure TfrmStatsSA1_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsSA1_current.Button2Click(Sender: TObject);
begin
  frmUpdateSA1 := TfrmUpdateSA1.Create(self);
  frmUpdateSA1.ShowModal;
  frmUpdateSA1.Free;
end;

end.
