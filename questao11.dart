import 'dart:io';

void main() {
  double somasalarioliquidoM = 0;
  double somasalarioliquidoF = 0;
  int qtdmasculino = 0;
  int qtdfeminino = 0;

  print('Digite os dados dos professores. Para encerrar, digite o código 9999.');

  while (true) {
    stdout.write('\nCódigo: ');
    int codigo = int.parse(stdin.readLineSync()!);

    if (codigo == 9999) {
      break;
    }

    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!.trim();

    stdout.write('Sexo M ou F: ');
    String sexo = stdin.readLineSync()!.trim().toUpperCase();

    stdout.write('Número de horas/aula no mês: ');
    double horas = double.parse(stdin.readLineSync()!);

    double salarioBruto = horas * 12.30;
    double desconto = (sexo == 'M') ? 0.10 : 0.05;
    double salarioLiquido = salarioBruto - (salarioBruto * desconto);

    print('\n--- Professor ---');
    print('Código: $codigo');
    print('Nome: $nome');
    print('Salário bruto: R\$ ${salarioBruto.toStringAsFixed(2)}');
    print('Salário líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}');

    if (sexo == 'M') {
      somasalarioliquidoM += salarioLiquido;
      m++;
    } else if (sexo == 'F') {
      somasalarioliquidoF += salarioLiquido;
      qtdfeminino++;
    }
  }

  double mediaMasc =
      m > 0 ? somasalarioliquidoM / m : 0.0;
  double mediaFem =
      qtdfeminino > 0 ? somasalarioliquidoF / qtdfeminino : 0.0;

  print('\nMÉDIAS FINAIS');
  print('Média dos salários líquidos dos homens: R\$ ${mediaMasc.toStringAsFixed(2)}');
  print('Média dos salários líquidos das mulheres: R\$ ${mediaFem.toStringAsFixed(2)}');
}
