unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, DBCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, mxExport,
  ZAbstractConnection, ZConnection, SMDBFltr, SMDBFind, SMDBCtrl, SMDBGrid,
  frxDBSet;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ZConnection1: TZConnection;
    mxDBGridExport1: TmxDBGridExport;
    frxReport1: TfrxReport;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    SMDBGrid1: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    SMDBFindDialog1: TSMDBFindDialog;
    SMDBFilterDialog1: TSMDBFilterDialog;
    procedure SMDBNavigator1Click(Sender: TObject; Button: TSMNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.SMDBNavigator1Click(Sender: TObject;
  Button: TSMNavigateBtn);
begin
case button of
    sbFind : SMDBFindDialog1.Execute;
    sbFilter : SMDBFilterDialog1.Execute;
    sbExport : mxDBGridExport1.Select;
    sbPrint : frxReport1.ShowReport;
end;
end;

end.
 