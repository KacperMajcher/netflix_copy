import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_model.g.dart';
part 'tv_series_model.freezed.dart';

@freezed
class TvSeriesModel with _$TvSeriesModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvSeriesModel({
    required int id,
    @Default(false) bool netflixSeries,
    @JsonKey(name: 'backdrop_path') required String cover,
    @JsonKey(name: 'poster_path') required String poster,
    @JsonKey(name: 'original_name') required String title,
    @JsonKey(name: 'first_air_date') required String release,
    required String overview,
  }) = _TvSeriesModel;

  factory TvSeriesModel.fromJson(Map<String, Object?> json) =>
      _$TvSeriesModelFromJson(json);
}
