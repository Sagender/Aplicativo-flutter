import 'package:flutter/material.dart';

import '../details/detail_gallery.dart';

class GalleriaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Galería',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: FadeInImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://gestion.pe/resizer/xC_8FBqpSka8RbHWscb8M1jWN6s=/980x0/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/IM7TEGJQ5JDDFORAQ4SXS35RXI.jpg"),
                              placeholder:
                                  AssetImage("assets/images/no-image.jpg"),
                              height: 250,
                              width: double.maxFinite,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
