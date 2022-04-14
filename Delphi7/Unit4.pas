unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    OpenDialog1: TOpenDialog;
    StringGrid1: TStringGrid;
    BitBtn2: TBitBtn;
    StringGrid2: TStringGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    Button1: TButton;
    BitBtn6: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure PopulateStringGrid2(Grid: TStringGrid; const FileName: string);
    { Public declarations }
  end;

var
  Form4: TForm4;
     a,b,c,d,e,f : Double;
     k1,k2,k3,k4,k5,k6 : Double;

implementation

uses Unit3, Unit5;

{$R *.dfm}

procedure TForm4.PopulateStringGrid2(Grid: TStringGrid; const FileName: string);
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

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
Edit1.Text:= OpenDialog1.FileName;
PopulateStringGrid2(StringGrid1, Edit1.Text);
//memo1.Lines.LoadFromFile(Edit1.Text);
end
else ShowMessage('Open File was cancelled');
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
var
i : Integer;
begin
StringGrid2.Cells[0,0] := 'Hari';
for i := 1 to 10 do
StringGrid2.Cells[0,i]:=IntToStr(i);
// cell 2
StringGrid2.Cells[1,0] := 'Angka Random';
StringGrid2.Cells[1,1]:= '25';
StringGrid2.Cells[1,2]:= '89';
StringGrid2.Cells[1,3]:= '47';
StringGrid2.Cells[1,4]:= '80';
StringGrid2.Cells[1,5]:= '56';
StringGrid2.Cells[1,6]:= '75';
StringGrid2.Cells[1,7]:= '95';
StringGrid2.Cells[1,8]:= '70';
StringGrid2.Cells[1,9]:= '61';
StringGrid2.Cells[1,10]:= '66';
end;
procedure TForm4.BitBtn3Click(Sender: TObject);
var
i : Integer;
totalpermintaan : Integer;
begin
totalpermintaan := 0;
for i := 1 to StringGrid2.RowCount -1 do
begin
totalpermintaan := totalpermintaan + StrToInt(StringGrid2.Cells[2,i]);
Edit2.Text := IntToStr(totalpermintaan);
end;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
var
totalratarata,hasil : Double;
begin
totalratarata:=StrToFloat(Edit2.Text);
hasil:= totalratarata/10;
Edit3.Text:= FloatToStr(hasil);
Panel1.Show;

end;

procedure TForm4.FormCreate(Sender: TObject);
begin
Panel1.Hide;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form4.Hide;
Form5.Show;
end;

procedure TForm4.BitBtn6Click(Sender: TObject);
begin
StringGrid2.Cells[2,0] := 'Permintaan';
StringGrid2.Cells[2,1]:= FloatToStr(b);// 1
StringGrid2.Cells[2,2]:= FloatToStr(f); // 5
StringGrid2.Cells[2,3]:= FloatToStr(d); // 3
StringGrid2.Cells[2,4]:= FloatToStr(e); // 4
StringGrid2.Cells[2,5]:= FloatToStr(d); // 3
StringGrid2.Cells[2,6]:= FloatToStr(e); // 4
StringGrid2.Cells[2,7]:= FloatToStr(f); // 5
StringGrid2.Cells[2,8]:= FloatToStr(e); // 4
StringGrid2.Cells[2,9]:= FloatToStr(e); // 4
StringGrid2.Cells[2,10]:= FloatToStr(e); // 4
end;

procedure TForm4.FormShow(Sender: TObject);
begin
a:=StrToFloat(Form3.StringGrid1.Cells[0,1]);
b:=StrToFloat(Form3.StringGrid1.Cells[0,2]);
c:=StrToFloat(Form3.StringGrid1.Cells[0,3]);
d:=StrToFloat(Form3.StringGrid1.Cells[0,4]);
e:=StrToFloat(Form3.StringGrid1.Cells[0,5]);
f:=StrToFloat(Form3.StringGrid1.Cells[0,6]);

end;

end.
