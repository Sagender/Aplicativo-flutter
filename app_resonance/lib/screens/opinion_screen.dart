import 'package:flutter/material.dart';

import '../widgets/recomendaciones_card.dart';

class OpinionScreen extends StatelessWidget {
  const OpinionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TitleOpinion(),
            Center(
                child: CircleAvatar(
              maxRadius: 50,
              backgroundImage: NetworkImage(
                  "https://www.tonica.la/__export/1650567919637/sites/debate/img/2022/04/21/tanjiro-kamado-marca.jpg_423682103.jpg"),
            )),
            ButtonOption(),
            const SizedBox(height: 30),
            RecomendationSlider(),
          ],
        ),
      ),
    );
  }
}

class ButtonOption extends StatelessWidget {
  const ButtonOption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: const StadiumBorder(),
              side: BorderSide(color: Colors.black),
              elevation: 0),
          //onPressed: () => displayDialogAndorid(context)
          onPressed: () {},

          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text("Escribir una opinión",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700))),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(color: Colors.black),
              shape: const StadiumBorder(),
              elevation: 0),
          //onPressed: () => displayDialogAndorid(context)
          onPressed: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text("Carga una foto",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700))),
        ),
      ],
    );
  }
}

class TitleOpinion extends StatelessWidget {
  const TitleOpinion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text("Deja tu opinión",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700)),
      ],
    );
  }
}
