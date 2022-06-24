import 'package:flutter/material.dart';

import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';
import '../utils/theme/size.dart';

class CampaignCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final Color hexacode;
  final int views;
  const CampaignCardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.hexacode,
    required this.views,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: hexacode,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusNormal),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              image,
              width: context.widthQuery,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                paddingNormal,
                spacingSmall,
                paddingNormal,
                spacingSmall,
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: semibold10.copyWith(color: white),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.remove_red_eye,
                          size: 16,
                          color: colorSecondaryText5,
                        ),
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
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
