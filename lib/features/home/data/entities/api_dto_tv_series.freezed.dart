// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_dto_tv_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvSeriesResponseDto _$TvSeriesResponseDtoFromJson(Map<String, dynamic> json) {
  return _TvSeriesResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesResponseDto {
  int get page => throw _privateConstructorUsedError;
  List<TvSeriesDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesResponseDtoCopyWith<TvSeriesResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesResponseDtoCopyWith<$Res> {
  factory $TvSeriesResponseDtoCopyWith(
          TvSeriesResponseDto value, $Res Function(TvSeriesResponseDto) then) =
      _$TvSeriesResponseDtoCopyWithImpl<$Res, TvSeriesResponseDto>;
  @useResult
  $Res call({int page, List<TvSeriesDto> results});
}

/// @nodoc
class _$TvSeriesResponseDtoCopyWithImpl<$Res, $Val extends TvSeriesResponseDto>
    implements $TvSeriesResponseDtoCopyWith<$Res> {
  _$TvSeriesResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesResponseDtoImplCopyWith<$Res>
    implements $TvSeriesResponseDtoCopyWith<$Res> {
  factory _$$TvSeriesResponseDtoImplCopyWith(_$TvSeriesResponseDtoImpl value,
          $Res Function(_$TvSeriesResponseDtoImpl) then) =
      __$$TvSeriesResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<TvSeriesDto> results});
}

/// @nodoc
class __$$TvSeriesResponseDtoImplCopyWithImpl<$Res>
    extends _$TvSeriesResponseDtoCopyWithImpl<$Res, _$TvSeriesResponseDtoImpl>
    implements _$$TvSeriesResponseDtoImplCopyWith<$Res> {
  __$$TvSeriesResponseDtoImplCopyWithImpl(_$TvSeriesResponseDtoImpl _value,
      $Res Function(_$TvSeriesResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$TvSeriesResponseDtoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TvSeriesResponseDtoImpl implements _TvSeriesResponseDto {
  const _$TvSeriesResponseDtoImpl(
      {required this.page, required final List<TvSeriesDto> results})
      : _results = results;

  factory _$TvSeriesResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesResponseDtoImplFromJson(json);

  @override
  final int page;
  final List<TvSeriesDto> _results;
  @override
  List<TvSeriesDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TvSeriesResponseDto(page: $page, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesResponseDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesResponseDtoImplCopyWith<_$TvSeriesResponseDtoImpl> get copyWith =>
      __$$TvSeriesResponseDtoImplCopyWithImpl<_$TvSeriesResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesResponseDto implements TvSeriesResponseDto {
  const factory _TvSeriesResponseDto(
      {required final int page,
      required final List<TvSeriesDto> results}) = _$TvSeriesResponseDtoImpl;

  factory _TvSeriesResponseDto.fromJson(Map<String, dynamic> json) =
      _$TvSeriesResponseDtoImpl.fromJson;

  @override
  int get page;
  @override
  List<TvSeriesDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesResponseDtoImplCopyWith<_$TvSeriesResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvSeriesDto _$TvSeriesDtoFromJson(Map<String, dynamic> json) {
  return _TvSeriesDto.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesDto {
  bool get adult => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  List<int> get genreIds => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;
  String get originalName => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  String get firstAirDate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesDtoCopyWith<TvSeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesDtoCopyWith<$Res> {
  factory $TvSeriesDtoCopyWith(
          TvSeriesDto value, $Res Function(TvSeriesDto) then) =
      _$TvSeriesDtoCopyWithImpl<$Res, TvSeriesDto>;
  @useResult
  $Res call(
      {bool adult,
      String? backdropPath,
      List<int> genreIds,
      int id,
      String originalLanguage,
      String originalName,
      String overview,
      double popularity,
      String? posterPath,
      String firstAirDate,
      String name,
      double voteAverage,
      int voteCount});
}

/// @nodoc
class _$TvSeriesDtoCopyWithImpl<$Res, $Val extends TvSeriesDto>
    implements $TvSeriesDtoCopyWith<$Res> {
  _$TvSeriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalName = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? firstAirDate = null,
    Object? name = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesDtoImplCopyWith<$Res>
    implements $TvSeriesDtoCopyWith<$Res> {
  factory _$$TvSeriesDtoImplCopyWith(
          _$TvSeriesDtoImpl value, $Res Function(_$TvSeriesDtoImpl) then) =
      __$$TvSeriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      String? backdropPath,
      List<int> genreIds,
      int id,
      String originalLanguage,
      String originalName,
      String overview,
      double popularity,
      String? posterPath,
      String firstAirDate,
      String name,
      double voteAverage,
      int voteCount});
}

/// @nodoc
class __$$TvSeriesDtoImplCopyWithImpl<$Res>
    extends _$TvSeriesDtoCopyWithImpl<$Res, _$TvSeriesDtoImpl>
    implements _$$TvSeriesDtoImplCopyWith<$Res> {
  __$$TvSeriesDtoImplCopyWithImpl(
      _$TvSeriesDtoImpl _value, $Res Function(_$TvSeriesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalName = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? firstAirDate = null,
    Object? name = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$TvSeriesDtoImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvSeriesDtoImpl implements _TvSeriesDto {
  const _$TvSeriesDtoImpl(
      {required this.adult,
      this.backdropPath,
      required final List<int> genreIds,
      required this.id,
      required this.originalLanguage,
      required this.originalName,
      required this.overview,
      required this.popularity,
      this.posterPath,
      required this.firstAirDate,
      required this.name,
      required this.voteAverage,
      required this.voteCount})
      : _genreIds = genreIds;

  factory _$TvSeriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesDtoImplFromJson(json);

  @override
  final bool adult;
  @override
  final String? backdropPath;
  final List<int> _genreIds;
  @override
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  final int id;
  @override
  final String originalLanguage;
  @override
  final String originalName;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String? posterPath;
  @override
  final String firstAirDate;
  @override
  final String name;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  @override
  String toString() {
    return 'TvSeriesDto(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalName: $originalName, overview: $overview, popularity: $popularity, posterPath: $posterPath, firstAirDate: $firstAirDate, name: $name, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesDtoImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalName,
      overview,
      popularity,
      posterPath,
      firstAirDate,
      name,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesDtoImplCopyWith<_$TvSeriesDtoImpl> get copyWith =>
      __$$TvSeriesDtoImplCopyWithImpl<_$TvSeriesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesDtoImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesDto implements TvSeriesDto {
  const factory _TvSeriesDto(
      {required final bool adult,
      final String? backdropPath,
      required final List<int> genreIds,
      required final int id,
      required final String originalLanguage,
      required final String originalName,
      required final String overview,
      required final double popularity,
      final String? posterPath,
      required final String firstAirDate,
      required final String name,
      required final double voteAverage,
      required final int voteCount}) = _$TvSeriesDtoImpl;

  factory _TvSeriesDto.fromJson(Map<String, dynamic> json) =
      _$TvSeriesDtoImpl.fromJson;

  @override
  bool get adult;
  @override
  String? get backdropPath;
  @override
  List<int> get genreIds;
  @override
  int get id;
  @override
  String get originalLanguage;
  @override
  String get originalName;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  String? get posterPath;
  @override
  String get firstAirDate;
  @override
  String get name;
  @override
  double get voteAverage;
  @override
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesDtoImplCopyWith<_$TvSeriesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvSeriesDetailsDto _$TvSeriesDetailsDtoFromJson(Map<String, dynamic> json) {
  return _TvSeriesDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesDetailsDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get numberOfSeasons => throw _privateConstructorUsedError;
  String get firstAirDate => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _genresFromJson)
  List<String> get genres => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _createdByFromJson)
  List<String> get createdBy => throw _privateConstructorUsedError;
  List<TvSeriesSingleSeasonDto> get seasons =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesDetailsDtoCopyWith<TvSeriesDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesDetailsDtoCopyWith<$Res> {
  factory $TvSeriesDetailsDtoCopyWith(
          TvSeriesDetailsDto value, $Res Function(TvSeriesDetailsDto) then) =
      _$TvSeriesDetailsDtoCopyWithImpl<$Res, TvSeriesDetailsDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      int numberOfSeasons,
      String firstAirDate,
      bool adult,
      String overview,
      @JsonKey(fromJson: _genresFromJson) List<String> genres,
      @JsonKey(fromJson: _createdByFromJson) List<String> createdBy,
      List<TvSeriesSingleSeasonDto> seasons});
}

/// @nodoc
class _$TvSeriesDetailsDtoCopyWithImpl<$Res, $Val extends TvSeriesDetailsDto>
    implements $TvSeriesDetailsDtoCopyWith<$Res> {
  _$TvSeriesDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? numberOfSeasons = null,
    Object? firstAirDate = null,
    Object? adult = null,
    Object? overview = null,
    Object? genres = null,
    Object? createdBy = null,
    Object? seasons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSeasons: null == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesSingleSeasonDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesDetailsDtoImplCopyWith<$Res>
    implements $TvSeriesDetailsDtoCopyWith<$Res> {
  factory _$$TvSeriesDetailsDtoImplCopyWith(_$TvSeriesDetailsDtoImpl value,
          $Res Function(_$TvSeriesDetailsDtoImpl) then) =
      __$$TvSeriesDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int numberOfSeasons,
      String firstAirDate,
      bool adult,
      String overview,
      @JsonKey(fromJson: _genresFromJson) List<String> genres,
      @JsonKey(fromJson: _createdByFromJson) List<String> createdBy,
      List<TvSeriesSingleSeasonDto> seasons});
}

/// @nodoc
class __$$TvSeriesDetailsDtoImplCopyWithImpl<$Res>
    extends _$TvSeriesDetailsDtoCopyWithImpl<$Res, _$TvSeriesDetailsDtoImpl>
    implements _$$TvSeriesDetailsDtoImplCopyWith<$Res> {
  __$$TvSeriesDetailsDtoImplCopyWithImpl(_$TvSeriesDetailsDtoImpl _value,
      $Res Function(_$TvSeriesDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? numberOfSeasons = null,
    Object? firstAirDate = null,
    Object? adult = null,
    Object? overview = null,
    Object? genres = null,
    Object? createdBy = null,
    Object? seasons = null,
  }) {
    return _then(_$TvSeriesDetailsDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfSeasons: null == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int,
      firstAirDate: null == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdBy: null == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      seasons: null == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<TvSeriesSingleSeasonDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvSeriesDetailsDtoImpl implements _TvSeriesDetailsDto {
  const _$TvSeriesDetailsDtoImpl(
      {required this.id,
      required this.name,
      required this.numberOfSeasons,
      required this.firstAirDate,
      required this.adult,
      required this.overview,
      @JsonKey(fromJson: _genresFromJson) required final List<String> genres,
      @JsonKey(fromJson: _createdByFromJson)
      required final List<String> createdBy,
      required final List<TvSeriesSingleSeasonDto> seasons})
      : _genres = genres,
        _createdBy = createdBy,
        _seasons = seasons;

  factory _$TvSeriesDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesDetailsDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int numberOfSeasons;
  @override
  final String firstAirDate;
  @override
  final bool adult;
  @override
  final String overview;
  final List<String> _genres;
  @override
  @JsonKey(fromJson: _genresFromJson)
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<String> _createdBy;
  @override
  @JsonKey(fromJson: _createdByFromJson)
  List<String> get createdBy {
    if (_createdBy is EqualUnmodifiableListView) return _createdBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createdBy);
  }

  final List<TvSeriesSingleSeasonDto> _seasons;
  @override
  List<TvSeriesSingleSeasonDto> get seasons {
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasons);
  }

  @override
  String toString() {
    return 'TvSeriesDetailsDto(id: $id, name: $name, numberOfSeasons: $numberOfSeasons, firstAirDate: $firstAirDate, adult: $adult, overview: $overview, genres: $genres, createdBy: $createdBy, seasons: $seasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesDetailsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._createdBy, _createdBy) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      numberOfSeasons,
      firstAirDate,
      adult,
      overview,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_createdBy),
      const DeepCollectionEquality().hash(_seasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesDetailsDtoImplCopyWith<_$TvSeriesDetailsDtoImpl> get copyWith =>
      __$$TvSeriesDetailsDtoImplCopyWithImpl<_$TvSeriesDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesDetailsDto implements TvSeriesDetailsDto {
  const factory _TvSeriesDetailsDto(
      {required final int id,
      required final String name,
      required final int numberOfSeasons,
      required final String firstAirDate,
      required final bool adult,
      required final String overview,
      @JsonKey(fromJson: _genresFromJson) required final List<String> genres,
      @JsonKey(fromJson: _createdByFromJson)
      required final List<String> createdBy,
      required final List<TvSeriesSingleSeasonDto>
          seasons}) = _$TvSeriesDetailsDtoImpl;

  factory _TvSeriesDetailsDto.fromJson(Map<String, dynamic> json) =
      _$TvSeriesDetailsDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get numberOfSeasons;
  @override
  String get firstAirDate;
  @override
  bool get adult;
  @override
  String get overview;
  @override
  @JsonKey(fromJson: _genresFromJson)
  List<String> get genres;
  @override
  @JsonKey(fromJson: _createdByFromJson)
  List<String> get createdBy;
  @override
  List<TvSeriesSingleSeasonDto> get seasons;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesDetailsDtoImplCopyWith<_$TvSeriesDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvSeriesSingleSeasonDto _$TvSeriesSingleSeasonDtoFromJson(
    Map<String, dynamic> json) {
  return _TvSeriesSingleSeasonDto.fromJson(json);
}

/// @nodoc
mixin _$TvSeriesSingleSeasonDto {
  String get airDate => throw _privateConstructorUsedError;
  int get episodeCount => throw _privateConstructorUsedError;
  int get seasonNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvSeriesSingleSeasonDtoCopyWith<TvSeriesSingleSeasonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvSeriesSingleSeasonDtoCopyWith<$Res> {
  factory $TvSeriesSingleSeasonDtoCopyWith(TvSeriesSingleSeasonDto value,
          $Res Function(TvSeriesSingleSeasonDto) then) =
      _$TvSeriesSingleSeasonDtoCopyWithImpl<$Res, TvSeriesSingleSeasonDto>;
  @useResult
  $Res call({String airDate, int episodeCount, int seasonNumber});
}

/// @nodoc
class _$TvSeriesSingleSeasonDtoCopyWithImpl<$Res,
        $Val extends TvSeriesSingleSeasonDto>
    implements $TvSeriesSingleSeasonDtoCopyWith<$Res> {
  _$TvSeriesSingleSeasonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airDate = null,
    Object? episodeCount = null,
    Object? seasonNumber = null,
  }) {
    return _then(_value.copyWith(
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episodeCount: null == episodeCount
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int,
      seasonNumber: null == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TvSeriesSingleSeasonDtoImplCopyWith<$Res>
    implements $TvSeriesSingleSeasonDtoCopyWith<$Res> {
  factory _$$TvSeriesSingleSeasonDtoImplCopyWith(
          _$TvSeriesSingleSeasonDtoImpl value,
          $Res Function(_$TvSeriesSingleSeasonDtoImpl) then) =
      __$$TvSeriesSingleSeasonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String airDate, int episodeCount, int seasonNumber});
}

/// @nodoc
class __$$TvSeriesSingleSeasonDtoImplCopyWithImpl<$Res>
    extends _$TvSeriesSingleSeasonDtoCopyWithImpl<$Res,
        _$TvSeriesSingleSeasonDtoImpl>
    implements _$$TvSeriesSingleSeasonDtoImplCopyWith<$Res> {
  __$$TvSeriesSingleSeasonDtoImplCopyWithImpl(
      _$TvSeriesSingleSeasonDtoImpl _value,
      $Res Function(_$TvSeriesSingleSeasonDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airDate = null,
    Object? episodeCount = null,
    Object? seasonNumber = null,
  }) {
    return _then(_$TvSeriesSingleSeasonDtoImpl(
      airDate: null == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String,
      episodeCount: null == episodeCount
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int,
      seasonNumber: null == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TvSeriesSingleSeasonDtoImpl implements _TvSeriesSingleSeasonDto {
  const _$TvSeriesSingleSeasonDtoImpl(
      {required this.airDate,
      required this.episodeCount,
      required this.seasonNumber});

  factory _$TvSeriesSingleSeasonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TvSeriesSingleSeasonDtoImplFromJson(json);

  @override
  final String airDate;
  @override
  final int episodeCount;
  @override
  final int seasonNumber;

  @override
  String toString() {
    return 'TvSeriesSingleSeasonDto(airDate: $airDate, episodeCount: $episodeCount, seasonNumber: $seasonNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TvSeriesSingleSeasonDtoImpl &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episodeCount, episodeCount) ||
                other.episodeCount == episodeCount) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, airDate, episodeCount, seasonNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TvSeriesSingleSeasonDtoImplCopyWith<_$TvSeriesSingleSeasonDtoImpl>
      get copyWith => __$$TvSeriesSingleSeasonDtoImplCopyWithImpl<
          _$TvSeriesSingleSeasonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TvSeriesSingleSeasonDtoImplToJson(
      this,
    );
  }
}

abstract class _TvSeriesSingleSeasonDto implements TvSeriesSingleSeasonDto {
  const factory _TvSeriesSingleSeasonDto(
      {required final String airDate,
      required final int episodeCount,
      required final int seasonNumber}) = _$TvSeriesSingleSeasonDtoImpl;

  factory _TvSeriesSingleSeasonDto.fromJson(Map<String, dynamic> json) =
      _$TvSeriesSingleSeasonDtoImpl.fromJson;

  @override
  String get airDate;
  @override
  int get episodeCount;
  @override
  int get seasonNumber;
  @override
  @JsonKey(ignore: true)
  _$$TvSeriesSingleSeasonDtoImplCopyWith<_$TvSeriesSingleSeasonDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
