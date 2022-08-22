import 'package:flutter/material.dart';
import 'package:my_app/components/friend_post_list_view.dart';
import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';

class ExploreScreen extends StatelessWidget {
// 1
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = snapshot.data.todayRecipes;
          final friendPosts = snapshot.data.friendPosts;

          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: recipes),
              const SizedBox(height: 16),

              FriendPostListView(friendPosts: friendPosts),
              // Container(
              //   height: 400,
              //   color: Colors.green,
              // )
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
