import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/custom-container/rounded_container.dart';
import 'package:shop/common/widgets/sucess.dart';
import 'package:shop/features/shop/screens/cart/widgets/product_cart_items.dart';
import 'package:shop/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:shop/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:shop/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:shop/navigation_menu.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/image_string.dart';
import 'package:shop/utils/helpers/helper_function.dart';
import '../../../../common/widgets/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/coupon_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: CustomAppbar(
          showBackArrow: true,
          title: Text(
            'Order Review',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const ProductCartItems(
                  showAddRemoveButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
                const CouponCard(),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
                RoundedContainer(
                  padding: const EdgeInsets.all(TSizes.md),
                  showBorder: true,
                  backgroundColor:
                      dark ? TColor.kBlackColor : TColor.kWhiteColor,
                  child: const Column(
                    children: [
                      BillingAmountSection(),
                      SizedBox(height: TSizes.spaceBtwnSections),
                      Divider(),
                      SizedBox(height: TSizes.spaceBtwnSections),
                      BillingPaymentSection(),
                      SizedBox(height: TSizes.spaceBtwnSections),
                      BillingAddressSection()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => SucessScreen(
                    imageUrl: TImage.successfulPaymentIcon,
                    title: 'Payment Sucess',
                    subTitle: 'Your item will be shipped soon',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ));
            },
            child: const Text('Checkout \$256.0'),
          ),
        ));
  }
}
