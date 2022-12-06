import 'package:brawn_power_technical_test/Data/RedditPost.dart';
import 'package:flutter/material.dart';

class RedditPostCard extends StatelessWidget {

  int index = 0;

  RedditPost? redditPost;

  RedditPostCard({required this.index, required this.redditPost});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Column(
        children: [
          Text(redditPost?.title ?? "", textAlign: TextAlign.center,),
          Text("Ups: ${redditPost?.ups}"),
          Text("Downs: ${redditPost?.downs}")
        ],
      ),
    );
  }
}
