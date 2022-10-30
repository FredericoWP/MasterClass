import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/Money/first_screen.dart';
import 'package:flutter_playground/tinder/widgets/buttons.dart';

class TinderScreen extends StatelessWidget {
  const TinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFe94976),
              Color(0xFFee7462),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      height: 40,
                      child: Image.asset(
                        "assets/tinder_logo.png",
                      ),
                    ),
                    const Text(
                      "tinder",
                      style: TextStyle(
                        fontFamily: " tinder",
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 100),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "By tapping Create Account or Sign in, You agree to our\r\n",
                      children: <TextSpan>[
                        textUnderline("Terms."),
                        const TextSpan(
                          text: " Learn how we process your data in our ",
                        ),
                        textUnderline("Privacy\r\nPolicy"),
                        const TextSpan(
                          text: " and ",
                        ),
                        textUnderline("Cookies Policy."),
                      ],
                    ),
                  ),
                ),
                const ButtonsTinder(
                    text: "SIGN IN WITH APPLE", icone: Icons.apple),
                const ButtonsTinder(
                    text: "SIGN IN WITH FACEBOOK", icone: Icons.facebook),
                const ButtonsTinder(
                    text: "SIGN IN WITH PHONE NUMBER",
                    icone: CupertinoIcons.chat_bubble_fill),
                Container(
                  margin: const EdgeInsets.only(bottom: 30.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: const Text(
                    "Trouble Signing In?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
                top: 40,
                left: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FirstScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

textUnderline(String text) {
  return TextSpan(
    text: text,
    style: const TextStyle(
      decoration: TextDecoration.underline,
      decorationThickness: 1.5,
    ),
  );
}
