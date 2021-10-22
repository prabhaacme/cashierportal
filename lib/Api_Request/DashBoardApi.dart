
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testproject/Utils/BaseUrl.dart';

class DashBoardApi{
String dashboardapi ="employee/posProducts";

  Future<http.Response> getDashboardDetails() async{
 
    SharedPreferences prefs = await SharedPreferences.getInstance();
   String token = prefs.getString("token")!;
    return http.get(Uri.parse(BaseUrl.url +dashboardapi), 
    headers: {"Authorization":"Bearer $token"
    });
  }
}