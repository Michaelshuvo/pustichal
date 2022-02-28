/*
import 'dart:async';


import 'package:clicktobuy/data/api/api_client.dart';
import 'package:clicktobuy/data/model/body/signup_body.dart';
import 'package:clicktobuy/util/app_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(AppConstants.REGISTER_URI, signUpBody.toJson());
  }

  Future<Response> login({required String phone, required String password}) async {
    return await apiClient.postData(AppConstants.LOGIN_URI, {"email": phone, "password": password});
  }




  Future<Response> forgetPassword(String phone) async {
    return await apiClient.postData(AppConstants.FORGET_PASSWORD_URI, {"phone": phone});
  }

  Future<Response> verifyToken(String phone, String token) async {
    return await apiClient.postData(AppConstants.VERIFY_TOKEN_URI, {"phone": phone, "reset_token": token});
  }

  Future<Response> resetPassword(String resetToken, String number, String password, String confirmPassword) async {
    return await apiClient.postData(
      AppConstants.RESET_PASSWORD_URI,
      {"_method": "put", "reset_token": resetToken, "phone": number, "password": password, "confirm_password": confirmPassword},
    );
  }

  Future<Response> checkEmail(String email) async {
    return await apiClient.postData(AppConstants.CHECK_EMAIL_URI, {"email": email});
  }

  Future<Response> verifyEmail(String email, String token) async {
    return await apiClient.postData(AppConstants.VERIFY_EMAIL_URI, {"email": email, "token": token});
  }

  Future<Response> verifyPhone(String phone, String otp) async {
    return await apiClient.postData(AppConstants.VERIFY_PHONE_URI, {"phone": phone, "otp": otp});
  }

  // for  user token
  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  String getUserToken() {
    return sharedPreferences.getString(AppConstants.TOKEN) ?? "";
  }

  bool isLoggedIn() {
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  bool clearSharedData() {

    sharedPreferences.remove(AppConstants.TOKEN);
    sharedPreferences.setStringList(AppConstants.CART_LIST, []);

    apiClient.token = null;
    apiClient.updateHeader(null);
    return true;
  }

  // for  Remember Email
  Future<void> saveUserNumberAndPassword(String email, String password,) async {
    try {
      await sharedPreferences.setString(AppConstants.USER_PASSWORD, password);
      await sharedPreferences.setString(AppConstants.USER_EMAIL, email);

    } catch (e) {
      throw e;
    }
  }

  String getUserNumber() {
    return sharedPreferences.getString(AppConstants.USER_NUMBER) ?? "";
  }



  String getUserPassword() {
    return sharedPreferences.getString(AppConstants.USER_PASSWORD) ?? "";
  }

  void disableIntro() {
    sharedPreferences.setBool(AppConstants.FIRSTTIME, false);
  }


  Future<bool> clearUserNumberAndPassword() async {
    await sharedPreferences.remove(AppConstants.USER_PASSWORD);
    await sharedPreferences.remove(AppConstants.USER_COUNTRY_CODE);
    return await sharedPreferences.remove(AppConstants.USER_NUMBER);
  }
}
*/
