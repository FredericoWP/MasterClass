import 'dart:math';

class CPF {
  validaCPF(String nCPF) {
    var cpf = nCPF
        .replaceAll('.', '')
        .replaceAll('-', 'replace')
        .split('')
        .map((e) => int.parse(e))
        .toList();

    List<int> seq1 = [];
    List<int> seq2 = [];
    int dig1 = 0;
    int dig2 = 0;
    int fator = 2;

    for (var i = 8; i >= 0; i--, fator++) {
      seq1.insert(0, cpf[i] * fator);
    }

    for (var e in seq1) {
      dig1 += e;
    }
    print("CPF: $cpf");
    print("[1]Etapa1: $seq1");
    print("[1]Etapa2: $dig1");
    print("[1]Etapa3/4: ${(dig1 % 11) < 2 ? 0 : 11 - (dig1 % 11)}");
    dig1 = (dig1 % 11) < 2 ? 0 : 11 - (dig1 % 11);
    fator = 2;
    for (var i = 9; i >= 0; i--, fator++) {
      seq2.insert(0, cpf[i] * fator);
    }

    for (var e in seq2) {
      dig2 += e;
    }
    print("--------------------------------------------------------");
    print("[2]Etapa1: $seq2");
    print("[2]Etapa2: $dig2");
    print("[2]Etapa3/4: ${(dig2 % 11) < 2 ? 0 : 11 - (dig2 % 11)}");
    dig2 = (dig2 % 11) < 2 ? 0 : 11 - (dig2 % 11);
    print(("$dig1$dig2" == "${cpf[9]}${cpf[10]}")
        ? "CPF Válido"
        : "CPF Inválido");
  }

  geraCPF() {
    List<int> cpf = [];
    int digit1;
    int digit2;

    while (cpf.length < 9) {
      cpf.add(Random().nextInt(9));
    }
    digit1 = digtVerificador(cpf);
    cpf.add(digit1);
    digit2 = digtVerificador(cpf);
    cpf.add(digit2);

    print(cpf.toString());
  }

  int digtVerificador(List<int> range) {
    int fator = range.length + 1;
    int digito = 0;

    for (var i = 0; i < range.length; i++) {
      digito += (range[i] * fator);
      fator--;
    }

    digito = (digito % 11) < 2 ? 0 : 11 - (digito % 11);
    return digito;
  }
}
