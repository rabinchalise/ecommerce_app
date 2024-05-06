import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/appbar.dart';
import 'package:shop/features/personalizations/screens/address/widgets/add_new_adress.dart';
import 'package:shop/features/personalizations/screens/address/widgets/single_address.dart';
import 'package:shop/utils/constants/color.dart';
import 'package:shop/utils/constants/sizes.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddNewAddressScreen());
        },
        backgroundColor: TColor.kPrimaryColor,
        child: const Icon(
          Iconsax.add,
          color: TColor.kWhiteColor,
        ),
      ),
      appBar: CustomAppbar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAdress(selectedAdress: false),
              SingleAdress(selectedAdress: true)
            ],
          ),
        ),
      ),
    );
  }
}
