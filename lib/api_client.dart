import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> get(String url) async {
  var response = await http.get("http://10.131.126.93:8080/api/" + url);
  return json.decode(response.body);
}
