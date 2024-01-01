import 'package:bhagvat_geeta/compontans/english_shlok.dart';
import 'package:bhagvat_geeta/compontans/gujrati_shlok.dart';
import 'package:bhagvat_geeta/compontans/hindi_shlok.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../compontans/sunskrit_shlok.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  List<Widget> tablist = [
    const sunskrit(),
    const gujrati(),
    const english(),
    const hindi(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(
            0xffC1921B,
          ),
          title: const Text(
            "bhagvat geeta",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('sunskrit'),
              ),
              Tab(
                child: Text('gujrati'),
              ),
              Tab(
                child: Text('english'),
              ),
              Tab(
                child: Text('hindi'),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: tablist,
        ),
      ),
    );
  }
}
