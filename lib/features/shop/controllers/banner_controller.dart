import 'package:get/get.dart';
import 'package:shop/data/repositories/banners/banner_repository.dart';
import 'package:shop/features/shop/models/banner_model.dart';

import '../../../utils/popups/loaders.dart';

class BannerController extends GetxController {
  static BannerController get instance => Get.find();

// variables
  final Rx<int> carouselIndex = 0.obs;
  final isLoading = false.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;
  final bannerRepo = Get.put(BannerRepository());

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

//upddate page Navigation dots
  void updatePageIndicator(index) {
    carouselIndex.value = index;
  }

  // fetch Banners
  Future<void> fetchBanners() async {
    try {
      final banners = await bannerRepo.fetchBanner();

      // assign banners

      this.banners.assignAll(banners);
    } catch (e) {
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    } finally {
      // remove loaders
      isLoading.value = false;
    }
  }
}
