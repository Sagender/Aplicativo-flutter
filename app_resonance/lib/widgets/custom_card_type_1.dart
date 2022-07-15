import 'package:appcarrusel/screens/alert_scren.dart';
import 'package:flutter/material.dart';

import '../models/boleteria.dart';

class CustomCardType1 extends StatelessWidget {
  final Boletos boletos;
  const CustomCardType1({
    Key? key,
    required this.boletos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: Colors.black),
          title: Text("Entrada - Adulto"),
          subtitle: Text("Info\n"
              "El costo de la entrada es de S/12.00"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AlertScreen()));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
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
}
