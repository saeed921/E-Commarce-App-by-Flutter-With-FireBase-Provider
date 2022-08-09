import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecomadmin/models/category_model.dart';
class Dbhelper{

  static const String collectionAdmin= ' Admin';
  static const String collectionCategory= ' categories';

  static FirebaseFirestore _db= FirebaseFirestore.instance;

  static Future<bool> isAdmin(String uid) async{
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;


  }
  static Future<void> addCategory(CategoryModel categoryModel){
    final doc= _db.collection(collectionCategory).doc();
    CategoryModel.= doc.id;
    return doc.set(CategoryModel.toMap());
  }


  static Stream<QuerySnapshot<Map<String, dynamic>>>getAllCategories()=>
      _db.collection(collectionCategory).snapshots();

}