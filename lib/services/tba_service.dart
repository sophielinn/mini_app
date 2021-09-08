import 'package:mustang_mini_app/models/teamdata.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TheBlueAllainceApi {
  static const String _base_uri = "thebluealliance.com";
  static const Map<String, String> _header = {
    "X-TBA-Auth-Key":
        "JAuW8W8YRGoCk0zREOgnqkGPtfUX5UAfHvd6Ze1ixcPUB3F2tpwXV24l7qoUUnqL"
  };
  Future<List<TeamData>> getOprs(String event) async {
    List<TeamData> _returnData = [];
    var url = Uri.https(_base_uri, "/api/v3/event/$event/oprs");
    var response = await http.get(url, headers: _header);
    if (response.statusCode - 200 < 100) {
      // var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      final eventData =
          new Map<String, dynamic>.from(json.decode(response.body));
      final oprs = eventData['oprs'].entries;
      for (final item in oprs) {
        _returnData.add(TeamData.fromJson(item));
      }

      // print(jsonResponse);
    }
    // print(_returnData);
    return _returnData;
  }
}
