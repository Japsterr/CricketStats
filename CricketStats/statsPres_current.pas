unit statsPres_current;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB;

type
  TfrmStatsPres_current = class(TForm)
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
  frmStatsPres_current: TfrmStatsPres_current;

implementation

{$R *.dfm}

uses data, updatePres;

procedure TfrmStatsPres_current.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmStatsPres_current.Button2Click(Sender: TObject);
begin
  frmUpdatePres := TfrmUpdatePres.Create(self);
  frmUpdatePres.ShowModal;
  frmUpdatePres.Free;
end;

end.
