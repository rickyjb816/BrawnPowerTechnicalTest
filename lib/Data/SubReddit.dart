import 'package:brawn_power_technical_test/Data/SubRedditData.dart';

class SubReddit
{
  String _kind = "";

  String get kind => _kind;

  set kind(String kind) {
    _kind = kind;
  }

  late SubRedditData subRedditData;

  SubReddit(String kind, SubRedditData subRedditData)
  {
    _kind = kind;
    this.subRedditData = subRedditData;
  }

  factory SubReddit.fromJson(Map<String, dynamic> data) =>
      SubReddit(
          data["kind"],
          SubRedditData.fromJson(data["data"])
      );
}