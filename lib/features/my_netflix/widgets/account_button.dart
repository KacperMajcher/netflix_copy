import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        //Yeah, it has to be the field expanded to the entire width, just like in the original Netflix app
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/avatars/avatar.png'),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
