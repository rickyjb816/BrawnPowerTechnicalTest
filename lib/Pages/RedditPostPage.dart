import 'package:brawn_power_technical_test/Business/Reddit.dart';
import 'package:brawn_power_technical_test/Data/SubReddit.dart';
import 'package:flutter/material.dart';

class RedditPostPage extends StatefulWidget {
  RedditPostPage({required this.url});

  String? url;

  @override
  State<RedditPostPage> createState() => _RedditPostPageState();
}

class _RedditPostPageState extends State<RedditPostPage> {

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
                    child: Text("Test")
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
    _data = Reddit().getPosts("${widget.url}.json");
  }
}
