import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: MediaQuery.of(context).size.width * 0.60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: const Color(0xff327AD9),
      ),
      child: const Text(
        "LOGIN",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
