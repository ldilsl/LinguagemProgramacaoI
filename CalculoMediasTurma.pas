program CalculoMediasTurma;

var
  qtdAlunos: Integer;
  i: Integer;
  n1, n2: Real;
  media: Real;
  aprovados: Integer;
  reprovados: Integer;
  
begin
  aprovados := 0;
  reprovados := 0;
  
  Writeln('--- CALCULO DE MÉDIAS POR TURMA ---');
  Write('Digite a quantidade total de alunos na turma: ');
  Readln(qtdAlunos);
  
  Writeln;
  for i := 1 to qtdAlunos do
  begin
    Writeln('--- Aluno ', i, ' de ', qtdAlunos, ' ---');
    
    Write('Digite a primeira nota (N1): ');
    Readln(n1);
    
    Write('Digite a segunda nota (N2): ');
    Readln(n2);
    
    media := (n1 + n2) / 2;
    
    Writeln('Media do Aluno ', i, ': ', media:0:2);
    
    if media >= 7.0 then
    begin
      Writeln('Situacao: APROVADO');
      aprovados := aprovados + 1;
    end
    else
    begin
      Writeln('Situacao: REPROVADO');
      reprovados := reprovados + 1;
    end;
    Writeln;
  end;
  
  Writeln('====================================');
  Writeln('--- RESUMO DA TURMA ---');
  Writeln('Total de Alunos Processados: ', qtdAlunos);
  Writeln('Quantidade de Aprovados (Média >= 70): ', aprovados);
  Writeln('Quantidade de Reprovados (Média < 70): ', reprovados);
  Writeln('====================================');
end.