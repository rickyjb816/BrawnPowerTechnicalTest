class RedditPost
{
  String _title = "";

  String get title => _title;

  set title(String title) {
    _title = title;
  }
  String _url = "";

  String get url => _url;

  set url(String url) {
    _url = url;
  }
  int _ups = 0;

  int get ups => _ups;

  set ups(int ups) {
    _ups = ups;
  }
  int _downs = 0;

  int get downs => _downs;

  set downs(int downs) {
    _downs = downs;
  }

  RedditPost(String title, String url, int ups, int downs) {
    this.title = title;
    this.url = url;
    this.ups = ups;
    this.downs = downs;
  }

  factory RedditPost.fromJson(Map<String, dynamic> data) =>
      RedditPost(
          data["title"],
          data["url"],
          data["ups"],
          data["downs"]
      );
}