import 'package:brawn_power_technical_test/Data/RedditPosts.dart';

class SubRedditData
{
  String _after = "";

  String get after => _after;

  set after(String after) {
    _after = after;
  }
  int _dist = 0;

  int get dist => _dist;

  set dist(int dist) {
    _dist = dist;
  }
  String _modhash = "";

  String get modhash => _modhash;

  set modhash(String modhash) {
    _modhash = modhash;
  }

  List<RedditPosts?> _redditPosts = new List.empty(growable: true);

  List<RedditPosts?> get redditPosts => _redditPosts;

  set redditPosts(List<RedditPosts?> redditPosts) {
    _redditPosts = redditPosts;
  }

  SubRedditData(String after,  int dist, String modhash, List<RedditPosts?> redditPosts) {
      this.after = after;
      this.dist = dist;
      this.modhash = modhash;
      this.redditPosts = redditPosts;
  }

  factory SubRedditData.fromJson(Map<String, dynamic> data) => SubRedditData(data["after"], data["dist"], data["modhash"], mapDataToRedditPostsObject(data["children"] as List));

  static List<RedditPosts?> mapDataToRedditPostsObject(List<dynamic> data) => data.map((e) => RedditPosts.fromJson(e)).toList(growable: true);
}