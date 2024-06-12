// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TvSeriesModelImpl _$$TvSeriesModelImplFromJson(Map<String, dynamic> json) =>
    _$TvSeriesModelImpl(
      id: json['id'] as int,
      netflixSeries: json['netflix_series'] as bool? ?? false,
      cover: json['backdrop_path'] as String,
      poster: json['poster_path'] as String,
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
