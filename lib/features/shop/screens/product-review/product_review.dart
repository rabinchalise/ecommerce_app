import 'package:flutter/material.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/features/shop/screens/product-review/widgets/user_review_card.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'widgets/custom_rating_indicator.dart';
import 'widgets/overall_product_rating.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showBackArrow: true,
        title: Text(
          'Reviews and Ratings',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and reviews are verified and are from people who use same type of device that you use'),
              const SizedBox(
                height: TSizes.spaceBtwnItem,
              ),
              const Overal1ProductRating(),
              const CustomRatingIndicator(
                rating: 3.5,
              ),
              Text(
                '12,811',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              const UserReviewcard(),
            ],
          ),
        ),
      ),
    );
  }
}
