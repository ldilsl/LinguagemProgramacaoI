
Program AnaliseVetorial;

Uses 
SysUtils;

Const 
  TAMANHO = 10;
  VALOR_MIN = 1;
  VALOR_MAX = 100;

Type 
  TVetor = array[1..TAMANHO] Of Integer;

Var 
  Vetor: TVetor;
  i: Integer;
  Maximo: Integer;
  Minimo: Integer;
  Soma: Longint;
  Media: Real;

Begin
  Randomize;

  Soma := 0;
  Writeln('--- VETOR GERADO ---');
  For i := 1 To TAMANHO Do
    Begin
      Vetor[i] := Random(VALOR_MAX) + VALOR_MIN;
      Write(Vetor[i]:4);
      Soma := Soma + Vetor[i];
    End;
  Writeln;
  Writeln('--------------------');
  Maximo := Vetor[1];
  Minimo := Vetor[1];
  For i := 2 To TAMANHO Do
    Begin
      If Vetor[i] > Maximo Then
        Maximo := Vetor[i];
      If Vetor[i] < Minimo Then
        Minimo := Vetor[i];
    End;
  Media := Soma / TAMANHO;
  Writeln;
  Writeln('RESULTADOS DA ANÁLISE:');
  Writeln('Maior elemento: ', Maximo);
  Writeln('Menor elemento: ', Minimo);
  Writeln('Média dos elementos: ', FormatFloat('0.00', Media));
  Writeln;
  Readln;
End.
