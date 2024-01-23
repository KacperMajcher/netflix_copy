import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.g.dart';
part 'movie_model.freezed.dart';

@freezed
class MovieModel with _$MovieModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieModel({
    required int id,
    @Default(false) bool netflixSeries,
    @JsonKey(name: 'backdrop_path') required String cover,
    @JsonKey(name: 'original_title') required String title,
    @JsonKey(name: 'release_date') required String release,
    required String overview,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, Object?> json) =>
      _$MovieModelFromJson(json);
}
