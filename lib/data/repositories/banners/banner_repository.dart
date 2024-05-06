import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop/features/shop/models/banner_model.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';
import '../../services/firebase_storage_service.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find();

// variables
  final _db = FirebaseFirestore.instance;

  //Get all order related to current user
  Future<List<BannerModel>> fetchBanner() async {
    try {
      final result = await _db
          .collection('Banners')
          .where('Active', isEqualTo: true)
          .get();

      return result.docs
          .map((document) => BannerModel.fromSnapshot(document))
          .toList();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException().message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again $e';
    }
  }

  // upload Banners to cloud firebase
  Future<void> uploadDummyData(List<BannerModel> banners) async {
    try {
      final storage = Get.put(FirebaseStorageService());

      for (var banner in banners) {
        // get ImageData link from local assets
        final file = await storage.getImageDataFromAssets(banner.imageUrl);

        // upload image and gets its url
        final url =
            await storage.uploadImageData('Banners', file, banner.imageUrl);

        //assign url to category.image attribute

        banner.imageUrl = url;

        // store category in firestore
        await _db.collection('Banners').doc().set(banner.toJson());
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
