List<int> sequencia = [];
var index = 0;
var limite = 100;

///Para elaborar uma sequencia de fibonacci é necessário informar o valor inicial [element] e o comprimento da lista [length]

List<int> fibonacci(int element, int length) {
  if (sequencia.isEmpty) {
    sequencia.add(element);
  } else if (sequencia.length == 1) {
    sequencia.add(element + 1);
  } else {
    sequencia.add(sequencia[index] + sequencia[index + 1]);
    index++;
  }
  if (sequencia.length >= length) return sequencia;
  return fibonacci(sequencia.last, length);
}

regraDeTres({grupo1_1 = 'x', grupo1_2 = 'x', grupo2_1 = 'x', grupo2_2 = 'x'}) {
  var x = [grupo1_1, grupo1_2, grupo2_1, grupo2_2];
  double calc1 = 0.0;
  double calc2 = 0.0;
  if (x.where((e) => e == "x").toList().length > 1) {
    print("deixe apenas 1 argumento nulo para definição do valor X");
  } else {
    print("${x[0]} * ${x[3]} = ${x[2]} * ${x[1]}");
    if (x[0] == "x") {
      print("${x[3]}${x[0]} = ${x[2]} * ${x[1]}");
      calc1 = x[2] * x[1];
      print("------------------------------------");
      print("${x[0]} = $calc1 / ${x[3]}");
      calc2 = calc1 / x[3];
      print("------------------------------------");
      print("${x[0]} = $calc2");
    } else if (x[1] == "x") {
      print("${x[2]}${x[1]} = ${x[0]} * ${x[3]}");
      calc1 = x[0] * x[3];
      print("------------------------------------");
      print("${x[1]} = $calc1 / ${x[2]}");
      calc2 = calc1 / x[2];
      print("------------------------------------");
      print("${x[1]} = $calc2");
    } else if (x[2] == "x") {
      print("${x[1]}${x[2]} = ${x[0]} * ${x[3]}");
      calc1 = x[0] * x[3];
      print("------------------------------------");
      print("${x[2]} = $calc1 / ${x[1]}");
      calc2 = calc1 / x[1];
      print("------------------------------------");
      print("${x[2]} = $calc2");
    } else {
      print("${x[0]}${x[3]} = ${x[2]} * ${x[1]}");
      calc1 = x[2] * x[1];
      print("------------------------------------");
      print("${x[3]} = $calc1 / ${x[0]}");
      calc2 = calc1 / x[0];
      print("------------------------------------");
      print("${x[3]} = $calc2");
    }
  }
}

checkCard(String ncard) {
  // 4916 6418 5936 9080 - valido
  // 5419 8250 0346 1210 - nValido

  bool resp = false;
  var result1 = <int>[];
  var result2 = 0;
  var sequencia =
      ncard.replaceAll(' ', '').split('').map((e) => int.parse(e)).toList();
  //print(sequencia);

  if (ncard.length < 16) {
    print("Você precisa informar os 16 digitos do cartão");
  } else {
    for (var i = 0; i < sequencia.length - 1; i++) {
      int n = sequencia[i];
      result1.add(i % 2 == 0 ? (n) * 2 : (n));
    }

    result1.forEach((e) {
      if (e > 9) {
        var nDouble = e.toString().split('').map((e) {
          result2 += int.parse(e);
        }).toList();
      } else {
        result2 += e;
      }
    });

    resp = ((result2 % 10)) == sequencia[sequencia.length - 1];

    print("$result1");
    print("$result2");
    print(resp ? "Cartão válido" : "Cartão inválido");
  }
}

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
  print(
      ("$dig1$dig2" == "${cpf[9]}${cpf[10]}") ? "CPF Válido" : "CPF Inválido");
}
