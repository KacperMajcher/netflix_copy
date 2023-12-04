import 'package:flutter/material.dart';
import 'package:netflix_copy/shared_widgets/button_row.dart';

Widget downloadButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF32302D),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    ),
    child:
        buttonRow('Download C1:E1', Icons.file_download_outlined, Colors.white),
  );
}
