// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponseDto _$MovieResponseDtoFromJson(Map<String, dynamic> json) {
  return _MovieResponseDto.fromJson(json);
}

/// @nodoc
mixin _$MovieResponseDto {
  int get page => throw _privateConstructorUsedError;
  List<MovieDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseDtoCopyWith<MovieResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseDtoCopyWith<$Res> {
  factory $MovieResponseDtoCopyWith(
          MovieResponseDto value, $Res Function(MovieResponseDto) then) =
      _$MovieResponseDtoCopyWithImpl<$Res, MovieResponseDto>;
  @useResult
  $Res call({int page, List<MovieDto> results});
}

/// @nodoc
class _$MovieResponseDtoCopyWithImpl<$Res, $Val extends MovieResponseDto>
    implements $MovieResponseDtoCopyWith<$Res> {
  _$MovieResponseDtoCopyWithImpl(this._value, this._then);

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
              as List<MovieDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieResponseDtoImplCopyWith<$Res>
    implements $MovieResponseDtoCopyWith<$Res> {
  factory _$$MovieResponseDtoImplCopyWith(_$MovieResponseDtoImpl value,
          $Res Function(_$MovieResponseDtoImpl) then) =
      __$$MovieResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<MovieDto> results});
}

/// @nodoc
class __$$MovieResponseDtoImplCopyWithImpl<$Res>
    extends _$MovieResponseDtoCopyWithImpl<$Res, _$MovieResponseDtoImpl>
    implements _$$MovieResponseDtoImplCopyWith<$Res> {
  __$$MovieResponseDtoImplCopyWithImpl(_$MovieResponseDtoImpl _value,
      $Res Function(_$MovieResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$MovieResponseDtoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResponseDtoImpl implements _MovieResponseDto {
  const _$MovieResponseDtoImpl(
      {required this.page, required final List<MovieDto> results})
      : _results = results;

  factory _$MovieResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResponseDtoImplFromJson(json);

  @override
  final int page;
  final List<MovieDto> _results;
  @override
  List<MovieDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieResponseDto(page: $page, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResponseDtoImpl &&
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
  _$$MovieResponseDtoImplCopyWith<_$MovieResponseDtoImpl> get copyWith =>
      __$$MovieResponseDtoImplCopyWithImpl<_$MovieResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _MovieResponseDto implements MovieResponseDto {
  const factory _MovieResponseDto(
      {required final int page,
      required final List<MovieDto> results}) = _$MovieResponseDtoImpl;

  factory _MovieResponseDto.fromJson(Map<String, dynamic> json) =
      _$MovieResponseDtoImpl.fromJson;

  @override
  int get page;
  @override
  List<MovieDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$MovieResponseDtoImplCopyWith<_$MovieResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
mixin _$MovieDto {
  bool get adult => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  List<int> get genreIds => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get originalLanguage => throw _privateConstructorUsedError;
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res, MovieDto>;
  @useResult
  $Res call(
      {bool adult,
      String? backdropPath,
      List<int> genreIds,
      int id,
      String originalLanguage,
      String originalTitle,
      String overview,
      double popularity,
      String posterPath,
      String releaseDate,
      String title,
      bool video,
      double voteAverage,
      int voteCount});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res, $Val extends MovieDto>
    implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

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
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? video = null,
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
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$MovieDtoImplCopyWith<$Res>
    implements $MovieDtoCopyWith<$Res> {
  factory _$$MovieDtoImplCopyWith(
          _$MovieDtoImpl value, $Res Function(_$MovieDtoImpl) then) =
      __$$MovieDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adult,
      String? backdropPath,
      List<int> genreIds,
      int id,
      String originalLanguage,
      String originalTitle,
      String overview,
      double popularity,
      String posterPath,
      String releaseDate,
      String title,
      bool video,
      double voteAverage,
      int voteCount});
}

/// @nodoc
class __$$MovieDtoImplCopyWithImpl<$Res>
    extends _$MovieDtoCopyWithImpl<$Res, _$MovieDtoImpl>
    implements _$$MovieDtoImplCopyWith<$Res> {
  __$$MovieDtoImplCopyWithImpl(
      _$MovieDtoImpl _value, $Res Function(_$MovieDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$MovieDtoImpl(
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
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$MovieDtoImpl implements _MovieDto {
  _$MovieDtoImpl(
      {required this.adult,
      this.backdropPath,
      required final List<int> genreIds,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount})
      : _genreIds = genreIds;

  factory _$MovieDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDtoImplFromJson(json);

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
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final String releaseDate;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  @override
  String toString() {
    return 'MovieDto(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDtoImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
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
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDtoImplCopyWith<_$MovieDtoImpl> get copyWith =>
      __$$MovieDtoImplCopyWithImpl<_$MovieDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDtoImplToJson(
      this,
    );
  }
}

abstract class _MovieDto implements MovieDto {
  factory _MovieDto(
      {required final bool adult,
      final String? backdropPath,
      required final List<int> genreIds,
      required final int id,
      required final String originalLanguage,
      required final String originalTitle,
      required final String overview,
      required final double popularity,
      required final String posterPath,
      required final String releaseDate,
      required final String title,
      required final bool video,
      required final double voteAverage,
      required final int voteCount}) = _$MovieDtoImpl;

  factory _MovieDto.fromJson(Map<String, dynamic> json) =
      _$MovieDtoImpl.fromJson;

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
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  String get posterPath;
  @override
  String get releaseDate;
  @override
  String get title;
  @override
  bool get video;
  @override
  double get voteAverage;
  @override
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$MovieDtoImplCopyWith<_$MovieDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
