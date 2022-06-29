import 'package:appcarrusel/screens/alert_scren.dart';
import 'package:appcarrusel/widgets/place_slider.dart';
import 'package:appcarrusel/widgets/rumbos_slider%20.dart';
import 'package:flutter/material.dart';

import '../widgets/destino_slider .dart';
import '../widgets/product_card.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //if (productService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.black));
        }),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Destinos en Lima",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  DestinoSlider(),
                  Divider(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: const Text(
                      "La tarumba",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  RumbosSlider(),
                  const SizedBox(
                    height: 10,
                  ),
                  buttonOption(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )),
    );
  }

  void displayDialogAndroid(BuildContext context) {
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

class buttonOption extends StatelessWidget {
  const buttonOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const StadiumBorder(),
                elevation: 0),
            //onPressed: () => displayDialogAndorid(context)
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("descubre", style: TextStyle(color: Colors.white))),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const StadiumBorder(),
                elevation: 0),
            //onPressed: () => displayDialogAndorid(context)
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("descubre", style: TextStyle(color: Colors.white))),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const StadiumBorder(),
                elevation: 0),
            //onPressed: () => displayDialogAndorid(context)
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("descubre", style: TextStyle(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}
