import 'package:flutter/material.dart';

class TextUnderline extends StatelessWidget {
  const TextUnderline({super.key, required this.text});
  final String text;

  @override
  build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          decorationThickness: 1.5,
        ),
      ),
    );
  }
}
