import 'package:flutter/material.dart';
import 'package:netflix_copy/features/home/pages/home_page.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
      child: Container(
        height: 55,
        width: 350,
        decoration: ShapeDecoration(
            color: const Color(0xFFF12516),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        child: const Center(
          child: Text(
            'SIGN IN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}