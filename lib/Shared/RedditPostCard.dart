import 'package:brawn_power_technical_test/Data/RedditPost.dart';
import 'package:brawn_power_technical_test/Pages/RedditPostPage.dart';
import 'package:flutter/material.dart';

class RedditPostCard extends StatelessWidget {

  int index = 0;

  RedditPost? redditPost;

  RedditPostCard({required this.index, required this.redditPost});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToRedditPost(context),
      child: Card(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Text(redditPost?.Title ?? ""),
            Text("Ups: ${redditPost?.ups}"),
            Text("Downs: ${redditPost?.downs}")
          ],
        ),
      ),
    );
  }

  void goToRedditPost(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => RedditPostPage(url: redditPost?.url)));
}
