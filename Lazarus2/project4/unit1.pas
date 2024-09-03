unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Math, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  x, y: Integer;
  f: Real;
begin
  x := StrToInt(Edit1.Text);
  y := StrToInt(Edit2.Text);

  if x <> 1 then
    f := Power((x + 1) / (x - 1), x) + 18 * x * Power(y, 2)
  else
    ShowMessage('Ошибка: x не должен быть равен 1');

  Edit3.Text := FloatToStr(f);
end;

end.
