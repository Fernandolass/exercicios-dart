void main() {
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao01.dart (Exemplo: cd questao01.dart) está localizado
3. Executar o comando: dart run questao01.dart
*/
  for (int num = 1000; num <= 9999; num++) {
    int parte1 = num ~/ 100;
    int parte2 = num % 100;

    int soma = parte1 + parte2;

    if (soma * soma == num) {
      print(num);
    }
  }
}