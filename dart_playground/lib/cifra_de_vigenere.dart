// ignore_for_file: no_leading_underscores_for_local_identifiers
// https://pt.wikipedia.org/wiki/Cifra_de_Vigenère

import 'dart:math';

final alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
main() {
  final message = "Masterclass";
  final key = keyGen(message.length);
  decrypt(encrypt(message, key), key);
}

String keyGen(int nCaract) {
  var key = List.generate(
      nCaract, (i) => alpha.join()[Random().nextInt(alpha.length)]).join();
  return key;
}

String encrypt(String text, String key) {
  final _key = key.split('');
  final msg = text.toUpperCase().split('');
  var cript = [];

  for (int i = 0; i < text.length; i++) {
    cript.add((alpha.indexWhere((e) => e == msg[i]) +
            alpha.indexWhere((e) => e == _key[i])) %
        26);
  }
  var rs = List.generate(cript.length, (index) => alpha.elementAt(cript[index]))
      .join();
  print("=> Criptografia");
  print("Chave: ${_key.join()}");
  print("Mensagem: ${msg.join()}");
  print("----------------------");
  print("cripyt: $rs");
  print("======================\r\n");

  return rs;
}

decrypt(String crypt, String key) {
  final _key = key.split('');
  final _crypt = crypt.toUpperCase().split('');
  final msg = [];
  for (int i = 0; i < _crypt.length; i++) {
    msg.add(((alpha.indexWhere((e) => e == _crypt[i]) -
                alpha.indexWhere((e) => e == _key[i])) +
            26) %
        26);
  }
  var rs =
      List.generate(msg.length, (index) => alpha.elementAt(msg[index])).join();

  print("=> Decriptografia");
  print("Criptografia: $crypt");
  print("Chave: $key");
  print("----------------------");
  print("Mensagem: $rs");
  print("======================");
}
