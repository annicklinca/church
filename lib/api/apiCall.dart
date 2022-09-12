import 'dart:convert';

import 'package:http/http.dart' as http;

class CallAPi {
  final url = 'https://churchendpoint-production.up.railway.app/api/';
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
