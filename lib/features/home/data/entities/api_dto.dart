import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_dto.freezed.dart';
part 'api_dto.g.dart';

@freezed
abstract class MovieResponseDto with _$MovieResponseDto {
  const factory MovieResponseDto({
    required int page,
    required List<MovieDto> results,
  }) = _MovieResponseDto;

  factory MovieResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseDtoFromJson(json);
}

@freezed
abstract class MovieDto with _$MovieDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory MovieDto({
    required bool adult,
    String? backdropPath,
    required List<int> genreIds,
    required int id,
    required String originalLanguage,
    String? originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
