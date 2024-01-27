import 'dart:convert';

import 'package:http/http.dart' as http;

class Apiservice {
  final String baseUrl = 'https://vcare.integration25.com/api';
  postRequest(
      String endPOint, Map<String, dynamic> body) async {
    http.Response response = await http.post(
        Uri.parse('https://vcare.integration25.com/api/auth/login'),
        body: body);
    try {
      var postResponse = jsonDecode(response.body);
      return postResponse;
    } on Exception catch (e) {
      return {"response.statusCode": response.statusCode};
    }
  }
}
