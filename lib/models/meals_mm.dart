enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordabe,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String titile;
  final String imageUrl;
  final List<String> ingridients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGluttenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal(
      {this.categories,
      this.titile,
      this.imageUrl,
      this.ingridients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability,
      this.isGluttenFree,
      this.isLactoseFree,
      this.isVegan,
      this.isVegetarian,
      this.id});
}
