import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../models/recomendation_model.dart';
import '../services/places_services.dart';

class RecomendationSlider extends StatefulWidget {
  const RecomendationSlider({Key? key}) : super(key: key);

  @override
  RecomendationSliderState createState() => RecomendationSliderState();
}

class RecomendationSliderState extends State<RecomendationSlider> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final placeService = Provider.of<PlaceService>(context);
    //Argumento para llamar a la Api

    return Container(
        padding: EdgeInsets.symmetric(vertical: 0),
        width: double.infinity,
        height: 390,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.vertical, //Dirección del Scroll
                itemCount: placeService.recomendation.length,
                itemBuilder: (_, int index) => RecomendationCard(
                  recomendation: placeService.recomendation[index],
                ),
              ),
            ),
          ],
        ));
  }
}

class RecomendationCard extends StatelessWidget {
  final Recomendation recomendation;
  const RecomendationCard({Key? key, required this.recomendation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FadeInImage(
                            placeholder:
                                AssetImage("assets/images/no-image.jpg"),
                            image: NetworkImage(recomendation.picture),
                            width: 180,
                            height: 150,
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          recomendation.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Rating()
                      ],
                    ),
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

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    double? _ratingValue;
    return RatingBar(
        itemSize: 20,
        initialRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
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
            print(value);
            _ratingValue = value;
          });
        });
  }
}
