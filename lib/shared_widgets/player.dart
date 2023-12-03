import 'package:flutter/material.dart';

Widget player() {
    return Container(
      height: 222,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        image: DecorationImage(
          image: AssetImage(
            'assets/pages/lucyfer_page.jpg',
          ),
          fit: BoxFit.fill,
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black, Colors.white],
        ),
      ),
      child: const SizedBox.shrink(),
    );
  }