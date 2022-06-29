import 'package:flutter/material.dart';

import '../widgets/product_card.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //if (productService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Entradas - La Tarumba",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.6,
                fontWeight: FontWeight.w700)),
      ),
      body: ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  displayDialogAndroid(context);
                },
                child: const ProductCard(),
              )),
      //floatingActionButton: FloatingActionButton(
      //  child: const Icon(Icons.add),
      //  onPressed: () {},
      //)
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
