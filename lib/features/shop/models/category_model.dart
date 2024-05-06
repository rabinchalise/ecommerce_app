import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String id;
  String name;
  String image;
  String parentId;
  bool isFeatured;

  CategoryModel(
      {required this.id,
      required this.name,
      required this.image,
      this.parentId = '',
      required this.isFeatured});

// empty helper function
  static CategoryModel empty() =>
      CategoryModel(id: '', name: '', image: '', isFeatured: false);

// convert model to Json structure so that you can store data in Firebase
  Map<String, dynamic> toJson() => {
        'Image': image,
        'IsFeatured': isFeatured,
        'Name': name,
        'ParentId': parentId,
      };

// Map Json oriented document snapshots from Firebase to userModel
  factory CategoryModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return CategoryModel(
        id: document.id,
        parentId: data['ParentId'] ?? '',
        name: data['Name'] ?? '',
        image: data['Image'] ?? '',
        isFeatured: data['IsFeatured'] ?? false,
      );
    } else {
      return CategoryModel.empty();
    }
  }
}
