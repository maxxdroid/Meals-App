import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/meals_item.dart';

// ignore: must_be_immutable
class CategoriesMealsScreen extends StatelessWidget {
  final String id;
  final String title;
  Color color;
  CategoriesMealsScreen(this.color, this.id, this.title);

  @override
  Widget build(BuildContext context) {
    // final routArgs =
    //     ModalRoute.of(context).settings.arguments as Map<String, String>;
    // final title = routArgs['titile'];
    // final color = routArgs['color'];
    // final id = routArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          backgroundColor: color,
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              title: categoryMeals[index].titile,
              imageUrl: categoryMeals[index].imageUrl,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
