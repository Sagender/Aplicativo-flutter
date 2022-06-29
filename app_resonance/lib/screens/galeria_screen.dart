import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/custom_card_type1.dart';
import '../widgets/custom_card_type2.dart';
import '../widgets/custom_card_type3.dart';

class GaleriaScreen extends StatefulWidget {
  const GaleriaScreen({Key? key}) : super(key: key);

  @override
  State<GaleriaScreen> createState() => _GaleriaScreenState();
}

class _GaleriaScreenState extends State<GaleriaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Galeria",
            style: TextStyle(color: Colors.black, fontSize: 25)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined, color: Colors.black87))
        ],
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: const [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: CustomCardType2(
                imageUrl:
                    "https://viajes.nationalgeographic.com.es/medio/2019/11/06/barranco2_0dcce855_1200x630.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: CustomCardType1(
                imageUrl:
                    "https://viajes.nationalgeographic.com.es/medio/2019/11/06/barranco2_0dcce855_1200x630.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl:
                    "https://a.travel-assets.com/findyours-php/viewfinder/images/res40/90000/90220-Barranco.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: CustomCardType2(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl:
                    "https://a.travel-assets.com/findyours-php/viewfinder/images/res40/90000/90220-Barranco.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl:
                    "https://a.travel-assets.com/findyours-php/viewfinder/images/res40/90000/90220-Barranco.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl:
                    "https://a.travel-assets.com/findyours-php/viewfinder/images/res40/90000/90220-Barranco.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl:
                    "https://thumbs.dreamstime.com/z/distrito-de-barranco-lima-peru-el-barrio-es-considerado-como-m%C3%A1s-rom%C3%A1ntico-y-bohemio-la-ciudad-hogar-lugar-trabajo-muchos-los-183048518.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType1(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl:
                    "https://thumbs.dreamstime.com/z/distrito-de-barranco-lima-peru-el-barrio-es-considerado-como-m%C3%A1s-rom%C3%A1ntico-y-bohemio-la-ciudad-hogar-lugar-trabajo-muchos-los-183048518.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: CustomCardType2(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType1(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: CustomCardType1(
                imageUrl:
                    "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/w_1120,h_725/v1625762991/Barranco-Best-Things-To-Do-Bajada-Banos/Barranco-Best-Things-To-Do-Bajada-Banos.jpg",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: CustomCardType2(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: CustomCardType3(
                imageUrl: "https://via.placeholder.com/500x300.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
