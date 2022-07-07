import 'package:flutter/material.dart';

class MuseoSlider extends StatefulWidget {
  @override
  MuseoSliderState createState() => MuseoSliderState();
}

class MuseoSliderState extends State<MuseoSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        width: double.infinity,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Title del museo",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal, //Dirección del Scroll
                itemCount: 6,
                itemBuilder: (_, int index) => CitySlider(),
              ),
            ),
            buttonOption(),
          ],
        ));
  }
}

class CitySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 150,
        height: 100,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "History"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: const FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(
                        "https://live.staticflickr.com/1941/31582966498_8beca335c3_b.jpg"),
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ));
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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.black),
              primary: Colors.white,
              shape: const StadiumBorder(),
              elevation: 0),
          //onPressed: () => displayDialogAndorid(context)
          onPressed: () => Navigator.pushNamed(context, "Product"),
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Boletería",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700))),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.black),
              primary: Colors.white,
              shape: const StadiumBorder(),
              elevation: 0),
          //onPressed: () => displayDialogAndorid(context)
          onPressed: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text("Descubre",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700))),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.black),
              primary: Colors.white,
              shape: const StadiumBorder(),
              elevation: 0),
          //onPressed: () => displayDialogAndorid(context)
          onPressed: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Ubicación",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700))),
        ),
      ],
    );
  }
}
