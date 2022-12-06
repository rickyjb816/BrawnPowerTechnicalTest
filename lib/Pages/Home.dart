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

  String title = "Brawn Power Technical Test";

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            //On completion attempt to display the posts. If there isn't any data, display a message to say there isn't any posts.
            if(snapshot.hasData)
              {
                SubReddit? subReddit = snapshot.data as SubReddit?;
                return Scaffold(
                    appBar: AppBar(title: Text(title)),
                    body: Container(
                        child: ListView.builder(
                            itemCount: subReddit?.subRedditData.redditPosts.length ?? 0,
                            itemBuilder: (context, index) =>
                                RedditPostCard(index: index, redditPost: subReddit?.subRedditData.redditPosts[index]?.redditPost)
                        )
                    )
                );
              }
            else {
              //If the user is offline or there just isn't any posts found. Display message to let the user know and a button to refresh the list
              return Scaffold(
                  appBar: AppBar(title: Text(title)),
                  body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Unable To Retrieve Posts.\nThis may be due to your device being offline", textAlign: TextAlign.center),
                          ElevatedButton(onPressed: refreshList, child: const Text("Refresh"))
                        ],
                      )
                  )
              );
            }
          }
          else
          {
            //If the connection state isn't done, show the user a progress indicator so that they can see it's still working.
            const CircularProgressIndicator();
          }
          //If everything fails display a progress bar while the app tries to update the list
          return Scaffold(
            appBar: AppBar(title: Text(title)),
            body: const Center(
                child: CircularProgressIndicator()
            ),
          );
        }
    );
  }

  @override
  void initState() {
    super.initState();
    _data = Reddit().getPosts("https://www.reddit.com/r/FlutterDev.json");
  }

  void refreshList() {
    setState(() {
      _data = Reddit().getPosts("https://www.reddit.com/r/FlutterDev.json");
    });
  }
}
