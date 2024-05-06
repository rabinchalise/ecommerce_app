import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/features/shop/screens/product-review/widgets/custom_rating_indicator.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_function.dart';

class UserReviewcard extends StatelessWidget {
  const UserReviewcard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImage.userProfileImage1),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwnItem,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwnItem),
        Row(
          children: [
            const CustomRatingIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwnItem),
            Text(
              '01 Nov 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwnItem),
        const ReadMoreText(
          'The User interface of this app is quite intuitive. I was able to navigate and purchase seamlessly. Great Job! ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColor.kPrimaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColor.kPrimaryColor),
        ),
        const SizedBox(height: TSizes.spaceBtwnItem),
        RoundedContainer(
          backgroundColor: dark ? TColor.kDarkerGreyColor : TColor.kGreyColor,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Royal Clothes',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '15 March, 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwnItem),
                const ReadMoreText(
                  'The User interface of this app is quite intuitive. I was able to navigate and purchase seamlessly. Great Job! ',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColor.kPrimaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColor.kPrimaryColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwnSections,
        ),
      ],
    );
  }
}
