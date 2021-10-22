import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/Api_Request/LoginApi.dart';
import 'package:testproject/Utils/AppColors.dart';

class LoginProvider extends ChangeNotifier {
  bool loading = false;

  @override
  void dispose() {
    super.dispose();
  }

  Map<String, String> headers = {"Content-type": "application/json"};
  LoginApi authApi = LoginApi();

  Future logIn(Map loginData) async {
    setLoading(true);
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      var response = await authApi.login(loginData);

      if (response.statusCode == 200) {
        var jsonObject = json.decode(response.body);
        debugPrint(jsonObject['token']);
        await prefs.setString("token", jsonObject["data"]);
        setLoading(false);
        return true;
      } else if (response.statusCode == 500) {
        setLoading(false);
        Fluttertoast.showToast(
            msg: "Internal Server Error",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 3,
            backgroundColor: AppColors.colorRed,
            textColor: Colors.white,
            fontSize: 16.0);
        return false;
      }
      setLoading(false);
      Fluttertoast.showToast(
          msg: "${response.statusCode} Server Connection Closed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: AppColors.colorRed,
          textColor: Colors.white,
          fontSize: 16.0);
      return false;
    } on SocketException catch (e) {
      print(e.toString());
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  setLoading(bool value) {
    loading = value;
    notifyListeners();
  }
}
