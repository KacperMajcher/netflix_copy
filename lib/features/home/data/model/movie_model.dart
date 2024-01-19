class MovieModel {
  MovieModel({
    required this.page,
    required this.title,
    required this.description,
    required this.netflixSeries,
  });

  final String page;
  final String title;
  final String description;
  final bool netflixSeries;

  MovieModel.fromJson(Map<String, dynamic> json)
      : page = json['page'],
        title = json['title'],
        description = json['description'],
        netflixSeries = json['netflix_series'];
}
