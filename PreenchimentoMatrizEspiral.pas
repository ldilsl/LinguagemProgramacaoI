
Program PreenchimentoMatrizEspiral;

Const 
  MAX_ORDEM = 9;
Type 
  TMatriz = array[1..MAX_ORDEM, 1..MAX_ORDEM] Of Integer;

Var 
  Matriz: TMatriz;
  n: Integer;
  i, j: Integer;
  valor: Integer;
  top: Integer;
  bottom: Integer;
  left: Integer;
  right: Integer;

  Begin
  Repeat
    Write('Digite a ordem da matriz (n, de 1 a 9): ');
    Readln(n);
    If (n < 1) Or (n > MAX_ORDEM) Then
      Writeln('Erro: O valor deve estar no intervalo de 1 a 9. Tente novamente.'
      );
  Until (n >= 1) And (n <= MAX_ORDEM);

  top := 1;
  bottom := n;
  left := 1;
  right := n;
  valor := 1;
  While (top <= bottom) And (left <= right) Do
    Begin
      For j := left To right Do
        Begin
          Matriz[top, j] := valor;
          valor := valor + 1;
        End;
      top := top + 1;
      If top <= bottom Then
        Begin
          For i := top To bottom Do
            Begin
              Matriz[i, right] := valor;
              valor := valor + 1;
            End;
          right := right - 1;
        End;

      If (left <= right) And (top <= bottom) Then
        Begin
          For j := right Downto left Do
            Begin
              Matriz[bottom, j] := valor;
              valor := valor + 1;
            End;
          bottom := bottom - 1;
        End;

      If (top <= bottom) And (left <= right) Then
        Begin
          For i := bottom Downto top Do
            Begin
              Matriz[i, left] := valor;
              valor := valor + 1;
            End;
          left := left + 1;
        End;
    End;

  Writeln;
  Writeln('--- MATRIZ ESPIRAL ', n, 'x', n, ' ---');

  For i := 1 To n Do
    Begin
      For j := 1 To n Do
        Begin
          Write(Matriz[i, j]:4);
        End;
      Writeln;
    End;
  Writeln('-----------------------------------');
  Readln;
End.
