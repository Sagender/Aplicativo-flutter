// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace, camel_case_types
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/comer_model.dart';

import '../services/places_services.dart';

class Eatit extends StatelessWidget {
  const Eatit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final placeService = Provider.of<PlaceService>(context);
    return Scaffold(
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: <Widget>[
          const SliverAppBar(
              backgroundColor: Colors.red,
              pinned: true,
              expandedHeight: 400.0,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                //Title destinos
                title: Text(
                  "Donde Comer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.00),
                ),
                background: FadeInImage(
                    placeholder: AssetImage("assets/images/no-image.jpg"),
                    image: NetworkImage(
                        "https://cdn1.intriper.com/wp-content/uploads/2015/07/03231334/arroz-con-pollo.jpg"),
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover),
              )),

          //SliverList(delegate: SliverChildListDelegate(Column(children: [],)),)Sirveparaagregar

          SliverFillRemaining(
            child: Center(
              //LLamado a la clase
              child: Container(
                  //height: 30,
                  margin: EdgeInsets.only(top: 0),
                  child: ListViewPage()),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeService = Provider.of<PlaceService>(context);
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      body: ListView.builder(
        itemCount: placeService.eatIt.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //showDialogFunc(
              //    context, imgList[index], titleList[index], descList[index]);
            },
            //Agregar un formato de card
            child: contenidoDetail(
              width: width,
              eatIt: placeService.eatIt[index],
            ),
          );
        },
      ),
    );
  }

  showDialogFunc(context, img, title, desc) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                //color de la caja
                color: Colors.white,
              ),
              //Diseño de la caja
              padding: EdgeInsets.all(15),
              height: 400,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: FadeInImage(
                        placeholder: AssetImage("assets/images/no-image.jpg"),
                        image: NetworkImage(img),
                        width: 300,
                        height: 250,
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            "Ver más",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          )),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Retornar",
                            style: TextStyle(color: Colors.red, fontSize: 15)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class contenidoDetail extends StatelessWidget {
  final EatIt eatIt;
  const contenidoDetail({
    Key? key,
    required this.width,
    required this.eatIt,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        //color de la caja
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          //Tamaño del card
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: FadeInImage(
                  placeholder: AssetImage("assets/images/no-image.jpg"),
                  image: NetworkImage(eatIt.picture),
                  width: 350,
                  height: 300,
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  eatIt.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: width,
                  child: Text(
                    eatIt.description,
                    maxLines: 3,
                    style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
