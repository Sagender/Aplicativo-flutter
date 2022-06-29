// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, duplicate_ignore

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../details/detail_eat.dart';

class DestinoScreen extends StatelessWidget {
  const DestinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: Text(
              "Elige tu destino",
              style: GoogleFonts.indieFlower(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          backgroundColor: Colors.white54,
          elevation: 0,
          actions: [
            UnconstrainedBox(
                child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(right: 12),
              child: Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Eatit()));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.black87,
                  ),
                ),
              ),
            ))
          ]),
      body: Stack(
        children: [/*Background(),*/ _Body()],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [_CustomTable()],
      ),
    );
  }
}

class _CustomTable extends StatelessWidget {
  const _CustomTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '1',
              child: _CustomCard(
                title: 'Parque de las Aguas',
                image:
                    "https://elcomercio.pe/resizer/U1kW-7m-EKja9pw3ZFtNpZ89InM=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/II7LIHJYTVB5VHYABREBVGSPEI.jpg",
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '2',
              child: _CustomCard(
                title: 'Plaza de Armas',
                image:
                    "https://dc3.com.pe/wp-content/uploads/2021/01/DC3-Plaza-mayor-de-Lima-01.jpg",
              ),
            ),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '3',
              child: _CustomCard(
                  title: 'Caral',
                  image: "https://static.dw.com/image/45113007_401.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '4',
              child: _CustomCard(
                title: 'Catarata de la Novia',
                image:
                    "https://www.peruenargentina.com.ar/uploads/filemanager/Churin.jpg",
              ),
            ),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '5',
              child: _CustomCard(
                  title: 'Castillo de Chancay',
                  image:
                      "https://www.peruenargentina.com.ar/uploads/filemanager/Churin.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '6',
              child: _CustomCard(
                  title: 'Churin',
                  image:
                      "https://www.peruenargentina.com.ar/uploads/filemanager/Churin.jpg"),
            ),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '7',
              child: _CustomCard(
                  title: 'Lomas de Lachay',
                  image:
                      "https://www.pasosdeviajero.com/lugares-turisticos/lomas-de-lachay/images/fulls/sendero-lomas-de-lachay.jpg"),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '8',
              child: _CustomCard(
                title: 'El Mirador',
                image:
                    "https://barranca.pe/wp-content/uploads/2019/03/Balnearios-de-Barrancajpg.jpg",
              ),
            ),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '9',
              child: _CustomCard(
                title: 'Parque',
                image:
                    "https://larepublica.pe/resizer/-FT6jCYdIuo9ryJ_mQIAR7D7v9M=/538x0/top/larepublica.pe/resizer/xEzdxHjBH6WkFQrqE22Z97n4lis=/538x0/top/smart/arc-anglerfish-arc2-prod-gruporepublica.s3.amazonaws.com/public/GHUFFME5WNDB3KWB2H2L5YEBUU.png",
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'detalledestino'),
            child: Hero(
              tag: '10',
              child: _CustomCard(
                title: 'Santa Rosa de Quives',
                image:
                    "https://e.rpp-noticias.io/normal/2017/08/30/090109_472680.jpg",
              ),
            ),
          ),
        ])
      ],
    );
  }
}

class _CustomCard extends StatelessWidget {
  final String title;
  final String image;
  const _CustomCard({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 170,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white70),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 55,
                backgroundImage: NetworkImage(image),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.indieFlower(
                  fontSize: 16.5,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
