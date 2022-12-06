import 'package:brawn_power_technical_test/Data/RedditPost.dart';

class RedditPosts
{
  String kind = "";

  RedditPost redditPost;

  RedditPosts({required this.kind, required this.redditPost});

  factory RedditPosts.fromJson(Map<String, dynamic> data) =>
      RedditPosts(kind: data['kind'], redditPost: RedditPost.fromJson(data["data"]));
}