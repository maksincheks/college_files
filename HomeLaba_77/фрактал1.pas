uses GraphABC;
uses modul;

var
  x1, y1, l1, u1: Real;
  x2, y2, l2, u2: Real;
  x3, y3, l3, u3: Real;
  depth:integer;


procedure KeyDown(key: integer);
begin
  LockDrawing;
  
  case key of
    VK_Left: begin
      x1 := x1 - 10;
      x2 := x2 - 10;
      x3 := x3 - 10;
    end;
    VK_Right: begin
      x1 := x1 + 10;
      x2 := x2 + 10;
      x3 := x3 + 10;
    end;
    VK_Up: begin
      y1 := y1 - 10;
      y2 := y2 - 10;
      y3 := y3 - 10;
    end;
    VK_Down: begin
      y1 := y1 + 10;
      y2 := y2 + 10;
      y3 := y3 + 10;
    end;
    VK_A: depth := depth + 1; // Увеличение глубины рекурсии
    VK_Q: depth := Max(0, depth - 1); // Уменьшение глубины рекурсии
  end;
  Window.Clear;
  Draw(x1, y1, l1, u1, depth);
  Draw(x2, y2, l2, u2, depth);
  Draw(x3, y3, l3, u3, depth);
  
  UnlockDrawing;
end;

begin
  SetWindowSize(425, 500);
  SetWindowCaption('Фракталы: Снежинка Коха');

  x1 := 10; y1 := 354; l1 := 400; u1 := Pi / 3;
  x2 := 410; y2 := 354; l2 := 400; u2 := Pi;
  x3 := 210; y3 := 8; l3 := 400; u3 := -Pi / 3;
  depth := 4;

  OnKeyDown := KeyDown;

  Draw(x1, y1, l1, u1, depth);
  Draw(x2, y2, l2, u2, depth);
  Draw(x3, y3, l3, u3, depth);
end.

//Что такое фрактал? Какой фрактал у меня и в чём его особенность? 
//Открываем программу и говорим, что использовали,какие модули юзали
//Сдвижение вправо, влево,вверх,вниз. Потом показываем в модуле процедуру отрисовки
//в ней указать рекурсивную триаду(где база,параметризация, композиция)
//рассказываем какие процедуры еще есть в программе. Далее переходим к своему отчётику,показываем чё к чему