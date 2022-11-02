// ignore_for_file: no_leading_underscores_for_local_identifiers
// https://pt.wikipedia.org/wiki/Cifra_de_Vigenère

import 'dart:math';
final List<String> alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456_'.split('');

main() {
  final vigenere = CifraVigenere(text: "MasterClass_06");
  vigenere.encrypt();
  vigenere.decrypt();
}

class CifraVigenere {
  String? key;
  String text;
  String? crypt;
  CifraVigenere({
    this.key,
    required this.text,
    this.crypt,
  });

  String get getText {
    return text;
  }

  get keyGen {
    return key ??= List.generate(
            text.length, (i) => alpha.join()[Random().nextInt(alpha.length)])
        .join();
  }

  get getCrypt {
    return crypt ??= encrypt();
  }

  encrypt() {
    final _key = keyGen.split('');
    final msg = text.toUpperCase().split('');
    var _crypt = [];

    for (int i = 0; i < text.length; i++) {
      _crypt.add((alpha.indexWhere((e) => e == msg[i]) +
              alpha.indexWhere((e) => e == _key[i])) %
          alpha.length);
    }
    crypt =
        List.generate(_crypt.length, (index) => alpha.elementAt(_crypt[index]))
            .join();
    print("=> Criptografia");
    print("Chave: ${_key.join()}");
    print("Mensagem: ${msg.join()}");
    print("----------------------");
    print("cripyt: $crypt");
    print("======================\r\n");

    return crypt;
  }

  decrypt() {
    final _key = keyGen.split('');
    final _crypt = getCrypt.split('');
    final msg = [];

    for (int i = 0; i < _crypt.length; i++) {
      msg.add(((alpha.indexWhere((e) => e == _crypt[i]) -
                  alpha.indexWhere((e) => e == _key[i])) +
              alpha.length) %
          alpha.length);
    }
    var rs = List.generate(msg.length, (index) => alpha.elementAt(msg[index]))
        .join();

    print("=> Decriptografia");
    print("Criptografia: $crypt");
    print("Chave: $key");
    print("----------------------");
    print("Mensagem: $rs");
    print("======================");
  }
}
