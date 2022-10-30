import 'package:flutter/material.dart';
import 'package:flutter_playground/Money/widgets/btn.dart';
import 'package:flutter_playground/Money/widgets/logo.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
              child: Logo(),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 80.0),
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Get your Money\r\nUnder Control",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Manage your expenses.\r\nSeamlessly.",
                    style: TextStyle(
                        color: Colors.white30,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SignUp(),
            const BtnSignInGoogle(),
            const SignIn(),
          ],
        ),
      ),
    );
  }
}
