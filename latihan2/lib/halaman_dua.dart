import 'package:flutter/material.dart';
import 'package:latihan2/halaman_satu.dart';
import 'package:latihan2/halaman_tiga.dart';

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Dua"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HalamanTiga();
                    }));
                  },
                  child: Text("Pindah Ke Page 3")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HalamanSatu();
                    }));
                  },
                  child: Text("Kembali Ke Page 1")),
            ],
          ),
        ));
  }
}
