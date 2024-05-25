part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<MovieModel> myList,
    @Default([]) List<MovieModel> europeanSeries,
    @Default([]) List<MovieModel> popularNow,
    @Default([]) List<MovieModel> netflixExclusives,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _HomeState;
}
