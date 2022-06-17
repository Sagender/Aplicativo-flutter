import 'dart:html';

import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reservas"),
        ),
        body: Center(
            child: CircularProgressIndicator(
          color: Colors.red,
        )));
  }
}
