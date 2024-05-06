import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop/features/shop/models/category_model.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';
import '../../services/firebase_storage_service.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  // variables
  final _db = FirebaseFirestore.instance;

  // Get all categoreis
  Future<List<CategoryModel>> getCategories() async {
    try {
      final snapShots = await _db.collection('Categories').get();
      final list = snapShots.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again $e';
    }
  }

  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      final storage = Get.put(FirebaseStorageService());

      for (var category in categories) {
        // get ImageData link from local assets
        final file = await storage.getImageDataFromAssets(category.image);

        // upload image and gets its url
        final url =
            await storage.uploadImageData('Categories', file, category.name);

        //assign url to category.image attribute

        category.image = url;

        // store category in firestore
        await _db
            .collection('Categories')
            .doc(category.id)
            .set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again $e';
    }
  }
}
