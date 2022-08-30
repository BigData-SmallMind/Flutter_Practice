import 'package:chopper/chopper.dart';
import 'recipe_model.dart';
import 'model_response.dart';
import 'model_converter.dart';
part 'recipe_service.chopper.dart';

const String apiKey = 'ce8742bd0af06c6e36778dc1fedd9a0f';
const String apiId = '916e1714';
const String apiUrl = 'https://api.edamam.com/api/recipes/v2';

// 1
@ChopperApi()
abstract class RecipeService extends ChopperService {
  // 3
  @Get()
  Future<Response<Result<APIRecipeQuery>>> queryRecipes(
      @Query('q') String query, @Query('type') String type);
  // TODO Add create()
  static RecipeService create() {
    // 1
    final client = ChopperClient(
      // 2
      baseUrl: apiUrl,
      // 3
      interceptors: [_addQuery, HttpLoggingInterceptor()],
      // 4
      converter: ModelConverter(),
      // 5
      errorConverter: const JsonConverter(),
      // 6
      services: [
        _$RecipeService(),
      ],
    );
// 7
    return _$RecipeService(client);
  }
}

// TODO: Add _addQuery()
Request _addQuery(Request req) {
  // 1
  final params = Map<String, dynamic>.from(req.parameters);
  // 2
  params['app_id'] = apiId;
  params['app_key'] = apiKey;
  // 3
  return req.copyWith(parameters: params);
}
