
Program AnaliseDiagonalDeMatriz;

Const 
  MAX_ORDEM = 15;
  // Ordem máxima permitida
  VALOR_MIN = 1;
  // Limite inferior para geração aleatória
  VALOR_MAX = 10;
  // Limite superior para geração aleatória

Type 
  // Define uma matriz quadrada com tamanho máximo de 15x15
  TMatriz = array[1..MAX_ORDEM, 1..MAX_ORDEM] Of Integer;

Var 
  Matriz: TMatriz;
  n: Integer;
  // Ordem da matriz (lida do usuário)
  i, j: Integer;
  // Contadores de linha e coluna
  SomaPrincipal: Integer;
  // Soma dos elementos da diagonal principal
  SomaSecundaria: Integer;
  // Soma dos elementos da diagonal secundária

Begin
  // 1. Inicializa o gerador de números aleatórios
  Randomize;

  // 2. Leitura e Validação da Ordem da Matriz (n)
  Repeat
    Write('Digite a ordem da matriz (n, de 1 a 15): ');
    Readln(n);
    If (n < 1) Or (n > MAX_ORDEM) Then
      Writeln(
             'Erro: O valor deve estar no intervalo de 1 a 15. Tente novamente.'
      );
  Until (n >= 1) And (n <= MAX_ORDEM);

  Writeln;
  Writeln('--- MATRIZ ', n, 'x', n, ' GERADA ---');

  // 3. Preenchimento Aleatório e Exibição da Matriz
  For i := 1 To n Do
    Begin
      For j := 1 To n Do
        Begin
          // Gera um número aleatório no intervalo de 1 a 10
          Matriz[i, j] := Random(VALOR_MAX) + VALOR_MIN;

          // Exibe o elemento na tela (usamos :4 para alinhamento)
          Write(Matriz[i, j]:4);
        End;
      Writeln;
      // Quebra de linha após cada linha
    End;
  Writeln('-----------------------------------');

  // 4. Cálculo das Somas das Diagonais
  SomaPrincipal := 0;
  SomaSecundaria := 0;

  For i := 1 To n Do
    Begin
      // Soma da Diagonal Principal: i = j
      SomaPrincipal := SomaPrincipal + Matriz[i, i];

      // Soma da Diagonal Secundária: i + j = n + 1 (ou j = n - i + 1)
      SomaSecundaria := SomaSecundaria + Matriz[i, n - i + 1];
    End;

  // 5. Apresentação dos Resultados
  Writeln;
  Writeln('RESULTADOS DA ANÁLISE:');
  Writeln('Soma da Diagonal Principal: ', SomaPrincipal);
  Writeln('Soma da Diagonal Secundária: ', SomaSecundaria);
  Writeln;

  // Aguarda um clique ou enter para fechar a tela
  Readln;
End.
