import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/outlined_button.dart';

class FilterCategories extends StatelessWidget {
  const FilterCategories({
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
              text: 'Series and programs',
            ),
            OutlinedButtonWidget(
              text: 'Films',
            ),
            OutlinedButtonWidget(
              text: 'Not started',
            ),
            OutlinedButtonWidget(
              text: 'Continue watching',
            ),
          ],
        ),
      ),
    );
  }
}
