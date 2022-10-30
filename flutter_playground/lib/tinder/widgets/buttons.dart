import 'package:flutter/material.dart';

class ButtonsTinder extends StatelessWidget {
  const ButtonsTinder({super.key, required this.text, required this.icone});
  final String text;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90.0),
              border: Border.all(color: Colors.white)),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        Positioned(
          top: 18.6,
          left: 18.6,
          child: Icon(
            icone,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
