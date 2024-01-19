import 'package:netflix_copy/features/home/data/model/movie_model.dart';

class MoviesMockedDataSource {
  Future<List<MovieModel>> getMovies() async {
    return [
      MovieModel(
        page: 'assets/pages/arcane_page.jpg',
        netflixSeries: true,
        title: 'Arcane',
        description:
            'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.',
      ),
      MovieModel(
        page: 'assets/pages/spiderman_page.jpg',
        netflixSeries: false,
        title: 'Spider-Man',
        description:
            'After getting bitten by a genetically enhanced spider, shy teen Peter Parker develops web-slinging, wall-climbing powers and meets a dangerous new foe.',
      ),
      MovieModel(
        page: 'assets/pages/lucyfer_page.jpg',
        netflixSeries: true,
        title: 'Lucifer',
        description:
            'The bored devil abandons his role as the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins to be accompanied by a detective from the homicide department.',
      ),
    ];
  }
}
