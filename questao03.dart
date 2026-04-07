import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao03.dart (Exemplo: cd questao03.dart) está localizado
3. Executar o comando: dart run questao03.dart
4. Digitar o que se pede e confirmar
*/
void main() {
  print('Digite a quantidade de termos:');
  int termos = int.parse(stdin.readLineSync()!);

  int a = 1;  
  int b = 5;   
  int c = 100;  
  int contador = 0;

  while (contador < termos) {
    if (contador < termos) {
      print(a);
      contador++;
      a *= 2;
    }

    if (contador < termos) {
      print(b);
      contador++;
      b += 5;
    }

    if (contador < termos) {
      print(c);
      contador++;
      c -= 10;
    }
  }
}