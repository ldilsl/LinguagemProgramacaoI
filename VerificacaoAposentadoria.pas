program VerificacaoAposentadoria;

var
    codigoEmpregado: Integer;
    anoNascimento: Integer;
    anoIngresso: Integer;
    anoAtual: Integer;
    idade: Integer;
    tempoTrabalho: Integer;
  
begin
    anoAtual := 2025; 
    Write('Digite o código do empregado: ');
    Readln(codigoEmpregado);
    Write('Digite o ano de nascimento: ');
    Readln(anoNascimento);
    Write('Digite o ano de ingresso na empresa: ');
    Readln(anoIngresso);
    idade := anoAtual - anoNascimento;
    tempoTrabalho := anoAtual - anoIngresso;
    Writeln;
    Writeln('--- DADOS CALCULADOS ---');
    Writeln('Idade do empregado: ', idade, ' anos');
    Writeln('Tempo de trabalho: ', tempoTrabalho, ' anos');
    Writeln;
    Write('Situacao: ');
    if (idade >= 65) or 
        (tempoTrabalho >= 30) or
        ((idade >= 60) and (tempoTrabalho >= 25)) 
    then
        Writeln('Requerer aposentadoria')
    else
        Writeln('Não requerer aposentadoria');
end.