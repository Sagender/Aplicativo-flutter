import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OpinionScreen extends StatefulWidget {
  const OpinionScreen({Key? key}) : super(key: key);

  @override
  State<OpinionScreen> createState() => _OpinionScreenState();
}

class _OpinionScreenState extends State<OpinionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Escribir opinión",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Center(
                      child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage(
                        "https://www.tonica.la/__export/1650567919637/sites/debate/img/2022/04/21/tanjiro-kamado-marca.jpg_423682103.jpg"),
                  )),
                  Column(
                    children: [
                      Row(
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Text("Escribir una opinión",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))),
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text("Carga una foto",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700))),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Recomendation(),
                  SizedBox(
                    height: 15,
                  ),
                  Recomendation(),
                  SizedBox(
                    height: 15,
                  ),
                  Recomendation(),
                  SizedBox(
                    height: 15,
                  ),
                  Recomendation(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Recomendation extends StatefulWidget {
  const Recomendation({Key? key}) : super(key: key);

  @override
  State<Recomendation> createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Card(
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: const FadeInImage(
                        placeholder: AssetImage("assets/images/no-image.jpg"),
                        image: NetworkImage(
                            "https://via.placeholder.com/500x300.png"),
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text(
                      "Recomnedación 1",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar(
                        itemSize: 20,
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 4,
                        ratingWidget: RatingWidget(
                            full: const Icon(
                              Icons.star,
                              color: Colors.red,
                              size: 5,
                            ),
                            half: const Icon(
                              Icons.star_half,
                              color: Colors.red,
                              size: 5,
                            ),
                            empty: const Icon(
                              Icons.star_outline,
                              color: Colors.red,
                              size: 5,
                            )),
                        onRatingUpdate: (value) {
                          setState(() {
                            _ratingValue = value;
                          });
                        }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
