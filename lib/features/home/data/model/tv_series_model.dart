import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_copy/features/home/data/entities/api_dto_tv_series.dart';

part 'tv_series_model.g.dart';
part 'tv_series_model.freezed.dart';

@freezed
class TvSeriesModel with _$TvSeriesModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvSeriesModel({
    required int id,
    @Default(false) bool netflixSeries,
    @JsonKey(name: 'backdrop_path') String? cover,
    @JsonKey(name: 'poster_path') String? poster,
    @JsonKey(name: 'original_name') required String title,
    @JsonKey(name: 'first_air_date') required String release,
    required String overview,
  }) = _TvSeriesModel;

  factory TvSeriesModel.fromJson(Map<String, Object?> json) =>
      _$TvSeriesModelFromJson(json);
}

@freezed
class TvSeriesDetailsModel with _$TvSeriesDetailsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvSeriesDetailsModel({
    required int id,
    required String name,
    required int numberOfSeasons,
    @JsonKey(name: 'first_air_date') required String release,
    required bool adult,
    required String overview,
    required List<String> genres,
    required List<String> createdBy,
    required List<TvSeriesSingleSeasonDto> seasons,
  }) = _TvSeriesDetailsModel;

  factory TvSeriesDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TvSeriesDetailsModelFromJson(json);
}
