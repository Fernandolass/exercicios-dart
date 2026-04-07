import 'dart:io';

void main() {
  stdout.write('Digite um número: ');
  int numero = int.parse(stdin.readLineSync()!);

  int original = numero;
  int invertido = 0;

  while (numero > 0) {
    int digito = numero % 10;
    invertido = invertido * 10 + digito;
    numero ~/= 10;
  }

  print('Número original: $original');
  print('Número invertido: $invertido');
}
