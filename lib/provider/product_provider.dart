import 'package:ecomadmin/db/db_helper.dart';
import 'package:ecomadmin/models/category_model.dart';
import 'package:ecomadmin/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier{

  List <ProductModel> productList = [];
  List <CategoryModel> categorList=[];
 getAllCategories(){
   Dbhelper.getAllCategories().listen((snapshot) {
     categorList=List.generate(snapshot.docs.length, (index) =>
         CategoryModel.fromMap(snapshot.docs[index].data()));
     notifyListeners();

   });
 }
 Future<void> addCategory(String category){
   final categoryModel = CategoryModel(catName: category,
   );
 }
}