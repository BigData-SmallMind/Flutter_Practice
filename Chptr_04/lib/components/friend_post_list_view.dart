import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/components/friend_post_tile.dart';
import '../models/models.dart';
import '../components/components.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;

  const FriendPostListView({Key? key, required this.friendPosts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Social Chefs',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: friendPosts.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final post = friendPosts[index];

                return FriendPostTile(post: post);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 28);
              },
            ),
          ),
        ],
      ),
    );
  }
}
