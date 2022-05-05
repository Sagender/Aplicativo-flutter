// ignore_for_file: file_names, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';

import '../constants.dart';

class BottonNavItem extends StatelessWidget {
  final String title;
  final Function press;
  final bool isActive;
  const BottonNavItem({
    Key? key,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press; // solución al press
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(title,
              style:
                  TextStyle(color: isActive ? kActiveIconColor : kTextColor)),
        ],
      ),
    );
  }
}
