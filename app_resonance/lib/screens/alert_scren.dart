import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text("Entrada "),
              content: Column(mainAxisSize: MainAxisSize.min, children: const [
                Text("¿Deseas realizar tu compra"),
                SizedBox(height: 10),
              ]),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar",
                      style: TextStyle(color: Colors.red)),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok", style: TextStyle(color: Colors.blue)),
                )
              ]);
        });
  }

  void displayDialogAndorid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            elevation: 5,
            title: const Text("Confirmar compra"),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text("¿Deseas realizar tu compra?"),
              SizedBox(height: 10),
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Ok", style: TextStyle(color: Colors.blue)),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: const StadiumBorder(), elevation: 0),
          //onPressed: () => displayDialogAndorid(context)
          onPressed: () => Platform.isAndroid
              ? displayDialogAndorid(context)
              : displayDialogIOS(context),
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Confimar compra")),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
