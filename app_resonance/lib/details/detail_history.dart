import 'package:flutter/material.dart';

class DetailHistory extends StatelessWidget {
  const DetailHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String place =
        ModalRoute.of(context)?.settings.arguments.toString() ??
            "history.place";
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Title(),
                  buttonSection(),
                  customContenido(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Image(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg"),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class customContenido extends StatelessWidget {
  const customContenido({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Text(
        "Magna tempor tempor quis est et nulla eu fugiat commodo nostrud."
        "Dolore excepteur ipsum incididunt velit fugiat culpa aliqua"
        "voluptate. Deserunt sunt sunt ex exercitation laboris veniam est."
        "Magna tempor tempor quis est et nulla eu fugiat commodo nostrud."
        "Dolore excepteur ipsum incididunt velit fugiat culpa aliqua"
        "voluptate. Deserunt sunt sunt ex exercitation laboris veniam est."
        "Magna tempor tempor quis est et nulla eu fugiat commodo nostrud."
        "Dolore excepteur ipsum incididunt velit fugiat culpa aliqua"
        "voluptate. Deserunt sunt sunt ex exercitation laboris veniam est."
        "Magna tempor tempor quis est et nulla eu fugiat commodo nostrud."
        "Dolore excepteur ipsum incididunt velit fugiat culpa aliqua"
        "voluptate. Deserunt sunt sunt ex exercitation laboris veniam est."
        "Magna tempor tempor quis est et nulla eu fugiat commodo nostrud."
        "Dolore excepteur ipsum incididunt velit fugiat culpa aliqua"
        "voluptate. Deserunt sunt sunt ex exercitation laboris veniam est."
        "Magna tempor tempor quis est et nulla eu fugiat commodo nostrud."
        "Dolore excepteur ipsum incididunt velit fugiat culpa aliqua"
        "voluptate. Deserunt sunt sunt ex exercitation laboris veniam est.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
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
          child: const Text(
            "History place",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage("assets/images/no-image.jpg"),
          image: NetworkImage(
              "http://paseosescolares.pe/wp-content/uploads/2015/11/337.jpg"),
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
  const Title({
    Key? key,
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
              Text("Barranco , nuevo point",
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
