import 'package:flutter/foundation.dart';

class Recipts {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingrediests;
  final List<String> steps;
  final int duration;
  final Complexilty complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isisVegetarian;

  const Recipts({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingrediests,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isisVegetarian});
}

enum Complexilty {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}