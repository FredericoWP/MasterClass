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
