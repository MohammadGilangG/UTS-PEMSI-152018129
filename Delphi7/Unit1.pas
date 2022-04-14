unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, frxpngimage, jpeg, StdCtrls, Buttons, DialogsX;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    FileOpenDialog1: TFileOpenDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Hide;
form2.Show;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
if Application.MessageBox
('Apakah yakin anda ingin keluar','Konfirmasi Ulang',MB_YesNo)=ID_Yes then
Application.Terminate;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Form1.Hide;
Form6.Show;
if FileOpenDialog1.Execute then
begin
  Form6.Memo1.Lines.LoadFromFile(Form1.FileOpenDialog1.FileName);
end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form1.Hide;
Form7.Show;
end;

end.
