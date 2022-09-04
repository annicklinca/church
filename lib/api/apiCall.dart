import 'dart:convert';

import 'package:http/http.dart' as http;

class CallAPi {
  final url = 'http://127.0.0.1:8000/api/';
  postData(data, apiUrl) async {
    var fullUrl = url + apiUrl;
    var response =
        await http.post(Uri.parse(fullUrl), body: json.encode(data), headers: {
      'Content-Type': 'application/json'
      // 'Authorization':'Bearer $token'
    });
    return response;
  }
}
