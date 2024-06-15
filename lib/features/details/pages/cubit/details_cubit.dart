import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/home/data/model/tv_series_model.dart';
import 'package:netflix_copy/features/home/data/repository/tv_series_repository.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.repository)
      : super(
          DetailsState(status: Status.initial),
        );

  final TvSeriesRepository repository;

  Future<void> fetchTvSeriesDetails(int id) async {
    emit(
      state.copyWith(
        status: Status.loading,
      ),
    );

    try {
      final details = await repository.getTvSeriesDetails(id);
      emit(
        state.copyWith(
          status: Status.success,
          details: details,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
