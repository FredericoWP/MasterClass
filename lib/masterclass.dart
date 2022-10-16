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
