class CategoryModel{

  String? catId, catName;
  bool? available;
  num productCount;

  CategoryModel({
    this.catId,
    this.catName,
    this.available,
    this.productCount=0
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      'catId' : catId,
      'catname' : catName,
      'available': available,
      'productCount': productCount,

    };
  }
  factory CategoryModel.fromMap(Map<String, dynamic> map) => CategoryModel(
    catId:map['id'],
    catName: map['catname'],
  available: map['available'],
    productCount: map['productCount'],

  );
}