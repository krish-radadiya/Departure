import 'package:bhagvat_geeta/modules/screen/homescreen/model/jsonmpdel.dart';

import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  Home_page({Key? key}) : super(key: key);

  bool eng = false;
  bool guj = false;
  bool hindi = false;
  bool san = true;

  @override
  Widget build(BuildContext context) {
    Jsonmodel jss = ModalRoute.of(context)!.settings.arguments as Jsonmodel;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 100,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://i.pinimg.com/originals/e8/15/6b/e8156bb35f0c13a259dc280b6e49174a.jpg",
            ),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(
                  50,
                ),
                height: 250,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/e8/15/6b/e8156bb35f0c13a259dc280b6e49174a.jpg",
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '${jss.san}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //   child: Text('${json.san}'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFFEF99D)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('details');
                    },
                    child: const Text(
                      'gujrati',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFFEF99D)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('details');
                    },
                    child: const Text(
                      'english',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFFEF99D)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('details');
                    },
                    child: const Text(
                      'hindi',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              height: 250,
              width: 300,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     fit: BoxFit.cover,
              //     image: NetworkImage(
              //       "https://i.pinimg.com/originals/e8/15/6b/e8156bb35f0c13a259dc280b6e49174a.jpg",
              //     ),
              //   ),
              // ),
              // child: Center(
              //   child: Text(
              //     '${jss.guj}',
              //     style: const TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              //   child: Text('${json.san}'),
            ),
          ],
        ),
      ),
    );
  }
}
