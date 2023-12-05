import 'package:flutter/material.dart';
import 'package:netflix_copy/features/my_netflix/widgets/my_netflix_buttons.dart';

class NotificationRow extends StatelessWidget {
  const NotificationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: myNetflixButtons('Notifications', Icons.notifications,
          Colors.white, Colors.red, Icons.arrow_forward_ios_rounded),
    );
  }
}
