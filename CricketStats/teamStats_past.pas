unit teamStats_past;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, frxClass, frxDBSet, frxDesgn, Vcl.ExtCtrls;

type
  TfrmTeamStats_past = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    Button5: TButton;
    frxRptStatsPast: TfrxReport;
    frxDesigner2: TfrxDesigner;
    qteamStats_past: TfrxDBDataset;
    Shape2: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Shape1: TShape;
    Shape4: TShape;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeamStats_past: TfrmTeamStats_past;

implementation

{$R *.dfm}

uses data;

procedure TfrmTeamStats_past.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmTeamStats_past.Button5Click(Sender: TObject);
var reportfile : string;
begin
  Database.qPlayerStats_past.Active := false;
  Database.qPlayerStats_past.Active := true;
  Database.qPlayerStats_past.First;

  if copy(Database.qPlayerStats_pastDivision.Text,1,27) = 'ACC - Alberton Cricket Club' then
     reportfile := 'C:\CricketStats\Reports\PlayerStatsPast.fr3'
    else
      reportfile := 'C:\CricketStats\Reports\PlayerStatsPastJnr.fr3';

  if frxRptStatsPast.LoadFromFile(reportfile) then
     if frxRptStatsPast.PrepareReport then
        frxRptStatsPast.ShowPreparedReport
       else
         Showmessage('Not Prepared')
    else
      Showmessage('Fastreport not found: '+reportfile);
end;

end.
