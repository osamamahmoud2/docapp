import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Apiservice {
  final String baseUrl = 'https://vcare.integration25.com/api';
  postRequest(String endPOint, Map<String, dynamic> body) async {
    try {
      http.Response response = await http
          .post(Uri.parse(baseUrl + endPOint), body: body)
          .timeout(const Duration(seconds: 5));

      var postResponse = jsonDecode(response.body);
      return postResponse;
    } catch (e) {
      if (e is TimeoutException) {
        return "Check Your Internet Connection";
      }
    }
  }
}
