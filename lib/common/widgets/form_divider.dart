import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';
import '../../utils/helpers/helper_function.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.dividerText});
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            indent: 60,
            endIndent: 5,
            color: dark ? TColor.kDarkGreyColor : TColor.kGreyColor,
            thickness: 0.5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            indent: 5,
            endIndent: 60,
            color: dark ? TColor.kDarkGreyColor : TColor.kGreyColor,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
