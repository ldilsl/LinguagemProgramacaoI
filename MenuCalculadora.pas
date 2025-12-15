program MenuCalculadora;

var
  opcao: Integer;
  num1, num2: Real;
  resultado: Real;
  
procedure ExibirMenu;
begin
  Writeln;
  Writeln('========== MENU PRINCIPAL ==========');
  Writeln('1- Calcular a soma de dois números');
  Writeln('2- Calcular a média de dois números');
  Writeln('3- Calcular o quadrado de um número');
  Writeln('0- Sair');
  Writeln('==================================');
  Write('Digite a opção desejada: ');
end;

begin
  opcao := -1; 
  
  repeat
    
    ExibirMenu;
    Readln(opcao);
    Writeln;
    
    case opcao of
      1:
        begin
          Write('Digite o primeiro número: ');
          Readln(num1);
          Write('Digite o segundo número: ');
          Readln(num2);
          resultado := num1 + num2;
          Writeln('A soma de ', num1:0:2, ' e ', num2:0:2, ' é: ', resultado:0:2);
        end;
        
      2:
        begin
          Write('Digite o primeiro número: ');
          Readln(num1);
          Write('Digite o segundo número: ');
          Readln(num2);
          resultado := (num1 + num2) / 2;
          Writeln('A média de ', num1:0:2, ' e ', num2:0:2, ' é: ', resultado:0:2);
        end;
        
      3:
        begin
          Write('Digite o número: ');
          Readln(num1);
          resultado := num1 * num1;
          Writeln('O quadrado de ', num1:0:2, ' é: ', resultado:0:2);
        end;
        
      0:
        Writeln('Programa encerrado. Até logo!');
        
      else
        Writeln('Opção inválida. Por favor, escolha uma opção de 0 a 3.');
        
    end;
    
    Writeln;
    
  until opcao = 0;
  
end.