// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, duplicate_ignore

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:appcarrusel/screens/widgets/background_destino.dart';

class DestinoScreen extends StatelessWidget {
  const DestinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _Body()],
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
        children: [_TableTitle(), _CustomTable()],
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
            onTap: () => Navigator.pushNamed(context, 'detallegradiente'),
            child: Hero(
              tag: 'aries',
              child: _CustomCard1(
                signo: 'Parque de las Aguas',
              ),
            ),
          ),
          _CustomCard2(signo: 'Plaza de Armas'),
        ]),
        TableRow(children: [
          _CustomCard3(signo: 'Caral'),
          _CustomCard4(signo: 'Catarata de la Novia'),
        ]),
        TableRow(children: [
          _CustomCard5(signo: 'Castillo de Chancay'),
          _CustomCard6(signo: 'Churin'),
        ]),
        TableRow(children: [
          _CustomCard7(signo: 'Lomas de Lachay'),
          _CustomCard8(signo: 'El Mirador'),
        ]),
        TableRow(children: [
          _CustomCard9(signo: 'Parque'),
          _CustomCard10(signo: 'Santa Rosa DE Quives'),
        ])
      ],
    );
  }
}

class _CustomCard1 extends StatelessWidget {
  final String signo;
  const _CustomCard1({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://elcomercio.pe/resizer/U1kW-7m-EKja9pw3ZFtNpZ89InM=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/II7LIHJYTVB5VHYABREBVGSPEI.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard2 extends StatelessWidget {
  final String signo;
  const _CustomCard2({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://dc3.com.pe/wp-content/uploads/2021/01/DC3-Plaza-mayor-de-Lima-01.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard3 extends StatelessWidget {
  final String signo;
  const _CustomCard3({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://static.dw.com/image/45113007_401.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard4 extends StatelessWidget {
  final String signo;
  const _CustomCard4({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://turismoalperu.com/wp-content/uploads/2020/09/cascada-la-novia-en-cajamarca.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard5 extends StatelessWidget {
  final String signo;
  const _CustomCard5({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://turismoi.pe/uploads/photo/version2/photo_file/49350/optimized_2431-1.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard6 extends StatelessWidget {
  final String signo;
  const _CustomCard6({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://www.peruenargentina.com.ar/uploads/filemanager/Churin.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard7 extends StatelessWidget {
  final String signo;
  const _CustomCard7({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://www.pasosdeviajero.com/lugares-turisticos/lomas-de-lachay/images/fulls/sendero-lomas-de-lachay.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard8 extends StatelessWidget {
  final String signo;
  const _CustomCard8({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://barranca.pe/wp-content/uploads/2019/03/Balnearios-de-Barrancajpg.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard9 extends StatelessWidget {
  final String signo;
  const _CustomCard9({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://larepublica.pe/resizer/-FT6jCYdIuo9ryJ_mQIAR7D7v9M=/538x0/top/larepublica.pe/resizer/xEzdxHjBH6WkFQrqE22Z97n4lis=/538x0/top/smart/arc-anglerfish-arc2-prod-gruporepublica.s3.amazonaws.com/public/GHUFFME5WNDB3KWB2H2L5YEBUU.png'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _CustomCard10 extends StatelessWidget {
  final String signo;
  const _CustomCard10({
    Key? key,
    required this.signo,
  }) : super(key: key);

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
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(50, 50, 50, 0.5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                //esto es para agrandar el radius
                radius: 50,

                backgroundImage: NetworkImage(
                    'https://e.rpp-noticias.io/normal/2017/08/30/090109_472680.jpg'),
                child: ClipOval(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                signo,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class _TableTitle extends StatelessWidget {
  const _TableTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF101010));
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 30),
        Text(
          'Destinos turisticos de Lima',
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ]),
    );
  }
}
