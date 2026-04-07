import 'dart:io';
/*
O código foi feito no VS Code, para rodar no VSC, é necessário:
1. Abrir o terminal integrado (Ctrl + `)
2. Navegar até o diretório onde o arquivo questao04.dart (Exemplo: cd questao04.dart) está localizado
3. Executar o comando: dart run questao04.dart
4. Digitar o que se pede e confirmar
*/
void main() {
  double somaTurma = 0;
  int totalAlunos = 0;

  int aprovados = 0;

  double somaFeminino = 0;
  int qtdFeminino = 0;

  double maiorMediaM = -1;
  String melhorMatriculaM = '';

  double maiorMediaF = -1;
  String melhorMatriculaF = '';

  while (true) {
    print('\nDigite a matrícula (ou 00000 para sair):');
    String matricula = stdin.readLineSync()!;

    if (matricula == '00000') break;

    print('Nome:');
    String nome = stdin.readLineSync()!;

    print('Sexo (M/F):');
    String sexo = stdin.readLineSync()!.toUpperCase();

    print('Nota 1:');
    double n1 = double.parse(stdin.readLineSync()!);

    print('Nota 2:');
    double n2 = double.parse(stdin.readLineSync()!);

    print('Nota 3:');
    double n3 = double.parse(stdin.readLineSync()!);

    print('Número de faltas:');
    int faltas = int.parse(stdin.readLineSync()!);

    double media = (n1 + n2 + n3) / 3;

    somaTurma += media;
    totalAlunos++;

    bool aprovado = media >= 7 && faltas <= 18;

    if (aprovado) {
      aprovados++;

      if (sexo == 'M' && media > maiorMediaM) {
        maiorMediaM = media;
        melhorMatriculaM = matricula;
      }

      if (sexo == 'F' && media > maiorMediaF) {
        maiorMediaF = media;
        melhorMatriculaF = matricula;
      }
    }

    if (sexo == 'F') {
      somaFeminino += media;
      qtdFeminino++;
    }
  }

  print('\n===== RESULTADOS =====');

  if (totalAlunos > 0) {
    double mediaTurma = somaTurma / totalAlunos;
    print('a) Média da turma: ${mediaTurma.toStringAsFixed(2)}');

    double percAprovados = (aprovados / totalAlunos) * 100;
    print('b) Percentual de aprovados: ${percAprovados.toStringAsFixed(2)}%');
  }

  print('c) Melhor matrícula masculina: $melhorMatriculaM');
  print('   Melhor matrícula feminina: $melhorMatriculaF');

  if (qtdFeminino > 0) {
    double mediaFeminino = somaFeminino / qtdFeminino;
    print('d) Média das alunas: ${mediaFeminino.toStringAsFixed(2)}');
  } else {
    print('d) Não há alunas.');
  }
}