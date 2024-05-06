import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar.dart';
import '../../../../../common/widgets/custom-image/rounded_image.dart';
import '../../../../../common/widgets/custom-shape/curver_edges_widget.dart';
import '../../../../../common/widgets/cutom-icons/circular_icon.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return CurvedEdgesWidget(
        child: Container(
      color: dark ? TColor.kDarkGreyColor : TColor.kLightColor,
      child: Stack(
        children: [
          SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 3),
                child: Center(child: Image.asset(TImage.productImage5)),
              )),
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: 6,
                separatorBuilder: (_, __) => const SizedBox(
                  width: TSizes.spaceBtwnItem,
                ),
                itemBuilder: (_, index) => RoundedImage(
                  width: 80,
                  imgUrl: TImage.productImage6,
                  backgroundColor:
                      dark ? TColor.kDarkColor : TColor.kWhiteColor,
                  border: Border.all(color: TColor.kPrimaryColor),
                  padding: const EdgeInsets.all(TSizes.sm),
                ),
              ),
            ),
          ),
          const CustomAppbar(
            showBackArrow: true,
            actions: [
              CircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    ));
  }
}
