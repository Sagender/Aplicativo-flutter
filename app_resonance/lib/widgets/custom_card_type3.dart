import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {
  final String imageUrl;
  final String?
      name; // se coloaca String? para que sea opcional_ en caso contrario es required

  const CustomCardType3({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias, // Sirve para cortar los bordes
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 10,
        shadowColor: Colors.red.withOpacity(0.1),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(
                imageUrl,
              ),
              placeholder: const AssetImage("assets/images/jar-loading.gif"),
              width: double.infinity,
              height: 91,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null) // si el nombre es nulo se construirá este Widget
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text(name ??
                      "Sin título") //Se pone name?? por si no hay un título aún)
                  )
          ],
        ));
  }
}
