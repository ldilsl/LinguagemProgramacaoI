
Program ContadorDePalavras;

Var 
  frase: String;
  i: Integer;
  contagem_palavras: Integer;
  em_palavra: Boolean;

Begin
  Writeln('Digite uma frase:');
  Readln(frase);
  contagem_palavras := 0;
  em_palavra := FALSE;
  For i := 1 To Length(frase) Do
    Begin
      If frase[i] <> ' ' Then
        Begin
          If Not em_palavra Then
            Begin
              contagem_palavras := contagem_palavras + 1;
              em_palavra := TRUE;
            End;
        End
      Else
        Begin
          em_palavra := FALSE;
        End;
    End;
  Writeln;
  Writeln('----------------------------------------------------');
  Writeln('Frase analisada: "', frase, '"');
  Writeln('A quantidade de palavras na frase é: ', contagem_palavras);
  Writeln('----------------------------------------------------');
  Writeln;
  Readln;
End.
