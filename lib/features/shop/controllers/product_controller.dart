import 'package:get/get.dart';
import 'package:shop/data/repositories/product/product_repository.dart';
import 'package:shop/features/shop/models/product_model.dart';
import 'package:shop/utils/constants/enums.dart';
import 'package:shop/utils/popups/loaders.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();
  final isLoading = false.obs;
  final productRepository = Get.put(ProductRepository());
  RxList<ProductsModel> featuredProducts = <ProductsModel>[].obs;

  @override
  void onInit() {
    feachFeaturedProduct();
    super.onInit();
  }

  void feachFeaturedProduct() async {
    try {
      // loaders
      isLoading.value = true;

      // fetch products
      final products = await productRepository.getFeaturedProducts();

      // Assign products
      featuredProducts.assignAll(products);
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  // get product price of price range for variations

  String getProductPrice(ProductsModel product) {
    double smallestPrice = double.infinity;
    double largestPrice = 0.0;

    // if no variations exits, return simple price or salePrice
    if (product.productType == ProductType.single.toString()) {
      return (product.salePrice > 0 ? product.salePrice : product.price)
          .toString();
    } else {
      // calculate smallest and largest prices among variations

      for (var variation in product.productVariations!) {
        // determine the price to consider(sale price if availabe, otherwise regualr price)
        double priceToConsider =
            variation.salePrice > 0.0 ? variation.salePrice : variation.price;

        // update largest and smallest prices
        if (priceToConsider < smallestPrice) {
          smallestPrice = priceToConsider;
        }

        if (priceToConsider > largestPrice) {
          largestPrice = priceToConsider;
        }
      }

      // if smallest and largest price are same return single price
      if (smallestPrice.isEqual(largestPrice)) {
        return largestPrice.toString();
      } else {
        // return price range
        return '$smallestPrice - \$$largestPrice';
      }
    }
  }

// calculate discount percentage
  String? calculateSalePercentage(double orginalPrice, double? salePrice) {
    if (salePrice == null || salePrice <= 0.0) return null;

    if (orginalPrice <= 0.0) return null;

    double percentage = ((orginalPrice - salePrice) / orginalPrice) * 100;
    return percentage.toStringAsFixed(0);
  }

// calculate product stock status
  String getProductStockStatus(int stock) {
    return stock > 0 ? 'In Stock' : 'Out of Stock';
  }
}
