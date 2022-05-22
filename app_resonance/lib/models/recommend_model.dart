// ignore_for_file: prefer_typing_uninitialized_variables

class RecommendedModel {
  String? image;

  String? name;

  RecommendedModel(this.name, this.image);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item["name"], item["image"]))
    .toList();

var recommendationsData = [
  {
    "name": "Barranco, Lima",
    "image":
        "https://elcomercio.pe/resizer/N6ppZDJ47FtaqmQBtjwhxoHKIvI=/1200x800/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/CK4FRIP7OBDEPB3ZBLWXF43X2E.jpg"
  },
  {
    "name": "Barranco, Lima",
    "image":
        "https://resizer.glanacion.com/resizer/wGjmHsc1pEjWMHKZVubKiCJi3ew=/1920x0/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/PTTJURZ37ZE4BPWGGWN3YJ4RLI.jpg",
  },
  {
    "name": "Barranco, Lima",
    "image":
        "https://viajes.nationalgeographic.com.es/medio/2019/11/06/barranco1_da119b80_1800x1200.jpg",
  },
  {
    "name": "Barranco, Lima",
    "image":
        "https://www.rumbosdelperu.com/wp-content/uploads/2021/10/01-Barranco-Lima-Murales-Tiny-Travelogue-2.jpg",
  },
];
