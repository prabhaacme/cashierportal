import 'package:testproject/Utils/AppColors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BaseUrl {
  static const url = "https://bankfab.marshal-me.com/smepos/";
 
}

class SucessMessage {
  suceessMessage() {
    return Fluttertoast.showToast(
        msg: "Data Updated Successfully",
        backgroundColor: AppColors.colorGreen);
  }
}

class FailureMessage {
  failedMessage() {
    return Fluttertoast.showToast(
        msg: "Something Went Wrong", backgroundColor: AppColors.colorRed);
  }
}
