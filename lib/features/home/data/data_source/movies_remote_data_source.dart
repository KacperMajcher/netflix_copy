class MoviesMockedDataSource {
  Future<List<Map<String, dynamic>>?> getMovies() async {
    return [
      {
        'page': 'assets/pages/arcane_page.jpg',
        'netflix_series': true,
        'title': 'Arcane',
        'description':
            'Two sisters fight on opposite sides in the war between the cities of Piltover and Zaun, where magical technologies and conflicting beliefs clash.'
      },
      {
        'page': 'assets/pages/spiderman_page.jpg',
        'netflix_series': false,
        'title': 'Spider-Man',
        'description':
            'After getting bitten by a genetically enhanced spider, shy teen Peter Parker develops web-slinging, wall-climbing powers and meets a dangerous new foe.'
      },
      {
        'page': 'assets/pages/lucyfer_page.jpg',
        'netflix_series': true,
        'title': 'Lucifer',
        'description':
            'The bored devil abandons his role as the ruler of hell and moves to Los Angeles, where he opens a nightclub and begins to be accompanied by a detective from the homicide department.'
      }
    ];
  }
}
