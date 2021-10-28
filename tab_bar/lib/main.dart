// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tab_bar/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Tab Bar"),
                bottom: TabBar(
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.home),
                      text: "Home",
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: "register",
                    ),
                    Tab(
                      icon: Icon(Icons.corporate_fare_outlined),
                      text: "prodi",
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Center(
                      child: Text("Home"),
                    ),
                    Center(
                      child: register(),
                    ),
                    Center(
                      child: Text("S1 Sistem Informasi"),
                    ),
                  ]),
            )));
  }
}
