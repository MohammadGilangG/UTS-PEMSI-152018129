unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Grids;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    StringGrid2: TStringGrid;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PopulateStringGrid(Grid: TStringGrid; const FileName: string);
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit4;

{$R *.dfm}

procedure TForm3.PopulateStringGrid(Grid: TStringGrid; const FileName: string);
var
  TextFile, Line: TStringList;
  Row,Col: Integer;
begin
  Grid.RowCount := 0;
  TextFile := TStringList.Create;
  try
    Line := TStringList.Create;
    try
      Line.Delimiter := ',';
      TextFile.LoadFromFile(FileName);
      Grid.RowCount := TextFile.Count;

      for Row := 0 to TextFile.Count-1 do
      begin
        Line.DelimitedText := TextFile[Row];
        Grid.ColCount:= Line.Count;
        for Col := 0 to Grid.ColCount-1 do
          if Col<Line.Count then
            Grid.Cells[Col, Row] := Line[Col]
          else
            Grid.Cells[Col, Row] := '0';
      end;
    finally
      Line.Free;
    end;
  finally
    TextFile.Free;
  end;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
Edit1.Text:= OpenDialog1.FileName;
PopulateStringGrid(StringGrid1, Edit1.Text);
//memo1.Lines.LoadFromFile(Edit1.Text);
end
else ShowMessage('Open File was cancelled');
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
var
i : Integer;
total : Integer;
begin
total := 0;
for i := 1 to StringGrid1.RowCount -1 do
begin
total := total + StrToInt(StringGrid1.Cells[1,i]);
Edit2.Text := IntToStr(total);
end;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
var
i : Integer;
a,total,hasil : Double;
begin
StringGrid2.Cells[0,0] := 'Probability';
  with StringGrid1 do
  begin
    for i := 1 to RowCount-1 do
      begin
        total:= StrToFloat(StringGrid1.Cells[1,i]);
        hasil:= total/100;
        StringGrid2.Cells[0,i]:=FloatToStr(hasil);
      end;
  end;
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
Form3.Hide;
form4.Show;
end;

end.
