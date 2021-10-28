import 'package:latihan5/main.dart';
import 'package:latihan5/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'navigation_drawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text("Kembali"))));
  }
}
