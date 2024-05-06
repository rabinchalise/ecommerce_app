class ProductAttributesModel {
  String? name;
  final List<String>? values;

  ProductAttributesModel({this.name, this.values});

  //Json Format
  toJson() {
    return {'Name': name, 'Values': values};
  }

//map json oriented document snapshots from firebase to model
  factory ProductAttributesModel.fromJson(Map<String, dynamic> document) {
    final data = document;

    if (data.isEmpty) return ProductAttributesModel();
    return ProductAttributesModel(
        name: data.containsKey('Name') ? data['Name'] : '',
        values: List<String>.from(data['Values']));
  }
}
