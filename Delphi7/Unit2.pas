unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    Edit81: TEdit;
    Edit82: TEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Edit91: TEdit;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    Edit95: TEdit;
    Edit96: TEdit;
    Edit97: TEdit;
    Edit98: TEdit;
    Edit99: TEdit;
    Edit100: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
//10 data selanjutnya baris ke 1
Edit1.Text:='4';
Edit2.Text:='1';
Edit3.Text:='4';
Edit4.Text:='5';
Edit5.Text:='4';
Edit6.Text:='3';
Edit7.Text:='0';
Edit8.Text:='0';
Edit9.Text:='0';
Edit10.Text:='0';
//10 data selanjutnya baris ke 2
Edit11.Text:='0';
Edit12.Text:='0';
Edit13.Text:='3';
Edit14.Text:='2';
Edit15.Text:='2';
Edit16.Text:='1';
Edit17.Text:='4';
Edit18.Text:='4';
Edit19.Text:='5';
Edit20.Text:='5';
//10 data selanjutnya baris ke 3
Edit21.Text:='0';
Edit22.Text:='4';
Edit23.Text:='1';
Edit24.Text:='2';
Edit25.Text:='3';
Edit26.Text:='0';
Edit27.Text:='4';
Edit28.Text:='5';
Edit29.Text:='0';
Edit30.Text:='5';
//10 data selanjutnya baris ke 4
Edit31.Text:='4';
Edit32.Text:='4';
Edit33.Text:='1';
Edit34.Text:='3';
Edit35.Text:='3';
Edit36.Text:='1';
Edit37.Text:='4';
Edit38.Text:='0';
Edit39.Text:='3';
Edit40.Text:='1';
//10 data selanjutnya baris ke 5
Edit41.Text:='5';
Edit42.Text:='3';
Edit43.Text:='1';
Edit44.Text:='3';
Edit45.Text:='3';
Edit46.Text:='5';
Edit47.Text:='1';
Edit48.Text:='1';
Edit49.Text:='1';
Edit50.Text:='0';
//10 data selanjutnya baris ke 6
Edit51.Text:='4';
Edit52.Text:='5';
Edit53.Text:='1';
Edit54.Text:='5';
Edit55.Text:='4';
Edit56.Text:='4';
Edit57.Text:='3';
Edit58.Text:='4';
Edit59.Text:='5';
Edit60.Text:='4';
//10 data selanjutnya baris ke 7
Edit61.Text:='4';
Edit62.Text:='2';
Edit63.Text:='5';
Edit64.Text:='4';
Edit65.Text:='0';
Edit66.Text:='4';
Edit67.Text:='1';
Edit68.Text:='0';
Edit69.Text:='3';
Edit70.Text:='3';
//10 data selanjutnya baris ke 8
Edit71.Text:='0';
Edit72.Text:='0';
Edit73.Text:='2';
Edit74.Text:='1';
Edit75.Text:='5';
Edit76.Text:='2';
Edit77.Text:='2';
Edit78.Text:='0';
Edit79.Text:='4';
Edit80.Text:='3';
//10 data selanjutnya baris ke 9
Edit81.Text:='4';
Edit82.Text:='4';
Edit83.Text:='4';
Edit84.Text:='4';
Edit85.Text:='4';
Edit86.Text:='4';
Edit87.Text:='4';
Edit88.Text:='4';
Edit89.Text:='4';
Edit90.Text:='4';
//10 data selanjutnya baris ke 10
Edit91.Text:='4';
Edit92.Text:='1';
Edit93.Text:='4';
Edit94.Text:='4';
Edit95.Text:='5';
Edit96.Text:='2';
Edit97.Text:='3';
Edit98.Text:='5';
Edit99.Text:='2';
Edit100.Text:='0';
// 100 data random permintaan ban
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
Form2.Hide;
Form3.Show;
end;

end.
