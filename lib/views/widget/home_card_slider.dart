// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  List<String> assets = [
    'assets/img/image10.png',
    'assets/img/image11.png',
    'assets/img/image12.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 122,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            viewportFraction: 0.8,
            aspectRatio: 2.0,
          ),
          items: assets.map((asset) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(asset),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: assets.map((asset) {
            int index = assets.indexOf(asset);
            return Container(
              width: 10.0,
              height: 9.0,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Color(0xFFE5BA73)
                    : Color(0xFFF5EFE6),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
