
import 'package:flutter/material.dart';
import 'package:testproject/Api_Request/DashBoardApi.dart';
import 'dart:convert';

import 'package:testproject/Models/DashBoardModel.dart';
class DashboardProvider extends ChangeNotifier {
DashBoardModel ?dashboardModel;

  getDashboardDetails() async {
   
   

    var response = await DashBoardApi().getDashboardDetails();
    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);
      DashBoardModel data = DashBoardModel.fromJson(jsonObject);
      dashboardModel = data;
     
     
      notifyListeners();
      return true;
    } else {
      
      return false;
    }
  }
}

 
