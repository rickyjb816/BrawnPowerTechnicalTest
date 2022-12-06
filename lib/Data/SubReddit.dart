import 'package:brawn_power_technical_test/Data/SubRedditData.dart';

class SubReddit
{
  String Kind = "";

  SubRedditData subRedditData;

  SubReddit({required this.Kind, required this.subRedditData});

  factory SubReddit.fromJson(Map<String, dynamic> data) =>
      SubReddit(
          Kind: data["kind"],
          subRedditData: SubRedditData.fromJson(data["data"])
      );
}