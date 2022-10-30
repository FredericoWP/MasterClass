import 'package:flutter/material.dart';
import 'package:flutter_playground/login/componentes/form_login.dart';
import 'package:flutter_playground/login/componentes/logo.dart';
import 'package:flutter_playground/login/widgets/button_login.dart';
import 'package:flutter_playground/login/widgets/gradient_icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff594FCC),
                        Color(0xff398CBF),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Logo()),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: MediaQuery.of(context).size.width * 0.1,
            child: const FormLogin(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.67,
            left: MediaQuery.of(context).size.width * 0.20,
            child: const ButtonLogin(),
          ),
          Positioned(
            bottom: 180,
            left: MediaQuery.of(context).size.width * 0.30,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "FORGOT PASSWORD?",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
