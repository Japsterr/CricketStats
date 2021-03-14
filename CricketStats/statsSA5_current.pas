unit statsSA5_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsSA5_current = class(TForm)
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
  frmStatsSA5_current: TfrmStatsSA5_current;

implementation

{$R *.dfm}

uses main, data, updateSA5;

procedure TfrmStatsSA5_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsSA5_current.Button2Click(Sender: TObject);
begin
  frmUpdateSA5 := TfrmUpdateSA5.Create(self);
  frmUpdateSA5.ShowModal;
  frmUpdateSA5.Free;
end;

end.
