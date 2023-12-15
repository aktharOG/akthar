import 'package:akthar/api/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  onPhoneVerify() async {
    var data = {"mobile": phoneController.text};
    Response? res = await ApiService.apiMethodSetup(
        method: apiMethod.post, url: "signIn", data: FormData.fromMap(data));

    if (res != null) {
      print(res.data);
    }
  }


   onOTPVerify() async {
    var data = {  
    "mobile":phoneController.text,
    "otp":otpController.text
};
    Response? res = await ApiService.apiMethodSetup(
        method: apiMethod.post, url: "verify", data: FormData.fromMap(data));

    if (res != null) {
      print(res.data);
    }
  }
}
