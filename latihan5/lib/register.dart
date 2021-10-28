import 'package:latihan5/main.dart';
import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'package:latihan5/navigation_drawer.dart';

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text("Register", textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
                hintText: 'Username',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                hintText: 'Nama',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.bungalow),
                border: OutlineInputBorder(),
                hintText: 'Alamat',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Checkbox(key: null, onChanged: null, value: true),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Checkbox(key: null, onChanged: null, value: true),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              child: Text("submit")),
        ],
      )),
    );
  }
}
