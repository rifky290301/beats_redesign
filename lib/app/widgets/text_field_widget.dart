import 'package:flutter/material.dart';

import '../utils/theme/colors.dart';
import '../utils/theme/fonts.dart';
import '../utils/theme/size.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  const TextFieldWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      autocorrect: false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        labelStyle: regular12.copyWith(color: primaryColor),
        hintText: label,
        hintStyle: regular14.copyWith(color: colorInputText),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            borderRadiusNormal,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            borderRadiusNormal,
          ),
        ),
      ),
    );
  }
}
