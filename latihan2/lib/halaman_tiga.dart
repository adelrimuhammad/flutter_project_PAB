import 'package:flutter/material.dart';
import 'package:latihan2/halaman_dua.dart';

class HalamanTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Tiga"),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HalamanDua();
                  }));
                },
                child: Text("Pindah Ke Page 2"))));
  }
}
