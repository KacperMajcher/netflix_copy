import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_copy/app/injection_container.dart';
import 'package:netflix_copy/core/enums.dart';
import 'package:netflix_copy/features/details/pages/cubit/details_cubit.dart';
import 'package:netflix_copy/features/details/pages/details_page_content.dart';
import 'package:netflix_copy/shared_widgets/player.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.id,
    required this.cover,
  });

  final int id;
  final String? cover;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailsCubit>()..fetchTvSeriesDetails(id),
      child: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == Status.error) {
            return Center(
              child: Text(
                'Error: ${state.errorMessage}',
              ),
            );
          } else {
            final details = state.details!;

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: 0,
              ),
              backgroundColor: Colors.black,
              body: ListView(
                children: [
                  Player(
                    cover: cover ?? '',
                    borderRadiusValue: 12,
                  ),
                  DetailsPageContent(
                    details: details,
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
