
Program VerificaPandigital;

Var 
  n: Longint;
  num_temp: Longint;
  digito: Integer;
  pandigital: Boolean;
  Digitocorrido: array[0..9] Of Boolean;

Begin
  Write('Digite um número inteiro positivo: ');
  Readln(n);
  If n <= 0 Then
    Begin
      Writeln('O número deve ser positivo.');
      Halt;
    End;

  For digito := 0 To 9 Do
    Digitocorrido[digito] := FALSE;

  num_temp := n;
  pandigital := TRUE;

  While num_temp > 0 Do
    Begin
      digito := num_temp Mod 10;
      If Digitocorrido[digito] = TRUE Then
        Begin
          pandigital := FALSE;
          break;
        End
      Else
        Begin
          Digitocorrido[digito] := TRUE;
        End;
      num_temp := num_temp Div 10;
    End;
  Writeln;
  If pandigital Then
    Writeln('O número ', n, ' é PANDIGITAL (não possui dígitos repetidos).')
  Else
    Writeln('O número ', n, ' NÃO é pandigital (possui dígitos repetidos).')
  ;
  Readln;
End.

Program TabuadaMultiplicacao;

Var 
  N: Integer;
  i: Integer;
  resultado: Integer;

Begin
  Write('Digite um número inteiro (N): ');
  Readln(N);
  Writeln;
  Writeln('--- TABUADA DE MULTIPLICAÇÃO DO ', N, ' ---');
  For i := 1 To 10 Do
    Begin
      resultado := N * i;
      Writeln(N, ' x ', i:2, ' = ', resultado:3);
    End;
End.
