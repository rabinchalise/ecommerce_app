import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/color.dart';

class CustomRatingIndicator extends StatelessWidget {
  const CustomRatingIndicator({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: TColor.kGreyColor,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: TColor.kPrimaryColor,
            ));
  }
}
