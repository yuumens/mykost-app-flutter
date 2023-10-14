// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_kost_app/views/widget/navigation.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      // Navigasikan pengguna ke halaman utama setelah 2 detik (ganti sesuai kebutuhan Anda)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Navbar()),
      );
    });
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: -90,
            child: Image(
              image: AssetImage('assets/img/kostlogo2.png'),
              width: 386,
              height: 374,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/img/kostlogo.png'),
                  width: 196,
                  height: 198,
                  fit: BoxFit.cover,
                ),
                // Image.asset('assets/img/kostlogo.png'),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'MyKost',
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Makes Easy To Find Boarding\nHouse',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 16,
                      height: 1.5,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: -50,
            child: Image(
              image: AssetImage('assets/img/ellipse2.png'),
              width: 208,
              height: 208,
            ),
          ),
          Positioned(
            bottom: 10,
            right: -50,
            child: Image(
              image: AssetImage('assets/img/line.png'),
              width: 208,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
