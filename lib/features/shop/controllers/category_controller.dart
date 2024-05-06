import 'package:get/get.dart';
import 'package:shop/data/repositories/categories/category_repository.dart';
import 'package:shop/features/shop/models/category_model.dart';
import 'package:shop/utils/popups/loaders.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  final _categoryRepository = Get.put(CategoryRepository());

  //variables
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  //load category data
  Future<void> fetchCategories() async {
    try {
      // show loader while loading categories
      isLoading.value = true;

      //Fetch Categoreis from  data  source (fireStore, api, etc)
      final categories = await _categoryRepository.getCategories();

      //update the categories list
      allCategories.assignAll(categories);

      // fillter Featured categories
      featuredCategories.assignAll(allCategories
          .where((category) => category.isFeatured && category.parentId.isEmpty)
          .take(8)
          .toList());
    } catch (e) {
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    } finally {
      // remove loaders
      isLoading.value = false;
    }
  }
  // load selected category data
  // get category or sub-category  products
}
