import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao01.dart (Exemplo: cd questao01.dart) está localizado
3. Executar o comando: dart run questao01.dart
*/
void main() {
  int masc = 0, fem = 0;
  int totalHomens = 0;

  int somaIdadeHomensExp = 0;
  int qtdHomensExp = 0;

  int homensMais45 = 0;

  int mulheresMenor30Exp = 0;

  int menorIdadeMulherExp = 999;
  String nomeMenorMulherExp = "";

  while (true) {
    stdout.write("Nome (ou FIM): ");
    String nome = stdin.readLineSync()!;

    if (nome.toUpperCase() == "FIM") break;

    String sexo;
    while (true) {
      stdout.write("Sexo (M/F): ");
      sexo = stdin.readLineSync()!.toUpperCase();

      if (sexo == "M" || sexo == "F") break;

      print("Sexo inválido! Digite M ou F.");
    }

    int idade;
    while (true) {
      stdout.write("Idade: ");
      String entrada = stdin.readLineSync()!;

      if (int.tryParse(entrada) != null) {
        idade = int.parse(entrada);
        if (idade >= 0) break;
      }

      print("Idade inválida! Digite um número inteiro positivo.");
    }

    String exp;
    while (true) {
      stdout.write("Tem experiência? (S/N): ");
      exp = stdin.readLineSync()!.toUpperCase();

      if (exp == "S" || exp == "N") break;

      print("Entrada inválida! Digite S ou N.");
    }

    if (sexo == "M") {
      masc++;
      totalHomens++;

      if (exp == "S") {
        somaIdadeHomensExp += idade;
        qtdHomensExp++;
      }

      if (idade > 45) {
        homensMais45++;
      }
    } else {
      fem++;

      if (idade < 30 && exp == "S") {
        mulheresMenor30Exp++;
      }

      if (exp == "S" && idade < menorIdadeMulherExp) {
        menorIdadeMulherExp = idade;
        nomeMenorMulherExp = nome;
      }
    }
  }

  print("\nRESULTADOS");

  print("a) Total masculino: $masc");
  print("Total feminino: $fem");

  if (qtdHomensExp > 0) {
    print("b) Média idade homens com experiência: ${somaIdadeHomensExp / qtdHomensExp}");
  } else {
    print("b) Nenhum homem com experiência.");
  }

  if (totalHomens > 0) {
    print("c) Percentual homens com mais de 45 anos em relacao ao total de homens: ${(homensMais45 / totalHomens) * 100}%");
  } else {
    print("c) Nenhum homem cadastrado.");
  }

  print("d) Mulheres com idade inferior a 30 anos com experiência: $mulheresMenor30Exp");
  
  if (nomeMenorMulherExp != "") {
    print("e) Candidata mais jovem com experiência: $nomeMenorMulherExp");
  } else {
    print("e) Nenhuma mulher com experiência.");
  }
}