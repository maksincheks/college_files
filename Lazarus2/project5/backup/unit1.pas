unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  { TForm1 }
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  x1, y1, x2, y2, s, p, a: Integer;
begin
  x1 := StrToInt(Edit1.Text);
  y1 := StrToInt(Edit2.Text);
  x2 := StrToInt(Edit3.Text);
  y2 := StrToInt(Edit4.Text);

  a := Abs(x1 - x2);
  s := Abs(x1 - x2) * Abs(y1 - y2);
  p := 2 * (Abs(x1 - x2) + Abs(y1 - y2));

  Edit5.Text := IntToStr(s);
  Edit6.Text := IntToStr(p);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
end;

end.
