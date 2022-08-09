import 'package:ecomadmin/provider/product_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName='/category';
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),body: Consumer<ProductProvider>(
      builder: (context, provider,_)=>provider.categorList.isEmpty?
      const Center(
        child: const Text('No Item Found'),
      )
          : ListView.builder(
        itemCount: provider.categorList.length,
        itemBuilder:(context, index) {
          final category = provider.categorList[index];
          return ListTile(
            title: Text('${category.catName}(${category.productCount}'),
          );
        },
      )
    ),
      bottomSheet: DraggableScrollableSheet(
        initialChildSize: 0.1,
        minChildSize: 0.1,
        maxChildSize: 0.5,
        builder: (BuildContext context, ScrollController scrollController
        return Card(

        )),
      ),
    );
  }
}
