int calculate() {
  return 6 * 7;
}

///A sequência de Fibonacci é infinita. Portanto, o ideal é que seja defina um valor que tenha como [objetivo]
List<int> fibonacci(int objetivo) {
  List<int> sequencia = [0, 1];
  var startIndex = 0;

  do {
    sequencia.add(sequencia[startIndex] + sequencia[startIndex + 1]);
    startIndex++;
  } while (sequencia.last <= objetivo);

  return sequencia;
}
