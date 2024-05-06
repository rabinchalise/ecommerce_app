import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop/common/styles/spacing_styles.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_string.dart';
import '../../utils/helpers/helper_function.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final String imageUrl, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TspacingStyle.paddingwithAppbarHeight * 2,
          child: Column(children: [
            Lottie.asset(
              imageUrl,
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnSections,
            ),
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(
              height: TSizes.spaceBtwnItem,
            ),
            Text(subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(
              height: TSizes.spaceBtwnSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed, child: const Text(TText.tcontinue)),
            )
          ]),
        ),
      ),
    );
  }
}
