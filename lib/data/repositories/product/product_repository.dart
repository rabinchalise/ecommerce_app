import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop/data/services/firebase_storage_service.dart';
import '../../../features/shop/models/product_model.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;

  // instance for firebase interactions

  // get limited products

  Future<List<ProductsModel>> getFeaturedProducts() async {
    try {
      final snapshots = await _db
          .collection("Products")
          .where('IsFeatured', isEqualTo: true)
          .limit(4)
          .get();

      return snapshots.docs
          .map((document) => ProductsModel.fromSnapShot(document))
          .toList();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      print(e);
      throw 'Something went wrong. Please try again $e';
    }
  }

// upload dummy data to cloud firebase

  Future<void> uploadDummyData(List<ProductsModel> products) async {
    try {
      // upload all products  along with their images

      final storage = Get.put(FirebaseStorageService());

      // loop through each products
      for (var product in products) {
        // get image data link from local assets
        final thumbnail =
            await storage.getImageDataFromAssets(product.thumbnail);

        // uploads image and gets its url
        final url = await storage.uploadImageData(
            'Products/Images', thumbnail, product.thumbnail.toString());

        // assign url to product.thumbnail attributes
        product.thumbnail = url;

        // product list of images

        if (product.images != null && product.images!.isNotEmpty) {
          List<String> imgUrl = [];
          for (var image in product.images!) {
            // get image data link from local assets
            final assetImage = await storage.getImageDataFromAssets(image);

            //upload image and gets its url
            final url = await storage.uploadImageData(
                'Products/Images', assetImage, image);

            imgUrl.add(url);
          }
          product.images!.clear();
          product.images!.addAll(imgUrl);
        }

        // upload variations images
        if (product.productType == ProductType.variable.toString()) {
          for (var variation in product.productVariations!) {
            // get image from local assets
            final assetImage =
                await storage.getImageDataFromAssets(variation.image);

            // upload image and get url
            final url = await storage.uploadImageData(
                'Products/Images', assetImage, variation.image);

            // assign url in variation.image attribute
            variation.image = url;
          }
        }
        // store product in firestore
        await _db.collection("Products").doc(product.id).set(product.toJson());
      }
    } on FirebaseException catch (e) {
      throw e.toString();
    } on SocketException catch (e) {
      throw e.toString();
    } on PlatformException catch (e) {
      throw e.toString();
    } catch (e) {
      throw e.toString();
    }
  }
}
