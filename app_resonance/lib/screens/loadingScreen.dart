import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "Reservas",
              style: GoogleFonts.indieFlower(
                  color: Colors.black,
                  fontSize: 20.6,
                  fontWeight: FontWeight.w700),
            )),
        body: const Center(
            child: CircularProgressIndicator(
          color: Colors.red,
        )));
  }
}
