

class ProductModel{

  String? id;
  String? name;
  String? category;
  String? description;
  num saleprice;
  bool featured;
  bool available;
  String? imageUrl;

  ProductModel(
      {
        this.id,
      this.name,
      this.category,
      this.description,
     required this.saleprice,
      this.featured= false,
      this.available= false,
      this.imageUrl,
      }

      );

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      'id' : id,
      'name' : name,
      'category' : category,
      'salesprice' : saleprice,
      'featured' : featured,
      'available' : available,
      'imageurl' : imageUrl,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) => ProductModel(
    id:map['id'],
    name: map['name'],
    category: map['category'],
    saleprice: map['saleprice'],
    featured: map['featured'],
    available: map['available'],
    imageUrl: map['imageUrl'],


  );


}
 const String id='id';
 const String category='category';
 const String saleprice='saleprice';
 const String featured='featured';
 const String available='available';
 const String imageUrl='imageUrl';