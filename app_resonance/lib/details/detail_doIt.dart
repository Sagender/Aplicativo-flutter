// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Doit extends StatelessWidget {
  const Doit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white60,
            pinned: true,
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              //Title destinos
              title: Text(
                "Cosas que hacer",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.00),
              ),
              background: Image.asset(
                "assets/images/Lima10.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
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

//Instancia de la clase
class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    //Rótulos
    "Circuito de Agua",
    "Plaza de Armas",
    "Larcomar",
    "Lunahuana",
    "Canta",
    "Huaral",
    "Huancaya"
  ];

  // Description List Here
  var descList = [
    //Textos o comentarios
    "Horario. Lunes a Domingo. 02:00 pm a 10:00 pm. Espectáculo Multimedia. 06:50 pm, 07:30 pm, 08:10 pm, 08:50 pm.",
    "El acceso es libre, por lo cual es un lugar turistico por la historia que tiene.",
    "El acceso es gratutio. La opcion mas recomendada para los turistas es haciendo uso de un taxi privado.",
    "Su distancia es de 191 km y el viaje es de aproximadamente unas 2h 41min para conducir desde lima.",
    "La distancia es de 105 km y el viaje es de aproximadamente 1h 45 min para conducir desde lima.",
    "Tiene una distancia de 78 km y el viaje dura aproximadamente 1h 7min para conducir desde lima.",
    "El viaje es de 6h a 7h con un recorrido de 330km aproximadamente."
  ];

  ///Imágenes
  var imgList = [
    "assets/images/foto1.jpg",
    "assets/images/foto2.jpg",
    "assets/images/foto3.jpg",
    "assets/images/lunahuana.jpg",
    "assets/images/Canta.jpg",
    "assets/images/huaral.jpg",
    "assets/images/huancaya.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            //Agregar un formato de card
            child: Row(
              children: <Widget>[
                //Tamaño del card
                Container(
                  width: 120,
                  height: 120,
                  child: Image.asset(
                    imgList[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        titleList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: width,
                        child: Text(
                          descList[index],
                          maxLines: 3,
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[500]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
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
                  child: Image.asset(
                    img,
                    width: 300,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
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
