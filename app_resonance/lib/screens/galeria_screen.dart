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
                            builder: (context) => DetailsPage(
                              imageNetwork: _images[index].imageNetwork,
                              title: _images[index].title,
                              autor: _images[index].autor,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: FadeInImage(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(_images[index].imageNetwork),
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
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imageNetwork;

  final String autor;
  final String title;
  final String details;
  ImageDetails({
    required this.imageNetwork,
    required this.autor,
    required this.title,
    required this.details,
  });
}

List<ImageDetails> _images = [
  ImageDetails(
    imageNetwork:
        "https://www.rumbosdelperu.com/wp-content/uploads/2021/10/01-Barranco-Lima-Murales-Tiny-Travelogue-2.jpg",
    autor: 'Martin Andres',
    title: 'Barranco',
    details:
        'This image was taken during a party in New York on new years eve. Quite a colorful shot.',
  ),
  ImageDetails(
    imageNetwork:
        "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/7e/39.jpg",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork:
        "https://www.peru.travel/Contenido/Noticia/Imagen/pe/920/1.0/Principal/019657.jpg",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imageNetwork: "https://via.placeholder.com/500x300.png",
    autor: 'Abraham Costa',
    title: 'Chorrillos',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
];
