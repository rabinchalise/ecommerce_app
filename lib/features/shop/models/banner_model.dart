import 'package:cloud_firestore/cloud_firestore.dart';

class BannerModel {
  String imageUrl;
  final String targetScreen;
  final bool active;

  BannerModel(
      {required this.imageUrl,
      required this.active,
      required this.targetScreen});

  Map<String, dynamic> toJson() =>
      {'ImageUrl': imageUrl, 'TargetScreen': targetScreen, 'Active': active};

  factory BannerModel.fromSnapshot(DocumentSnapshot document) {
    final data = document.data() as Map<String, dynamic>;
    return BannerModel(
        imageUrl: data['ImageUrl'] ?? '',
        active: data['Active'] ?? false,
        targetScreen: data['TargetScreen'] ?? '');
  }
}
