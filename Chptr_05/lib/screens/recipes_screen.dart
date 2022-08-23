import 'package:flutter/material.dart';
import 'package:my_app/api/mock_fooderlich_service.dart';
import 'package:my_app/components/recipe_grid_view.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockFooderlichService();

  RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data;

          return RecipeGridView(recipes: recipes);
        } else {
          return const Center(
            child: LinearProgressIndicator(),
          );
        }
      },
    );
  }
}
