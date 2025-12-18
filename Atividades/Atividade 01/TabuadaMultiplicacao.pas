program TabuadaMultiplicacao;

var
    N: Integer;
    i: Integer;
    resultado: Integer;
  
begin
    Write('Digite um número inteiro (N): ');
    Readln(N);
    Writeln;
    Writeln('--- TABUADA DE MULTIPLICAÇÃO DO ', N, ' ---');
    for i := 1 to 10 do
    begin
        resultado := N * i;
        Writeln(N, ' x ', i:2, ' = ', resultado:3);
    end;
end.
