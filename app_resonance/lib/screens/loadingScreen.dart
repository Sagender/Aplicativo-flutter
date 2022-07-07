import 'package:flutter/material.dart';

import '../details/detail_navBar.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerScreen(),
        appBar: appBar(),
        body: const Center(
            child: CircularProgressIndicator(
          color: Colors.red,
        )));
  }
}

AppBar appBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu, color: Colors.black));
      }));
}
