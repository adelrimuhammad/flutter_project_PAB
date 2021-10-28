import 'package:flutter/material.dart';
import 'package:latihan3/main.dart';

class reset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: ListView(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: new InputDecoration(
              labelText: "Change Password",
              border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
            ),
          ),
          MaterialButton(
              minWidth: 85.0,
              height: 50.0,
              color: Colors.blueGrey[500],
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
              child: Text("Reset Password"))
        ],
      ),
    );
  }
}
