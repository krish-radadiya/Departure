import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../modules/screen/homescreen/model/jsonmpdel.dart';

class hindi extends StatelessWidget {
  const hindi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "assets/home.jpg",
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
              List<jsonmodel> alldata =
                  mapdata.map((e) => jsonmodel.json(data: e)).toList();
              return ListView.builder(
                itemCount: alldata.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 5,
                      bottom: 5,
                    ),
                    color: Color(0xFFE5D28B),
                    borderOnForeground: false,
                    child: ListTile(
                      // title: Text("${alldata[index].verse}"),
                      subtitle: Center(
                          child: Text(
                        "${alldata[index].hi}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                      // leading: CircleAvatar(
                      //   foregroundImage: NetworkImage(
                      //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxKXlGVsLJrj1ecwfz6N8gmlzma8b1Hhhchx0-31FNig&s",
                      //   ),
                      // ),
                      // trailing: Text("${alldata[index].ch}"),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
