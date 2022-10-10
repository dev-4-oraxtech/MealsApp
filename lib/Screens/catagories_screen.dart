import 'package:flutter/material.dart';
import 'package:meals_app/catagories_dummy.dart';
import '../widgets/categories_item.dart';
import '../catagories_dummy.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);
  static const routeKey='category-recipe-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe App'),backgroundColor: Theme.of(context).primaryColor,),
      body: Container(color: Theme.of(context).backgroundColor,
        child: GridView(padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES.map((catData) => CategoriesItem(catData.id,catData.title, catData.color)).toList(),
        ),
      ),
    );
  }
}