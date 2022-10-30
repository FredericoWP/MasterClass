import 'package:flutter/material.dart';
import 'package:flutter_playground/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(94, 92, 229, 1.0),
      ),
      home: const TinderScreen(),
    );
  }
}

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
                button(context, "SIGN IN WITH APPLE", Icons.apple),
                button(context, "SIGN IN WITH FACEBOOK", Icons.facebook),
                button(context, "SIGN IN WITH PHONE NUMBER", Icons.messenger),
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

Widget button(BuildContext context, String text, IconData icone) {
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


    // --color--brand-gradient-end: #ff6036;
    // --color--brand-gradient-start: #fd267a;
    // --color--brand-primary: #ff4458;
    // --color--brand-primary-a11y: #d6002f;

// Color(0xFFe94976),
// Color(0xFFee7462),

//  Color(0xFFd6002f),
//               Color(0xFFfd267a),
//               Color(0xFFff4458),
//               Color(0xFFff6036),