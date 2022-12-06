class RedditPost
{
  String Title = "";
  String url = "";
  int ups = 0;
  int downs = 0;

  RedditPost({required this.Title, required this.url, required this.ups, required this.downs});

  factory RedditPost.fromJson(Map<String, dynamic> data) =>
      RedditPost(
          Title: data["title"],
          url: data["url"],
          ups: data["ups"],
          downs: data["downs"]
      );
}