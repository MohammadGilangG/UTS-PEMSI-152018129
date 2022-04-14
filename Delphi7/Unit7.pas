unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.Image3Click(Sender: TObject);
begin
Form7.Hide;
Form1.Show;
end;

end.
