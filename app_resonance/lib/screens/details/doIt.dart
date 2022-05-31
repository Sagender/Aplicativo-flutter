// ignore_for_file: prefer_const_constructors, file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

class Doit extends StatelessWidget {
  const Doit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 400,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/Lima13.jpg",
                height: 400,
                width: 500,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 30,
                top: 60,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.arrow_back_ios,
                      )),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
