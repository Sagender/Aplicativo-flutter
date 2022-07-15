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
                  //MuseoSlider(),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  DestinoSlider(),
                  Divider(),
                  MuseoSlider(),
                  Divider(),
                  Destino1Slider(),
                  Divider(),
                  //MuseoSlider(),
                  Divider(),
                  //DestinoSlider(),
                  Divider(),
                  //MuseoSlider(),
                ],
              )),
    );
  }
}
