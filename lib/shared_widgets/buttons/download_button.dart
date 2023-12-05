import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/buttons/button_row.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF32302D),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      child: buttonRow(
          'Download C1:E1', Icons.file_download_outlined, Colors.white),
    );
  }
}
