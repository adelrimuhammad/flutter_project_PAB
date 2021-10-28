import 'package:flutter/material.dart';
import 'package:latihan3/main.dart';

class register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text("Nama", textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.devices),
                border: OutlineInputBorder(),
                hintText: 'Devices',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.devices),
                border: OutlineInputBorder(),
                hintText: 'Devices',
              ),
            ),
          )
        ],
      )),
    );
  }
}
