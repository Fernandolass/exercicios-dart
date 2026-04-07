import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao01.dart (Exemplo: cd questao01.dart) está localizado
3. Executar o comando: dart run questao01.dart
*/
void main() {
  int total = 0, masc = 0, fem = 0;

  int menorPontMasc = 99999;
  String nomeMenorMasc = "";

  int maiorSI = -1;
  String codigoMaiorSI = "";

  List<String> aprovadosCC = [];

  while (true) {
    String codigo;
    while (true) {
      stdout.write("Código - 0000 (ou FIM): ");
      codigo = stdin.readLineSync()!;

      if (codigo == "FIM") break;

      if (codigo.length <= 4 && int.tryParse(codigo) != null) {
        break;
      } else {
        print("Código inválido! Digite até 4 dígitos numéricos.");
      }
    }

    if (codigo == "FIM") break;

    String curso;
    while (true) {
      stdout.write("Curso (CC/SI): ");
      curso = stdin.readLineSync()!.toUpperCase();

      if (curso == "CC" || curso == "SI") break;
      print("Curso inválido! Digite CC ou SI.");
    }

    stdout.write("Nome: ");
    String nome = stdin.readLineSync()!;

    String sexo;
    while (true) {
      stdout.write("Sexo (M/F): ");
      sexo = stdin.readLineSync()!.toUpperCase();

      if (sexo == "M" || sexo == "F") break;
      print("Sexo inválido! Digite M ou F.");
    }

    int pont;
    while (true) {
      stdout.write("Pontuação (0 a 5000): ");
      pont = int.parse(stdin.readLineSync()!);

      if (pont >= 0 && pont <= 5000) {
        break;
      } else {
        print("Pontuação inválida! Deve estar entre 0 e 5000.");
      }
    }

    total++;

    if (sexo == "M") {
      masc++;
      if (pont < menorPontMasc) {
        menorPontMasc = pont;
        nomeMenorMasc = nome;
      }
    } else {
      fem++;
    }

    if (curso == "CC" && pont > 2500) {
      aprovadosCC.add("$codigo $nome $pont");
    }

    if (curso == "SI" && sexo == "M") {
      if (pont > maiorSI) {
        maiorSI = pont;
        codigoMaiorSI = codigo;
      }
    }
  }

  print("\nRESULTADOS");

  if (total > 0) {
    print("\na) Candidatos de CC com mais de 2500 pontos:");
    if (aprovadosCC.isNotEmpty) {
      for (var c in aprovadosCC) {
        print(c);
      }
    } else {
      print("a) Nenhum candidato encontrado.");
    }

    if (masc > 0) {
      print("\nb) Candidato do sexo masculino com a menor pontuação geral: $nomeMenorMasc");
    } else {
      print("\nb) Nenhum candidato masculino.");
    }

    if (codigoMaiorSI != "") {
      print("c) código do candidato do sexo masculino que teve a maior pontuação para o curso de SI: $codigoMaiorSI");
    } else {
      print("c) Nenhum candidato masculino em SI.");
    }

    print("\nd) Percentual masculino: ${(masc / total) * 100}%");
    print("Percentual feminino: ${(fem / total) * 100}%");
  } else {
    print("d) Nenhum candidato foi inserido.");
  }
}