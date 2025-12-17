program CalculoSalarioVendedor;

var
    nomeVendedor: string;
    salarioFixo: real;
    valorVendas: real;
    comissao: real;
    salarioTotal: real;
  
begin
    Write('Digite o nome do vendedor: ');
    Readln(nomeVendedor);
    Write('Digite o salário fixo do vendedor: R$ ');
    Readln(salarioFixo);
    Write('Digite o valor total das vendas efetuadas: R$ ');
    Readln(valorVendas);
    comissao := valorVendas * 0.15;
    salarioTotal := salarioFixo + comissao;
    Writeln;
    Writeln('--- DADOS DO VENDEDOR ---');
    Writeln('Nome:', nomeVendedor);
    Writeln('Salário Fixo: R$ ', salarioFixo:8:2);
    Writeln('Comissão (15% das vendas): R$ ', comissao:8:2);
    Writeln('SALÁRIO FINAL DO MÊS: R$ ', salarioTotal:8:2);
end.