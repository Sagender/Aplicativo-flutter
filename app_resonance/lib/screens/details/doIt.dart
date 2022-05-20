// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class DoIt extends StatefulWidget {
  const DoIt({Key? key}) : super(key: key);
  @override
  _DoItState createState() => _DoItState();
}

class _DoItState extends State<DoIt> {
  List<Place> places = getPlaceList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Cosas que hacer",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16, top: 8),
            width: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/img/graffiti2.png"),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[400],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                    right: 24,
                    left: 8,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 26,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 8,
                left: 16,
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: buildPlaces(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildPlaces() {
    List<Widget> list = [];
    for (var place in places) {
      list.add(buildPlace(place));
    }
    return list;
  }

  Widget buildPlace(Place place) {
    return Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(15),
        )),
        child: Hero(
            tag: place.images[0],
            child: Container(
              width: 230,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(place.images[0]),
                fit: BoxFit.cover,
              )),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        place.favorite = !place.favorite;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 12,
                        top: 12,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          place.favorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: mPrimaryColor,
                          size: 36,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                      bottom: 12,
                      right: 12,
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            place.description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                place.country,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
