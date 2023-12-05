import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myNetflixButtons(String text, IconData icon, Color iconColor,
    Color backgroundColor, IconData iconType) {
  return Row(
    children: [
      Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor,
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      const SizedBox(width: 7),
      Text(
        text,
        style: GoogleFonts.openSans(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      const Spacer(),
      Icon(
        iconType,
        color: iconColor,
        size: 15,
      ),
    ],
  );
}

class NotificationRow extends StatelessWidget {
  const NotificationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: myNetflixButtons(
          'Notifications',
          Icons.notifications,
          Colors.white,
          const Color(0xFFEF1707),
          Icons.arrow_forward_ios_rounded),
    );
  }
}

class DownloadedRow extends StatelessWidget {
  const DownloadedRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: myNetflixButtons(
          'Downloaded',
          Icons.file_download_outlined,
          Colors.white,
          const Color.fromARGB(255, 2, 115, 207),
          Icons.arrow_forward_ios_rounded),
    );
  }
}
