import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: Colors.black),
          title: Text("Entraa - Categoría"),
          subtitle: Text("Info\n"
              "El costo de la entrada es de S/12.00"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, displayDialogAndorid(context)),
                child: const Text("Ok"),
              )
            ],
          ),
        )
      ]),
    );
  }
}
