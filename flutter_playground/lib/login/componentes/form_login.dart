import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, right: 20, left: 20),
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 1.5),
              blurRadius: 5,
              spreadRadius: 3,
              blurStyle: BlurStyle.normal)
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text("LOGIN"),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Email"),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(labelText: "Password"),
          ),
        ],
      ),
    );
  }
}
