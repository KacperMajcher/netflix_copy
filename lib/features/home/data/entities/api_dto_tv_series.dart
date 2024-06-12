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
  factory TvSeriesDto({
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
