unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

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
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click (Sender: TObject);
var
funt:real; { вес в фунтах }
kg:real; { вес в килограммах }
k:real; { коэффициент пересчета }
begin
case ListBox1.ItemIndex of
0: k:=0.4059; { Россия }
1: k:=0.453592;{ Англия }
2: k:=0.56001; { Австрия }
3..5,7:k:=0.5; { Германия, Дания, Исландия, Нидерланды }
6: k:=0.31762; { Италия }
end;
funt:=StrToFloat(Edit1.Text);
kg:=k*funt;
Label4.caption:=Edit1.Text + ' фунт. - '+ FloatToStrF(kg,ffFixed,6,3)+ ' кг.';
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;

end.

