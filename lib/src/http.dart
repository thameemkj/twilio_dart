import 'dart:convert' show json, base64Encode, utf8;
import 'package:http/http.dart' show get, post;
export 'package:http/http.dart' show Response;

class Http {
  static Future<Map> get_(
    String url,
    Map<String, String> credentials, {
    Map<String, dynamic>? body,
  }) async {
    var accountSid = credentials['accountSid'];
    var authToken = credentials['authToken'];
    var headers = <String, String>{
      'authorization': 'Basic ' + base64Encode(utf8.encode('$accountSid:$authToken')),
    };

    var response = await get(Uri.parse(url), headers: headers);
    return json.decode(response.body);
  }

  static Future<Map> post_(
    String url,
    Map<String, String> credentials,
    Map<String, dynamic> body,
  ) async {
    var accountSid = credentials['accountSid'];
    var authToken = credentials['authToken'];
    var headers = <String, String>{
      'authorization': 'Basic ' + base64Encode(utf8.encode('$accountSid:$authToken')),
    };

    var response = await post(Uri.parse(url), headers: headers, body: body);
    return json.decode(response.body);
  }
}
