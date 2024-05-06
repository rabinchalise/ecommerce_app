import 'package:cloud_firestore/cloud_firestore.dart';

import 'brand_model.dart';
import 'product_attributes_model.dart';
import 'product_variations_model.dart';

class ProductsModel {
  String id;
  int stock;
  String? sku;
  double price;
  String title;
  DateTime? date;
  double salePrice;
  String thumbnail;
  bool? isFeatured;
  BrandModel? brand;
  String? description;
  String? categoryId;
  List<String>? images;
  String productType;
  List<ProductAttributesModel>? productAttributes;
  List<ProductVariationsModel>? productVariations;

  ProductsModel(
      {required this.id,
      required this.title,
      required this.stock,
      required this.price,
      required this.thumbnail,
      required this.productType,
      this.sku,
      this.brand,
      this.salePrice = 0.0,
      this.isFeatured,
      this.images,
      this.categoryId,
      this.date,
      this.description,
      this.productAttributes,
      this.productVariations});

  // create empty func to clean code
  static ProductsModel empty() => ProductsModel(
        id: '',
        title: '',
        stock: 0,
        price: 0,
        thumbnail: '',
        productType: '',
      );

  toJson() {
    return {
      'SKU': sku,
      'Title': title,
      'Stock': stock,
      'Price': price,
      'Images': images ?? [],
      'Thumbnail': thumbnail,
      'SalePrice': salePrice,
      'IsFeatured': isFeatured,
      'CategoryId': categoryId,
      'Brand': brand!.toJson(),
      'Description': description,
      'ProductType': productType,
      'ProductAttributes': productAttributes != null
          ? productAttributes!.map((e) => e.toJson()).toList()
          : [],
      'ProductVariations': productVariations != null
          ? productVariations!.map((e) => e.toJson()).toList()
          : []
    };
  }

  //map json oriented document snapshots
  factory ProductsModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() == null) return ProductsModel.empty();
    final data = document.data()!;
    return ProductsModel(
      id: document.id,
      sku: data['SKU'] ?? '',
      title: data['Title'] ?? '',
      stock: data['Stock'] ?? 0,
      isFeatured: data['IsFeatured'] ?? false,
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      thumbnail: data['Thumbnail'] ?? '',
      categoryId: data['CategoryId'] ?? '',
      description: data['Description'] ?? '',
      brand: BrandModel.fromJson(data['Brand']),
      productType: data['ProductType'] ?? '',
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productAttributes: (data['ProductAttributes'] as List<dynamic>)
          .map((e) => ProductAttributesModel.fromJson(e))
          .toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>)
          .map((e) => ProductVariationsModel.fromJson(e))
          .toList(),
    );
  }

  factory ProductsModel.fromQuerySnapShot(
      QueryDocumentSnapshot<Object?> document) {
    final data = document.data() as Map<String, dynamic>;
    return ProductsModel(
      id: document.id,
      sku: data['SKU'] ?? '',
      title: data['Title'] ?? '',
      stock: data['Stock'] ?? 0,
      isFeatured: data['IsFeatured'] ?? false,
      price: double.parse((data['Price'] ?? 0.0).toString()),
      salePrice: double.parse((data['SalePrice'] ?? 0.0).toString()),
      thumbnail: data['Thumbnail'] ?? '',
      categoryId: data['CategoryId'] ?? '',
      description: data['Description'] ?? '',
      brand: BrandModel.fromJson(data['Brand']),
      productType: data['ProductType'] ?? '',
      images: data['Images'] != null ? List<String>.from(data['Images']) : [],
      productAttributes: (data['ProductAttributes'] as List<dynamic>)
          .map((e) => ProductAttributesModel.fromJson(e))
          .toList(),
      productVariations: (data['ProductVariations'] as List<dynamic>)
          .map((e) => ProductVariationsModel.fromJson(e))
          .toList(),
    );
  }
}
