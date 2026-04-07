import 'dart:io';
import 'dart:math';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao01.dart (Exemplo: cd questao01.dart) está localizado
3. Executar o comando: dart run questao01.dart
*/
void main() {
  var random = Random();
  int numero = random.nextInt(100) + 1;

  int minimo = 1;
  int maximo = 100;

  while (true) {
    stdout.write("Digite um número entre $minimo e $maximo: ");
    int chute = int.parse(stdin.readLineSync()!);

    if (chute == numero) {
      print("Acertou!");
      break;
    } else if (chute > numero) {
      maximo = chute - 1; // 🔥 correção
      print("O número está entre $minimo e $maximo");
    } else {
      minimo = chute + 1; // 🔥 correção
      print("O número está entre $minimo e $maximo");
    }
  }
}