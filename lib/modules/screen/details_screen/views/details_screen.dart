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
                      guj = !guj;
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
                      eng = !eng;

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
                      hindi = !hindi;

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
              child: Center(
                child: Text(
                  '${jss.hi}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //   child: Text('${json.san}'),
            ),
            (eng == true)
                ? Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                            fit: BoxFit.cover,
                            opacity: 0.75)),
                    child: Center(
                      child: Text(
                        jss.en,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                : Container(),
            (hindi == true)
                ? Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                          fit: BoxFit.cover,
                          opacity: 0.75),
                    ),
                    child: Center(
                      child: Text(
                        jss.hi,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                : Container(),
            (guj == true)
                ? Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
                          fit: BoxFit.cover,
                          opacity: 0.75),
                    ),
                    child: Center(
                      child: Text(
                        jss.guj,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
