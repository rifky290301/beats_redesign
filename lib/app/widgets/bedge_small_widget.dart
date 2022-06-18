import 'package:flutter/material.dart';

import '../utils/theme/fonts.dart';

class BadgeSmallkWidget extends StatelessWidget {
  final Color hexacodebg;
  final Color hexacodetext;
  final String text;
  const BadgeSmallkWidget({
    Key? key,
    required this.hexacodebg,
    required this.hexacodetext,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: hexacodebg,
      ),
      child: Text(
        text,
        style: semibold12.copyWith(
          color: hexacodetext,
        ),
      ),
    );
  }
}
