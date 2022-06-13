import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';
import '../../../utils/theme/fonts.dart';
import '../../../utils/theme/size.dart';

class CampaignCardHomeView extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final int views;
  const CampaignCardHomeView({
    Key? key,
    required this.image,
    required this.title,
    required this.author,
    required this.views,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: context.widthQuery * 0.75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(borderRadiusNormal),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          spacingNormal,
          paddingSmall,
          spacingNormal,
          paddingSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              title,
              style: semibold14.copyWith(
                color: colorSecondaryText5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  author,
                  style: regular10.copyWith(
                    color: colorSecondaryText5,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.remove_red_eye,
                        color: colorSecondaryText5),
                    const SizedBox(
                      width: spacingMicro,
                    ),
                    Text(
                      views.toString(),
                      style: regular10.copyWith(
                        color: colorSecondaryText5,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
