import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_copy/features/home/pages/home_page.dart';

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
                  netflixLogo(),
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
              signInButton(context),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container netflixLogo() {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(vertical: 70),
      child: const Center(
        child: Image(
          image: AssetImage('assets/logo/netflix_logo.png'),
        ),
      ),
    );
  }

  InkWell signInButton(BuildContext context) {
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

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/backgrounds/background_start.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
