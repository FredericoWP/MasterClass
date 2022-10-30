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

    for (var e in result1) {
      if (e > 9) {
        e.toString().split('').map((e) {
          result2 += int.parse(e);
        }).toList();
      } else {
        result2 += e;
      }
    }

    resp = ((result2 % 10)) == sequencia[sequencia.length - 1];

    print("$result1");
    print("$result2");
    print(resp ? "Cartão válido" : "Cartão inválido");
  }
}
