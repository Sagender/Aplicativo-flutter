import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../models/colaboradores.dart';

Future<TestApi> getUsuarios() async {
  var url = Uri.https('reqres.in', '/api/users');
  // var url = Uri.https('62abfa10bd0e5d29af187068.mockapi.io', '/prueba/api/v1/empleados');
  final response = await http.get(url);
  // String stringValue = response.toString();
  // stringValue = stringValue.replaceAll("[", "").replaceAll("]", "");
  // print(json.decode(response.body));
  return testApiFromJson(response.body);
}

class ColaboratesScreen extends StatelessWidget {
  const ColaboratesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white10,
            elevation: 0,
            title: const Text(
              'Nuestros colaboradores',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.6,
                  fontWeight: FontWeight.w700),
            )),
        body: FutureBuilder(
            future: getUsuarios(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else {
                return _ListaUusarios(snapshot.data.data);
              }
            }));
  }
}

class _ListaUusarios extends StatelessWidget {
  final List<Datum> usuarios;

  _ListaUusarios(this.usuarios);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (BuildContext context, int i) {
        final usuario = usuarios[i];
        return ListTile(
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${usuario.firstName}',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.6,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  '${usuario.email}',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 8.6,
                      fontWeight: FontWeight.w700),
                ),
                Divider()
              ],
            ),
          ),
          trailing: CircleAvatar(
              child: ClipOval(
            child: Image.network(
              usuario.avatar,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          )),
        );
      },
    );
  }
}
