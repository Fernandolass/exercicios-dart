import 'dart:io';

void main() {
  stdout.write('Digite a quantidade de bois: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> numeros = [];
  List<double> pesos = [];

  for (int i = 0; i < n; i++) {
    print('\nBoi ${i + 1}:');

    stdout.write('Número: ');
    numeros.add(int.parse(stdin.readLineSync()!));

    stdout.write('Peso: ');
    pesos.add(double.parse(stdin.readLineSync()!));
  }

  while (true) {
    print('\nDigite o intervalo de pesos');
    stdout.write('Peso mínimo ou -1 para encerrar: ');
    double min = double.parse(stdin.readLineSync()!);

    if (min == -1) {
      break;
    }

    stdout.write('Peso máximo: ');
    double max = double.parse(stdin.readLineSync()!);

    print('\nBois com peso entre $min e $max:');
    bool encontrou = false;

    for (int i = 0; i < n; i++) {
      if (pesos[i] >= min && pesos[i] <= max) {
        print('Número: ${numeros[i]} | Peso: ${pesos[i]}');
        encontrou = true;
      }
    }

    if (!encontrou) {
      print('Nenhum boi encontrado nesse intervalo.');
    }
  }
}
