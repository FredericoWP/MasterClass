import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
}
