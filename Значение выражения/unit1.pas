unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
// Сумма двух чисел из Edit1 и Edit2 - в Label4
var
  a, b, c, d: integer;
begin
  a:= StrToInt(Edit1.Text);
  b:= StrToInt(Edit2.Text);
  c:= StrToInt(Edit3.Text);
  d:= a+b-c;
  Label5.Caption:='Результат:' + IntToStr(d);
end;

end.
