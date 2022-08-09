class PurchaseModel{

  String? id;
  String? productID;
  String? category;
  String? purchaseDate;
  num purchasePrice;
  num quantity;

  PurchaseModel(
      {this.id,
      this.productID,
      this.category,
      this.purchaseDate,
     required this.purchasePrice,
    required  this.quantity
      });
  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      'id' : id,
      'productid' : productID,
      'purchasedate' : purchaseDate,
      'purchaseprice' : purchasePrice,
      'quality' : quantity,

    };
  }
  factory PurchaseModel.fromMap(Map<String, dynamic> map) => PurchaseModel(
    id:map['id'],
    productID: map['productID'],
    purchaseDate: map['purchasedate'],
    purchasePrice: map['purchaseprice'],
    quantity: map['quantity'],

  );
}
