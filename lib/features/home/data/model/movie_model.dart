import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  MovieModel({
    required this.cover,
    required this.title,
    required this.release,
    required this.overview,
    required this.id,
  });

  final int id;
  @JsonKey(name: 'backdrop_path')
  final String cover;
  @JsonKey(name: 'original_title')
  final String title;
  @JsonKey(name: 'release_date')
  final String release;
  @JsonKey(name: 'overview')
  final String overview;
  final bool netflixSeries = false;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
