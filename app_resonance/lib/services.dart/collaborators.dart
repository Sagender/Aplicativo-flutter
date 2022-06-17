import 'package:appcarrusel/models/colaboradores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white10,
            elevation: 0,
            title: Text(
              'Nuestros colaboradores',
              style: GoogleFonts.indieFlower(
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
          title: Text('${usuario.firstName} - ${usuario.email}'),
          trailing: Image.network(usuario.avatar),
        );
      },
    );
  }
}
