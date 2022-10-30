import 'package:flutter/material.dart';

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
            Center(child: logo()),
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
            btnSignUp(context),
            btnSignUpGoogle(context),
            btnSignIn(context),
          ],
        ),
      ),
    );
  }
}

Widget btnSignUp(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width * .9,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: const Text(
        'Sign Up with Email ID',
        style: TextStyle(
            color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

Widget btnSignUpGoogle(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    width: MediaQuery.of(context).size.width * .9,
    height: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/google_icon.png", fit: BoxFit.cover),
        const Text(
          'Sign Up with Google',
          style: TextStyle(
              color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget btnSignIn(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    width: MediaQuery.of(context).size.width * .9,
    height: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: RichText(
      text: const TextSpan(
        text: "Already have an account? ",
        style: TextStyle(
            color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w500),
        children: <TextSpan>[
          TextSpan(
            text: "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget logo() {
  return Container(
    width: 150,
    height: 150,
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(94, 92, 229, 1),
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
              Container(
                height: 65,
                width: 65,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(94, 92, 229, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 130,
            width: 65,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(94, 92, 229, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(90),
                topRight: Radius.circular(90),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
