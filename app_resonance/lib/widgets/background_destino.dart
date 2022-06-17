import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.1,
                0.3,
                0.7,
                1
              ],
                  colors: [
                Colors.white70, //fromARGB(255, 30, 90, 32),
                Colors.white70, //fromARGB(255, 32, 96, 149),
                Colors.white70, //fromARGB(255, 215, 141, 28),
                Colors.white70, //fromARGB(255, 219, 93, 135)
              ])),
        ),
      ],
    );
  }
}
