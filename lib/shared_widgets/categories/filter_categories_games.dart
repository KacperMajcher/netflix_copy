import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/outlined_button.dart';

class GamesFilterCategories extends StatelessWidget {
  const GamesFilterCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            OutlinedButtonWidget(
              text: 'Started',
            ),
            OutlinedButtonWidget(
              text: 'Not started',
            ),
          ],
        ),
      ),
    );
  }
}
