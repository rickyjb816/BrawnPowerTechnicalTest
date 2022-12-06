import 'package:brawn_power_technical_test/Business/Reddit.dart';
import 'package:brawn_power_technical_test/Data/SubReddit.dart';
import 'package:brawn_power_technical_test/Shared/RedditPostCard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Future<SubReddit?> _data;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            SubReddit? subReddit = snapshot.data as SubReddit?;
            return Scaffold(
                appBar: AppBar(title: Text("Brawn Power Technical Test"),),
                body: Container(
                    child: ListView.builder(
                      itemCount: subReddit?.subRedditData.redditPosts.length ?? 0,
                        itemBuilder: (context, index) =>
                            RedditPostCard(index: index, redditPost: subReddit?.subRedditData.redditPosts[index]?.redditPost,)
                    )
                )
            );
          }
          else
          {
            CircularProgressIndicator();
          }
          return Container();
        }
    );
  }

  @override
  void initState() {
    _data = Reddit().getPosts("https://www.reddit.com/r/FlutterDev.json");
  }


}
