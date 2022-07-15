import 'package:flutter/material.dart';

import '../models/boleteria.dart';
import '../widgets/custom_card_type_1.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boletos = ModalRoute.of(context)?.settings.arguments as Boletos;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(boletos: boletos),
          SliverList(
            delegate: SliverChildListDelegate([
              Title(boletos: boletos),
              buttonSection(),
              Contenido(boletos: boletos),
              CustomCardType1(boletos: boletos),
              //SectionImage(boletos: boletos),
            ]),
          ),
        ],
      ),
    );
  }
}

class SectionImage extends StatelessWidget {
  final Boletos boletos;
  const SectionImage({
    Key? key,
    required this.boletos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Image(
        image: NetworkImage(boletos.background),
      ),
    );
  }
}

class Contenido extends StatelessWidget {
  final Boletos boletos;
  const Contenido({
    Key? key,
    required this.boletos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Text(
        boletos.description,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Boletos boletos;

  const _CustomAppBar({Key? key, required this.boletos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.red,
      expandedHeight: 350,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 10),
          color: Colors.black12,
          width: double.infinity,
          child: Text(
            boletos.title,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage("assets/images/no-image.jpg"),
          image: NetworkImage(boletos.image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class buttonSection extends StatelessWidget {
  const buttonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customButton(icon: Icons.call, text: "CALL"),
          customButton(icon: Icons.route, text: "ROUTE"),
          customButton(icon: Icons.share, text: "SHARE")
        ],
      ),
    );
  }
}

class customButton extends StatelessWidget {
  //Argumentos
  final IconData icon;
  final String text;

  const customButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.red),
        SizedBox(
          height: 10,
        ),
        Text(text,
            style: TextStyle(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class Title extends StatelessWidget {
  final Boletos boletos;
  const Title({
    Key? key,
    required this.boletos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(boletos.title,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
              Text("Lima Perú",
                  style: TextStyle(color: Colors.black, fontSize: 10))
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text("41")
        ],
      ),
    );
  }
}
