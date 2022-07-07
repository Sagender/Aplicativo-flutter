import 'package:flutter/material.dart';

import '../services/collaborators.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        //backgroundColor: Colors.white,
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text("Alucard",
              style: TextStyle(color: Colors.black, fontSize: 18)),
          accountEmail: const Text("Alucard@gmail.com",
              style: TextStyle(color: Colors.black45, fontSize: 10)),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                "assets/images/jony.jpg",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: const BoxDecoration(
            color: Colors.white70,
            //image: DecorationImage(
            //  image: NetworkImage(
            //      "https://media.gettyimages.com/photos/high-angle-view-of-buildings-in-city-picture-id1131439465?k=20&m=1131439465&s=612x612&w=0&h=QSQOsgJGfuEb1Nox2EiAERDk3BW5fVI5SI-EmLQqzOk="),
            //  fit: BoxFit.cover,
            //),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("Favoritos"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.mobile_friendly),
          title: const Text("Colaboradores"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ColaboratesScreen()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text("Compartir"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.notification_add),
          title: const Text("Notificaciones"),
          onTap: () {},
          trailing: ClipOval(
            child: Container(
              color: Colors.red,
              width: 20,
              height: 20,
              child: const Center(
                child: Text(
                  "10",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Settings"),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text("Exit"),
          onTap: () => {},
        )
      ],
    ));
  }
}
