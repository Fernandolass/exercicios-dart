import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao01.dart (Exemplo: cd questao01.dart) está localizado
3. Executar o comando: dart run questao01.dart
*/
int fatorial(int n) {
  int fat = 1;
  for (int i = 1; i <= n; i++) {
    fat *= i;
  }
  return fat;
}

num potencia(num base, int exp) {
  num result = 1;
  for (int i = 0; i < exp; i++) {
    result *= base;
  }
  return result;
}

void main() {
  stdout.write("Digite o valor de X: ");
  int x = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o número de termos: ");
  int n = int.parse(stdin.readLineSync()!);

  double soma = 0;

  int fatAtual = 1;
  bool subindo = true;

  for (int i = 1; i <= n; i++) {
    int expoente = i + 1;

    soma += potencia(x, expoente) / fatorial(fatAtual);

    // controle do padrão 1,2,3,4,3,2,1...
    if (subindo) {
      fatAtual++;
      if (fatAtual == 4) {
        subindo = false;
      }
    } else {
      fatAtual--;
      if (fatAtual == 1) {
        subindo = true;
      }
    }
  }

  print("Resultado da série: $soma");
}