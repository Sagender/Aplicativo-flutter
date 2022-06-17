class RecommendedModel {
  String? image;

  String? name;

  RecommendedModel(this.name, this.image);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item["name"], item["image"]))
    .toList();

List<RecommendedModel> recommendations1 = recommendationsData1
    .map((item) => RecommendedModel(item["name"], item["image"]))
    .toList();

List<RecommendedModel> recommendations2 = recommendationsData2
    .map((item) => RecommendedModel(item["name"], item["image"]))
    .toList();

List<RecommendedModel> recommendations3 = recommendationsData3
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
var recommendationsData1 = [
  {
    "name": "Barranco, Lima",
    "image":
        "https://elcomercio.pe/resizer/w0ZoTCxdjfjBJTNyFVfLzlD1lBY=/980x0/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/TS2KSF2U7ZB5LHLX6THZJHFTSA.jpg"
  },
  {
    "name": "Barranco, Lima",
    "image": "https://live.staticflickr.com/4415/36699367164_9000f35be8_b.jpg",
  },
  {
    "name": "Barranco, Lima",
    "image":
        "https://munibarranco.gob.pe/wp-content/uploads/2020/05/atractivo-parque-municipal.jpg",
  },
];
var recommendationsData2 = [
  {
    "name": "Catedral de Lima",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/b/be/Bas%C3%ADlica_Catedral_Metropolitana_de_Lima_01.jpg"
  },
  {
    "name": "Catedral de Lima",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Nave_of_Catedral_de_Lima.jpg/550px-Nave_of_Catedral_de_Lima.jpg"
  },
  {
    "name": "Catedral de Lima",
    "image":
        "https://elperuano.pe/fotografia/thumbnail/2021/11/16/000139261M.jpg"
  },
];
var recommendationsData3 = [
  {
    "name": "Larcomar, Lima",
    "image":
        "https://viajandoalima.com/wp-content/uploads/2016/03/Larcomar-Lima.jpg"
  },
  {
    "name": "Larcomar, Lima",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/f/f0/Larcomar-lima.jpg",
  },
  {
    "name": "Larcomar, Lima",
    "image": "https://www.cumbra.com.pe/wp-content/uploads/2021/02/Larcomar.jpg"
  }
];
