import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_netflix/widgets/my_netflix_buttons.dart';

class DownloadedRow extends StatelessWidget {
  const DownloadedRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: myNetflixButtons('Downloaded', Icons.file_download_outlined,
          Colors.white, Colors.blue, Icons.arrow_forward_ios_rounded),
    );
  }
}
