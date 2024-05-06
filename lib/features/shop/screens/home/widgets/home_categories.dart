import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/shop/controllers/category_controller.dart';
import 'package:shop/features/shop/screens/sub-category/sub_categories.dart';
import 'package:shop/utils/constants/color.dart';

import '../../../../../common/widgets/category_shimmer.dart';
import '../../../../../common/widgets/vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    return Obx(() {
      if (categoryController.isLoading.value) return const CategoryShimmer();
      if (categoryController.featuredCategories.isEmpty) {
        return Center(
            child: Text(
          'No Data Found',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColor.kWhiteColor),
        ));
      }
      return SizedBox(
        height: 80,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categoryController.featuredCategories.length,
            itemBuilder: (_, index) {
              final category = categoryController.featuredCategories[index];
              return VerticalImageText(
                imgUrl: category.image,
                title: category.name,
                onTap: () {
                  Get.to(() => const SubCategoriesScrenn());
                },
              );
            }),
      );
    });
  }
}
