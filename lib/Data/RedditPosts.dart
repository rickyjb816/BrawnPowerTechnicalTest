import 'package:brawn_power_technical_test/Data/RedditPost.dart';

class RedditPosts
{
  String Kind = "";

  RedditPost redditPost;

  RedditPosts({required this.Kind, required this.redditPost});

  factory RedditPosts.fromJson(Map<String, dynamic> data) =>
      RedditPosts(Kind: data['kind'], redditPost: RedditPost.fromJson(data["data"]));
}