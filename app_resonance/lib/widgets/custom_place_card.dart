import 'package:flutter/material.dart';

class CustomPlaceCard extends StatelessWidget {
  const CustomPlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.map, color: Colors.black),
          title: Text("Soy un título"),
          subtitle: Text("Et consequat ipsum aute elit id mollit excepteur"
              " sint elit laborum occaecat tempor. Cillum tempor"
              "consequat minim veniam ad laborum ea eu elit ut sunt"
              " anim. Ad reprehenderit ullamco aliqua laborum magna"
              " aliquip enim minim. Culpa ex dolore amet sunt. "
              "Sit mollit excepteur magna anim qui consequat "
              "id officia mollit esse."),
        ),
        GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: const FadeInImage(
                  placeholder: AssetImage("assets/images/no-image.jpg"),
                  image:
                      NetworkImage("https://via.placeholder.com/360x250.png"),
                  width: 380,
                  height: 250,
                  fit: BoxFit.cover),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        )
      ]),
    );
  }
}
