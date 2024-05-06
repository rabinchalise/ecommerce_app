import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_function.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          text: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwnItem),
        Row(
          children: [
            RoundedContainer(
              height: 60,
              width: 35,
              backgroundColor: dark ? TColor.kLightColor : TColor.kWhiteColor,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image.asset(
                TImage.paypal,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwnItem / 2),
            Text('PayPal', style: Theme.of(context).textTheme.bodyLarge)
          ],
        )
      ],
    );
  }
}
