import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/jsonmpdel.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              "https://i.pinimg.com/originals/e8/15/6b/e8156bb35f0c13a259dc280b6e49174a.jpg",
            ),
          ),
        ),
        child: FutureBuilder(
          future: rootBundle.loadString(
            "data.json",
          ),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else if (snapshot.hasData) {
              var decodeddata = jsonDecode(snapshot.data!);
              List mapdata = decodeddata['alldata'];
              List<Jsonmodel> alldata =
                  mapdata.map((e) => Jsonmodel.json(data: e)).toList();
              return ListView.builder(
                itemCount: alldata.length,
                itemBuilder: (context, e) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed('details', arguments: alldata[e]);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 40,
                        left: 40,
                        top: 5,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgFOGiDkKByslXoV8YjRcergdQetUU7l8XQ9fJNSfwuNnvdsQpNdDG9QqT9wUzqmZEt14&usqp=CAU",
                          ),
                        ),
                      ),
                      // color: Color(
                      //   0xFFF5BD20,
                      // ),
                      child: ListTile(
                        subtitle: Center(
                          child: Text(
                            "${alldata[e].san}",
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
