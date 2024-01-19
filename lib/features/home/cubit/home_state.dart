part of 'home_cubit.dart';

class HomeState {
  const HomeState({
    this.status = Status.initial,
    this.movieModel = const [],
    this.errorMessage,
  });

  final List<MovieModel> movieModel;
  final Status status;
  final String? errorMessage;
}
