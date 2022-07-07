import 'package:appcarrusel/widgets/destino1_slider.dart';
import 'package:appcarrusel/widgets/museo_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/destino_slider .dart';
import '../widgets/tarumba_slider .dart';

class DestinoScreen extends StatelessWidget {
  const DestinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //if (productService.isLoading) return LoadingScreen();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Destinos en Lima",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart, color: Colors.black)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.black)),
        ],
      ),
      body: ListView.builder(
          // separatorBuilder: (_, __) => const Divider(),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  DestinoSlider(),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  //TarumbaSlider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Destino1Slider(),
                  const SizedBox(
                    height: 10,
                  ),
                  MuseoSlider(),
                ],
              )),
    );
  }
}
