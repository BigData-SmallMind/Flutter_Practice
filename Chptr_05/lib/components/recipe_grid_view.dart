import 'package:flutter/material.dart';
import 'package:my_app/components/recipe_thumbnail.dart';
import '../models/models.dart';

class RecipeGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;

  const RecipeGridView({Key? key, required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
          itemCount: recipes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: ((context, index) {
            final simpleRecipe = recipes[index];
            return RecipeThumbnail(recipe: simpleRecipe);
          })),
    );
  }
}
