import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:testproject/Utils/BaseUrl.dart';

class LoginApi {
  Future<http.Response> login(Map loginData) async {
    var response = await http.post(Uri.parse(BaseUrl.url + "auth/login"),
        headers: {"Content-type": "application/json"},
        body: json.encode(loginData));
    return response;
  }
}
