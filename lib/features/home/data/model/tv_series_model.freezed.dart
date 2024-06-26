// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvSeriesModel _$TvSeriesModelFromJson(Map<String, dynamic> json) {
  return _TvSeriesModel.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesModel {
  int get id => throw _privateConstructorUsedError;
  bool get netflixSeries => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  String get release => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesModelCopyWith<TvSeriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesModelCopyWith<$Res> {
  factory $TvSeriesModelCopyWith(
          TvSeriesModel value, $Res Function(TvSeriesModel) then) =
      _$TvSeriesModelCopyWithImpl<$Res, TvSeriesModel>;
  @useResult
  $Res call(
      {int id,
      bool netflixSeries,
      @JsonKey(name: 'backdrop_path') String cover,
      @JsonKey(name: 'poster_path') String poster,
      @JsonKey(name: 'original_name') String title,
      @JsonKey(name: 'first_air_date') String release,
      String overview});
}

/// @nodoc
class _$TvSeriesModelCopyWithImpl<$Res, $Val extends TvSeriesModel>
    implements $TvSeriesModelCopyWith<$Res> {
  _$TvSeriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? netflixSeries = null,
    Object? cover = null,
    Object? poster = null,
    Object? title = null,
    Object? release = null,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      netflixSeries: null == netflixSeries
          ? _value.netflixSeries
          : netflixSeries // ignore: cast_nullable_to_non_nullable
              as bool,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesModelImplCopyWith<$Res>
    implements $TvSeriesModelCopyWith<$Res> {
  factory _$$TvSeriesModelImplCopyWith(
          _$TvSeriesModelImpl value, $Res Function(_$TvSeriesModelImpl) then) =
      __$$TvSeriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool netflixSeries,
      @JsonKey(name: 'backdrop_path') String cover,
      @JsonKey(name: 'poster_path') String poster,
      @JsonKey(name: 'original_name') String title,
      @JsonKey(name: 'first_air_date') String release,
      String overview});
}

/// @nodoc
class __$$TvSeriesModelImplCopyWithImpl<$Res>
    extends _$TvSeriesModelCopyWithImpl<$Res, _$TvSeriesModelImpl>
    implements _$$TvSeriesModelImplCopyWith<$Res> {
  __$$TvSeriesModelImplCopyWithImpl(
      _$TvSeriesModelImpl _value, $Res Function(_$TvSeriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? netflixSeries = null,
    Object? cover = null,
    Object? poster = null,
    Object? title = null,
    Object? release = null,
    Object? overview = null,
  }) {
    return _then(_$TvSeriesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      netflixSeries: null == netflixSeries
          ? _value.netflixSeries
          : netflixSeries // ignore: cast_nullable_to_non_nullable
              as bool,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvSeriesModelImpl implements _TvSeriesModel {
  const _$TvSeriesModelImpl(
      {required this.id,
      this.netflixSeries = false,
      @JsonKey(name: 'backdrop_path') required this.cover,
      @JsonKey(name: 'poster_path') required this.poster,
      @JsonKey(name: 'original_name') required this.title,
      @JsonKey(name: 'first_air_date') required this.release,
      required this.overview});

  factory _$TvSeriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool netflixSeries;
  @override
  @JsonKey(name: 'backdrop_path')
  final String cover;
  @override
  @JsonKey(name: 'poster_path')
  final String poster;
  @override
  @JsonKey(name: 'original_name')
  final String title;
  @override
  @JsonKey(name: 'first_air_date')
  final String release;
  @override
  final String overview;

  @override
  String toString() {
    return 'TvSeriesModel(id: $id, netflixSeries: $netflixSeries, cover: $cover, poster: $poster, title: $title, release: $release, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.netflixSeries, netflixSeries) ||
                other.netflixSeries == netflixSeries) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, netflixSeries, cover, poster, title, release, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesModelImplCopyWith<_$TvSeriesModelImpl> get copyWith =>
      __$$TvSeriesModelImplCopyWithImpl<_$TvSeriesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesModelImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesModel implements TvSeriesModel {
  const factory _TvSeriesModel(
      {required final int id,
      final bool netflixSeries,
      @JsonKey(name: 'backdrop_path') required final String cover,
      @JsonKey(name: 'poster_path') required final String poster,
      @JsonKey(name: 'original_name') required final String title,
      @JsonKey(name: 'first_air_date') required final String release,
      required final String overview}) = _$TvSeriesModelImpl;

  factory _TvSeriesModel.fromJson(Map<String, dynamic> json) =
      _$TvSeriesModelImpl.fromJson;

  @override
  int get id;
  @override
  bool get netflixSeries;
  @override
  @JsonKey(name: 'backdrop_path')
  String get cover;
  @override
  @JsonKey(name: 'poster_path')
  String get poster;
  @override
  @JsonKey(name: 'original_name')
  String get title;
  @override
  @JsonKey(name: 'first_air_date')
  String get release;
  @override
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesModelImplCopyWith<_$TvSeriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
