import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Daily Meals',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: GridView(
          padding: EdgeInsets.all(15),
          children: DUMMY_CATEGORIES
              .map((catData) =>
                  CategoryItem(catData.title, catData.color, catData.id))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
