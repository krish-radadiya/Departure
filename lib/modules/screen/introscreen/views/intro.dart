import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro_screen extends StatelessWidget {
  Intro_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Bhagavad Gita - Simplified",
              body: "Read the Gita anytime, where ever you wish",
              image: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/Group 7.png",
                    ),
                  ),
                ),
              ),
            ),
            PageViewModel(
              title: "Multi Language",
              body:
                  "It build in two languages Hindi, English with best and easy translation ",
              image: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/Group 6.png",
                    ),
                  ),
                ),
              ),
            ),
            PageViewModel(
              title: "Audio Book",
              image: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/Group 5.png",
                    ),
                  ),
                ),
              ),
              body:
                  "You can listen the book in Hindi, English while doing your work",
            ),
            PageViewModel(
              title: "Let’s Start",
              body: "Start app and enjoy it",
              image: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    //void main void main void main void main void maic
                    image: AssetImage(
                      "assets/Group 8.png",
                    ),
                  ),
                ),
              ),
            ),
          ],
          done: Text(
            "done",
            style: GoogleFonts.abrilFatface(
              color: Colors.black,
            ),
            // style: TextStyle(
            //   color: Colors.black,
            // ),
          ),
          onDone: () async {
            SharedPreferences preferences =
                await SharedPreferences.getInstance();
            preferences.setBool('IsIntroVisited', true);
            Navigator.pushReplacementNamed(
              context,
              "home",
            );
          },
          next: const Text(
            "next",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          showNextButton: true,
          skip: const Text(
            "skip",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onSkip: () {
            Navigator.pushReplacementNamed(
              context,
              "homescreen",
            );
          },
          showSkipButton: true,
        ),
      ),
    );
  }
}
