// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Eatit extends StatelessWidget {
  const Eatit({Key? key}) : super(key: key);

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
                "Donde comer",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.00),
              ),
              background: Image.asset(
                "assets/images/comida1.jpg",
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
                  margin: EdgeInsets.only(top: 8.8),
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
    "Panchita",
    "Matria Restaurante",
    "Restaurant Huaca Pucllana",
    "OSAKA ",
    "Mayta",
    "Astrid y Gastón",
    "Nanka"
  ];

  // Description List Here
  var descList = [
    //Textos o comentarios
    "Panchita ofrece una variada carta que homenajea a la sazón criolla recordando los entrañables sabores y aromas de nuestra cocina.",
    "Una cocina que cree en la estacionalidad de los insumos y la armonia de con el medio ambiente",
    "Utilizamos como base los sabores del Perú, interpretando de acuerdo a las técnicas clásicas de cocina, así como los estilos contemporáneos y las exigencias de los paladares más exquisitos.",
    "Ofrece una variada carta elaborada en base a la fusión de la gastronomía peruano-japonesa balanceando técnica e ingredientes.",
    "Mayta, que significa Tierra Noble en el idioma aymara, es una expresión personal y contemporánea de la gastronomía y territorio peruano.",
    "Hemos preparado una selección de los platos que fueron parte de la historia nuestro restaurante a lo largo de los últimos 26 años",
    "Visión de cocina internacional, con insumos peruanos diversos, revalorando el gran sabor que aporta a la fusión."
  ];

  ///Imágenes
  var imgList = [
    "assets/images/panchita.jpg",
    "assets/images/matria.jpg",
    "assets/images/huanca.jpg",
    "assets/images/osaka.jpg",
    "assets/images/mayta.jpg",
    "assets/images/astrid.jpg",
    "assets/images/nanka.jpg"
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
                  width: 110,
                  height: 110,
                  child: Image.asset(
                    imgList[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        titleList[index],
                        style: GoogleFonts.indieFlower(
                          fontSize: 25,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
            height: 420,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
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
              ],
            ),
          ),
        ),
      );
    },
  );
}
