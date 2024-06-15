import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_dto_tv_series.freezed.dart';
part 'api_dto_tv_series.g.dart';

@freezed
abstract class TvSeriesResponseDto with _$TvSeriesResponseDto {
  const factory TvSeriesResponseDto({
    required int page,
    required List<TvSeriesDto> results,
  }) = _TvSeriesResponseDto;

  factory TvSeriesResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesResponseDtoFromJson(json);
}

@freezed
abstract class TvSeriesDto with _$TvSeriesDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvSeriesDto({
    required bool adult,
    String? backdropPath,
    required List<int> genreIds,
    required int id,
    required String originalLanguage,
    required String originalName,
    required String overview,
    required double popularity,
    String? posterPath,
    required String firstAirDate,
    required String name,
    required double voteAverage,
    required int voteCount,
  }) = _TvSeriesDto;

  factory TvSeriesDto.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesDtoFromJson(json);
}

@freezed
class TvSeriesDetailsDto with _$TvSeriesDetailsDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvSeriesDetailsDto({
    required int id,
    required String name,
    required int numberOfSeasons,
    required String firstAirDate,
    required bool adult,
    required String overview,
    @JsonKey(fromJson: _genresFromJson) required List<String> genres,
    @JsonKey(fromJson: _createdByFromJson) required List<String> createdBy,
    required List<TvSeriesSingleSeasonDto> seasons,
  }) = _TvSeriesDetailsDto;

  factory TvSeriesDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesDetailsDtoFromJson(json);
}

List<String> _genresFromJson(List<dynamic> json) =>
    json.map((e) => e['name'] as String).toList();

List<String> _createdByFromJson(List<dynamic> json) =>
    json.map((e) => e['name'] as String).toList();

@freezed
class TvSeriesSingleSeasonDto with _$TvSeriesSingleSeasonDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvSeriesSingleSeasonDto({
    required String airDate,
    required int episodeCount,
    required int seasonNumber,
  }) = _TvSeriesSingleSeasonDto;

  factory TvSeriesSingleSeasonDto.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesSingleSeasonDtoFromJson(json);
}
