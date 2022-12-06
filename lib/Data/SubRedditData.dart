import 'package:brawn_power_technical_test/Data/RedditPosts.dart';

class SubRedditData
{
  String after = "";

  int dist = 0;

  String modhash = "";

  List<RedditPosts?> redditPosts = new List.empty(growable: true);

  SubRedditData({required this.after,  required this.dist, required this.modhash, required this.redditPosts});

  factory SubRedditData.fromJson(Map<String, dynamic> data) =>
      SubRedditData(
          after: data["after"],
          dist: data["dist"],
          modhash: data["modhash"],
          redditPosts: mapDataToRedditPostsObject(data["children"] as List)
      );

  static List<RedditPosts?> mapDataToRedditPostsObject(List<dynamic> data) => data.map((e) => RedditPosts.fromJson(e)).toList(growable: true);
}