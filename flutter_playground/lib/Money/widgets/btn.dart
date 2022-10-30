import 'package:flutter/material.dart';

class BtnSignInGoogle extends StatelessWidget {
  const BtnSignInGoogle({super.key});

  @override
  Widget build(BuildContext context) {
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
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
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
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
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
}
