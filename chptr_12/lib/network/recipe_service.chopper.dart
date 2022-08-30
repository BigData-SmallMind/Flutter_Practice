// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$RecipeService extends RecipeService {
  _$RecipeService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = RecipeService;

  @override
  Future<Response<Result<APIRecipeQuery>>> queryRecipes(
      String query, String type) {
    final $url = '';
    final $params = <String, dynamic>{'q': query, 'type': type};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<Result<APIRecipeQuery>, APIRecipeQuery>($request);
  }
}
