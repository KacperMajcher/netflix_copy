class MovieModel {
  MovieModel({
    required this.overview,
    // required this.release,
    required this.id,
    required this.cover,
    required this.title,
  });

  final int id;
  final String cover;
  final String title;
  final String overview;
  // final DateTime release;
  final bool netflixSeries = false;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        cover = json['backdrop_path'],
        title = json['original_title'],
        // release = json['release_date'],
        overview = json['overview'];
}
