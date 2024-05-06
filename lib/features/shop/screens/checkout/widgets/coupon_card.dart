import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom-container/rounded_container.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColor.kDarkColor : TColor.kWhiteColor,
      padding: const EdgeInsets.only(
          top: TSizes.sm, right: TSizes.sm, bottom: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? TColor.kWhiteColor.withOpacity(0.5)
                        : TColor.kDarkColor.withOpacity(0.5),
                    backgroundColor: TColor.kGreyColor.withOpacity(0.2),
                    side:
                        BorderSide(color: TColor.kGreyColor.withOpacity(0.1))),
                onPressed: () {},
                child: const Text('Apply')),
          )
        ],
      ),
    );
  }
}
