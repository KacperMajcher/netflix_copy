import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_netflix/widgets/buttons/my_netflix_buttons.dart';

class DownloadedRow extends StatelessWidget {
  const DownloadedRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const MyNetflixButtons(
          text: 'Downloaded',
          icon: Icons.file_download_outlined,
          iconColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 2, 115, 207),
          iconType: Icons.arrow_forward_ios_rounded),
    );
  }
}
