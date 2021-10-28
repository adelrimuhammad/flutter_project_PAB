// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Navigation Bar"),
                bottom: TabBar(
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.home),
                      text: "Home",
                    ),
                    Tab(
                      icon: Icon(Icons.search),
                      text: "Search",
                    ),
                    Tab(
                      icon: Icon(Icons.inbox),
                      text: "Inbox",
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: "Profile",
                    ),
                    Tab(
                      icon: Icon(Icons.add_shopping_cart),
                      text: "Cart",
                    )
                  ],
                ),
              ),
              body: TabBarView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Center(
                      child: Text("Tab 1: Home"),
                    ),
                    Center(
                      child: Text("Tab 2: Search"),
                    ),
                    Center(
                      child: Text("Tab 3: Inbox"),
                    ),
                    Center(
                      child: Text("Tab 4: Profile"),
                    ),
                    Center(
                      child: Text("Tab 5: Belanja"),
                    ),
                  ]),
            )));
  }
}
