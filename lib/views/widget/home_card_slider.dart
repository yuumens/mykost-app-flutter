// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final List<String> assets;
  final int currentIndex;
  final Function(int) onIndexChanged;

  HomeSlider({
    required this.assets,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CardSlider(
        onIndexChanged: onIndexChanged,
        assets: assets,
        currentIndex: currentIndex);
  }
}

class CardSlider extends StatelessWidget {
  const CardSlider({
    super.key,
    required this.onIndexChanged,
    required this.assets,
    required this.currentIndex,
  });

  final Function(int p1) onIndexChanged;
  final List<String> assets;
  final int currentIndex;

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
              onIndexChanged(index);
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
                color: currentIndex == index
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
