import 'package:brawn_power_technical_test/Data/RedditPost.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Given RedditPost is created When title variable is set to Unit Test Title Then the value should be Unit Test Title', () {
    //ARRANGE
    final redditPost = RedditPost('SomeTitle', '', 0, 0);

    //ACT
    redditPost.title = "Unit Test Title";

    //ASSERT
    expect(redditPost.title, "Unit Test Title");
  });

  test('Given RedditPost is created When url variable is set to Unit Test Url Then the value should be Unit Test Url', () {
    //ARRANGE
    final redditPost = RedditPost('SomeTitle', '', 0, 0);

    //ACT
    redditPost.url = "Unit Test Url";

    //ASSERT
    expect(redditPost.url, "Unit Test Url");
  });

  test('Given RedditPost is created When ups variable is set to 1 Then the value should be 1', () {
    //ARRANGE
    final redditPost = RedditPost('SomeTitle', '', 0, 0);

    //ACT
    redditPost.ups = 1;

    //ASSERT
    expect(redditPost.ups, 1);
  });

  test('Given RedditPost is created When downs variable is set to 1 Then the value should be 1', () {
    //ARRANGE
    final redditPost = RedditPost('SomeTitle', '', 0, 0);

    //ACT
    redditPost.downs = 1;

    //ASSERT
    expect(redditPost.downs, 1);
  });

  test('Given RedditPost object When it is created using a Json file Then the variables should match the given values', () {
    //ARRANGE
    Map<String, dynamic> mockJson = {"title": "Mock Title", "url": "Mock Url", "ups": 1, "downs": 2};

    //ACT
    final redditPostFromJson = RedditPost.fromJson(mockJson);

    //ASSERT
    expect(redditPostFromJson.title, "Mock Title");
    expect(redditPostFromJson.url, "Mock Url");
    expect(redditPostFromJson.ups, 1);
    expect(redditPostFromJson.downs, 2);
  });
}
