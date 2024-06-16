// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesModelImpl _$$TvSeriesModelImplFromJson(Map<String, dynamic> json) =>
    _$TvSeriesModelImpl(
      id: json['id'] as int,
      netflixSeries: json['netflix_series'] as bool? ?? false,
      cover: json['backdrop_path'] as String?,
      poster: json['poster_path'] as String?,
      title: json['original_name'] as String,
      release: json['first_air_date'] as String,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$TvSeriesModelImplToJson(_$TvSeriesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'netflix_series': instance.netflixSeries,
      'backdrop_path': instance.cover,
      'poster_path': instance.poster,
      'original_name': instance.title,
      'first_air_date': instance.release,
      'overview': instance.overview,
    };

_$TvSeriesDetailsModelImpl _$$TvSeriesDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TvSeriesDetailsModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      numberOfSeasons: json['number_of_seasons'] as int,
      release: json['first_air_date'] as String,
      adult: json['adult'] as bool,
      overview: json['overview'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      createdBy: (json['created_by'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      seasons: (json['seasons'] as List<dynamic>)
          .map((e) =>
              TvSeriesSingleSeasonDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TvSeriesDetailsModelImplToJson(
        _$TvSeriesDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number_of_seasons': instance.numberOfSeasons,
      'first_air_date': instance.release,
      'adult': instance.adult,
      'overview': instance.overview,
      'genres': instance.genres,
      'created_by': instance.createdBy,
      'seasons': instance.seasons,
    };
