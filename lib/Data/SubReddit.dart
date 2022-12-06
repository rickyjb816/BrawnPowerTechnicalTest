import 'package:brawn_power_technical_test/Data/SubRedditData.dart';

class SubReddit
{
  String kind = "";

  late SubRedditData subRedditData;

  SubReddit({required this.kind, required this.subRedditData});

  factory SubReddit.fromJson(Map<String, dynamic> data) =>
      SubReddit(
          kind: data["kind"],
          subRedditData: SubRedditData.fromJson(data["data"])
      );
}