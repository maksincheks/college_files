unit modul;
uses GraphABC;

var
  x1, y1, l1, u1: Real;
  x2, y2, l2, u2: Real;
  x3, y3, l3, u3: Real;
  depth:integer;

procedure Draw(x, y, l, u: Real; t: Integer);
procedure Draw2(var x, y: Real; l, u: Real; t: Integer);
begin
  Draw(x, y, l, u, t);
  x := x + l * cos(u);
  y := y - l * sin(u);
end;

begin
  if t > 0 then
  begin
    l := l / 3;
    Draw2(x, y, l, u, t - 1);
    Draw2(x, y, l, u + Pi / 3, t - 1);
    Draw2(x, y, l, u - Pi / 3, t - 1);
    Draw2(x, y, l, u, t - 1);
  end
  else
    Line(Round(x), Round(y), Round(x + cos(u) * l), Round(y - sin(u) * l))
end;


begin
  SetWindowSize(425, 500);
  SetWindowCaption('Фракталы: Снежинка Коха');

  x1 := 10; y1 := 354; l1 := 400; u1 := Pi / 3;
  x2 := 410; y2 := 354; l2 := 400; u2 := Pi;
  x3 := 210; y3 := 8; l3 := 400; u3 := -Pi / 3;
  depth := 4;

  Draw(x1, y1, l1, u1, depth);
  Draw(x2, y2, l2, u2, depth);
  Draw(x3, y3, l3, u3, depth);
end.