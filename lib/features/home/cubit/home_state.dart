part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<TvSeriesModel> myList,
    @Default([]) List<TvSeriesModel> europeanSeries,
    @Default([]) List<MovieModel> popularNow,
    @Default([]) List<TvSeriesModel> netflixExclusives,
    @Default([]) List<MovieModel> continueWatching,
    @Default([]) List<MovieModel> recentlyWatched,
    @Default([]) List<MovieModel> likedMovies,
    @Default(Status.initial) Status status,
    String? errorMessage,
    String? randomCover,
  }) = _HomeState;
}
