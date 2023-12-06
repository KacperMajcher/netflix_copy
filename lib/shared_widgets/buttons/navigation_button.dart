import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_netflix/widgets/buttons/my_netflix_buttons.dart';

class NotificationRow extends StatelessWidget {
  const NotificationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const MyNetflixButtons(
          text: 'Notifications',
          icon: Icons.notifications,
          iconColor: Colors.white,
          backgroundColor: Color(0xFFEF1707),
          iconType: Icons.arrow_forward_ios_rounded),
    );
  }
}
