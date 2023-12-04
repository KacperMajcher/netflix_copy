
  import 'package:flutter/material.dart';

Widget smallLogo() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/logo/small_netflix_logo.png'),
        ),
      ),
      width: 40,
      height: 40,
    );
  }