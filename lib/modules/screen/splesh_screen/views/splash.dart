import 'dart:async';

import 'package:flutter/material.dart';

class Splash_screens extends StatelessWidget {
  const Splash_screens({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, "intro");
    });
    return Scaffold(
      backgroundColor: Color(
        0xFFFDFDFD,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/splesh.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'bhagvat gita',
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
