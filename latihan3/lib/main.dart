import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan3/home_menu.dart';
import 'package:latihan3/reset_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  late String nUsername, nPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page Login'),
        ),
        body: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  //cek data field
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Input Username';
                    } else if (value != 'deles') {
                      return 'Username salah';
                    }
                    return null;
                  },

                  controller: myUsernameController,
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Input Password';
                    } else if (nPassword.length < 3) {
                      return 'Password salah';
                    }
                    return null;
                  },
                  maxLength: 7,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  controller: myPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(
                  height: 25.0,
                ),
                MaterialButton(
                  minWidth: 85.0,
                  height: 50.0,
                  color: Colors.deepOrange,
                  onPressed: () {
                    nUsername = myUsernameController.text;
                    nPassword = myPasswordController.text;

                    if (_formKey.currentState!.validate()) {
                      if (nUsername != 'deles') {
                        print("username tidak dikenal");
                      } else if (nPassword.length < 3) {
                        print("password tidak sesuai");
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeMenu(
                                      nama: nUsername,
                                      password: nPassword,
                                    )));
                      }
                    }
                  },
                  child: Text('Submit'),
                ),
                MaterialButton(
                    minWidth: 85.0,
                    height: 50.0,
                    color: Colors.red[900],
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return reset();
                      }));
                    },
                    child: Text("Change Password"))
              ],
            )));
  }
}
