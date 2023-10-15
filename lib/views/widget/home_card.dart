// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeCard extends StatefulWidget {
  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  final List<Map<String, dynamic>> items = [
    {
      'imagePath': 'assets/img/image10.png',
      'title': 'Wisma Ulin',
      'price': '500k idr',
      'address': 'Jalan Margo Utomo'
    },
    {
      'imagePath': 'assets/img/image10.png',
      'title': 'Wisma Tulip',
      'price': '500k idr',
      'address': 'Jalan Margo Utomo'
    },
    {
      'imagePath': 'assets/img/image10.png',
      'title': 'Kost Putri',
      'price': '500k idr',
      'address': 'Jalan Margo Utomo'
    },
    // Tambahkan path gambar dan teks lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.0),
        child: Row(
          children: items.map((item) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: AssetImage(item['imagePath']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: double.infinity,
                    height: 120,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4E4B4B),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              IconlyBold.heart,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          right: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF4E4B4B),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color.fromARGB(255, 249, 228,
                          192), // Ganti dengan warna yang Anda inginkan
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              item['price'],
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['address'],
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'per Month',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
