import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/start/widgets/background_image.dart';
import 'package:netflix_copy/features/start/widgets/sign_in_button.dart';
import 'package:netflix_copy/shared_widgets/logos/netflix_logo.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const BackgroundImage(),
          Column(
            children: [
              Stack(
                children: [
                  const NetflixLogo(),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 330),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Help',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  'Unlimited entertainment, one low price',
                  style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  'Stream and download as much as you want, no extra fees.',
                  style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              const SignInButton(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
