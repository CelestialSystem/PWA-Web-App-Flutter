import 'dart:convert';

List<Products> productsFromJson(String str) =>
    List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  String name;
  List<String> image;
  String description;
  List<SubCategory> subCategory;

  Products({this.name, this.image, this.description, this.subCategory});

  Products.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'].cast<String>();
    description = json['description'];
    if (json['subCategory'] != null) {
      subCategory = new List<SubCategory>();
      json['subCategory'].forEach((v) {
        subCategory.add(new SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    if (this.subCategory != null) {
      data['subCategory'] = this.subCategory.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategory {
  String name;
  List<String> image;
  String description;

  SubCategory({this.name, this.image, this.description});

  SubCategory.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'].cast<String>();
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['description'] = this.description;
    return data;
  }
}
