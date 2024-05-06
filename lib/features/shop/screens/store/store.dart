import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/common/widgets/custom-container/search_container.dart';
import 'package:shop/common/widgets/cutom-icons/cart_menu_icon.dart';
import 'package:shop/common/widgets/products/grid_layout.dart';
import 'package:shop/common/widgets/section_heading.dart';
import 'package:shop/features/shop/controllers/category_controller.dart';
import 'package:shop/features/shop/screens/brands/all_brands.dart';
import 'package:shop/features/shop/screens/store/widgets/category_tab.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_function.dart';
import '../../../../common/widgets/tab_bar.dart';
import '../../../../common/widgets/brands/brand_card.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
        length: categories.length,
        child: Scaffold(
            appBar: CustomAppbar(
              title: Text('Store',
                  style: Theme.of(context).textTheme.headlineMedium),
              actions: [
                CartCounterIcon(
                  onPressed: () {},
                )
              ],
            ),
            body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor:
                        dark ? TColor.kBlackColor : TColor.kWhiteColor,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(height: TSizes.spaceBtwnItem),
                          const SearchContainer(
                            text: 'Search in Store',
                            padding: EdgeInsets.zero,
                            showBorder: true,
                            showBackground: false,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwnSections,
                          ),
                          SectionHeading(
                              text: 'Features Brand',
                              onPressed: () =>
                                  Get.to(() => const AllBrandsScreeen())),
                          const SizedBox(
                            height: TSizes.spaceBtwnItem / 1.5,
                          ),
                          GridLayout(
                              mainAxisExtent: 80,
                              itemCount: 4,
                              itemBuilder: (_, index) {
                                return const BrandCard(showBorder: true);
                              })
                        ],
                      ),
                    ),
                    bottom: CustomTabBar(
                        tabs: categories
                            .map((category) => Tab(child: Text(category.name)))
                            .toList()),
                  )
                ];
              },
              body: TabBarView(
                  children: categories
                      .map((category) => CategoryTab(category: category))
                      .toList()),
            )));
  }
}
