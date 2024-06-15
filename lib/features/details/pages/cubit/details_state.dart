part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  factory DetailsState({
    @Default(Status.initial) Status status,
    TvSeriesDetailsModel? details,
    String? errorMessage,
  }) = _DetailsState;
}
