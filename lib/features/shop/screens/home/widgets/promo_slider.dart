import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/shimmer_effect.dart';
import 'package:shop/features/shop/controllers/banner_controller.dart';
import 'package:shop/utils/constants/color.dart';
import '../../../../../common/widgets/custom-container/circular_container.dart';
import '../../../../../common/widgets/custom-image/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(() {
      // loaders
      if (controller.isLoading.value) {
        return const ShimmerEffect(height: 190, width: double.infinity);
      }
      //No Data found
      if (controller.banners.isEmpty) {
        return const Center(child: Text('No Data found'));
      } else {
        return Column(
          children: [
            CarouselSlider(
                items: controller.banners
                    .map((banner) => RoundedImage(
                          imgUrl: banner.imageUrl,
                          isNetworkImage: true,
                          onPressed: () => Get.toNamed(banner.targetScreen),
                        ))
                    .toList(),
                options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, _) =>
                        controller.updatePageIndicator(index))),
            const SizedBox(height: TSizes.spaceBtwnItem),
            Center(
              child: Obx(
                () => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < controller.banners.length; i++)
                      CircularContainer(
                        margin: const EdgeInsets.only(right: 10),
                        height: 10,
                        width: 10,
                        backgroundColor: controller.carouselIndex.value == i
                            ? TColor.kPrimaryColor
                            : TColor.kGreyColor,
                      )
                  ],
                ),
              ),
            )
          ],
        );
      }
    });
  }
}
