import 'package:brawn_power_technical_test/Data/SubReddit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Reddit
{
  Future<SubReddit?> getPosts(String url)
  async {
    final response = await http.get(Uri.parse(url));
    print("Starting");
    if(response.statusCode == 200)
    {
      final json = jsonDecode(response.body);

      SubReddit subReddit = SubReddit.fromJson(json);
      return subReddit;
    }
    else
    {
      print("Failed");
      return null;
    }
  }
}