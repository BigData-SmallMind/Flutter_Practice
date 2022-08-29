import 'package:http/http.dart';

const String apiKey = 'ce8742bd0af06c6e36778dc1fedd9a0f';
const String apiId = '916e1714';
const String apiUrl = 'https://api.edamam.com/api/recipes/v2';

class RecipeService {
  // 1
  Future getData(String url) async {
    // 2
    print('Calling URL: $url');
    // 3
    final response = await get(Uri.parse(url));
    // 4

    if (response.statusCode == 200) {
      print('called successfully');
      return response.body;
    } else {
      print(response.statusCode);
    }
  }

  // TODO: Add getRecipes
  // 1
  Future<dynamic> getRecipes(String q) async {
    // 2
    final recipeData =
        await getData('$apiUrl?q=$q&app_key=$apiKey&type=any&app_id=$apiId');

    return recipeData;
  }
}
