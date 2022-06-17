import 'package:appcarrusel/screens/loadingScreen.dart';
import 'package:appcarrusel/services.dart/products_service.dart';
import 'package:appcarrusel/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productService = Provider.of<ProductsService>(context);
    if (productService.isLoading) return LoadingScreen();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Tus Reservas",
              style: GoogleFonts.indieFlower(
                  color: Colors.black,
                  fontSize: 25.6,
                  fontWeight: FontWeight.w700)),
        ),
        body: ListView.builder(
            itemCount: productService.products.length,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "product"),
                  child: ProductCard(product: productService.products[index]),
                )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
