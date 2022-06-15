import 'package:flutter/material.dart';

import '../../utils/theme/colors.dart';
import '../../utils/theme/fonts.dart';

final List<String> imgList = [
  'assets/images/be_campaign/carousel1.jpg',
  'assets/images/be_campaign/carousel2.jpg',
  'assets/images/be_campaign/carousel3.jpg',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          height: 200,
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.fill, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [primaryColor, black.withOpacity(0)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    child: Text(
                      // 'No. ${imgList.indexOf(item)} image',
                      'Mencegah Lebih Baik Daripada Memadamkan (Fire Prevention)',
                      style: semibold12.copyWith(color: white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();
