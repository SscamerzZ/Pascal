// Написать программу, рассчитывающую общую сумму заказа на
// 1 человека в кафе: добавить на форму четыре компонента ListBox (холод-
// ные закуски, горячие блюда, напитки, десерты), заполнить произвольными
// значениями. Вычисленную стоимость выводить в Label.
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
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
var
s:integer;
g:integer;
o:real;
begin
case ListBox1.ItemIndex of
 0:s:= 200;
1:s:= 450;
2:s:= 100;
3:s:= 150;
end;
g:= StrToInt (Edit1.text);
o:=s*g;
Label3.caption:=Edit1.text + ' Гостей. - '+ FloatToStrF(g,ffFixed,6,3)+ ' Общая стоимость : ';
end;

end.

