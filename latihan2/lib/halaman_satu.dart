import 'package:flutter/material.dart';
import 'package:latihan2/halaman_dua.dart';

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page 1")),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HalamanDua();
                  }));
                },
                child: Text("Pindah Ke Halaman 2"))));
  }
}
