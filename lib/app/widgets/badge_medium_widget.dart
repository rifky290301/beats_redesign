import 'package:flutter/material.dart';

import '../utils/theme/fonts.dart';

class BadgeMediumkWidget extends StatelessWidget {
  final Color hexacodebg;
  final Color hexacodetext;
  final String text;
  const BadgeMediumkWidget({
    Key? key,
    required this.hexacodebg,
    required this.hexacodetext,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
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
