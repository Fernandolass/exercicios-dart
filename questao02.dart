import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao02.dart (Exemplo: cd questao02.dart) está localizado
3. Executar o comando: dart run questao02.dart
4. Digitar o que se pede e confirmar
*/

void main() {
  stdout.write('Digite o número de termos: ');
  int n = int.parse(stdin.readLineSync()!);

  double soma = 0;
  int numerador = 3;
  int denominador = 5;

  for (int i = 1; i <= n; i++) {
    int sinal;
    if (i <= 3) {
      sinal = 1;
    } else {
      sinal = (i % 2 == 0) ? -1 : 1;
    }

    double termo = sinal * numerador / denominador;
    soma += termo;

    String sinalStr = sinal == 1 ? '+' : '-';
    print('Termo $i: $sinalStr $numerador / $denominador = ${termo.toStringAsFixed(6)}');

    numerador += 2;
    denominador += 5;
  }

  print('\nS = ${soma.toStringAsFixed(6)}');
}