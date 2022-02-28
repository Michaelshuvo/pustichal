
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/data/model/response/response_model.dart';
import 'package:pustichal/data/repository/form_repo.dart';
import 'package:pustichal/view/base/custom_snackbar.dart';

class CustomerOpinonController extends GetxController implements GetxService {
  final Form_Repo form_Repo;
  CustomerOpinonController({required this.form_Repo}) ;

  bool _isLoading = false;


  bool get isLoading => _isLoading;



  Future<ResponseModel> CustomerOpinionform(CustomerOpinionBody customerOpinionBody) async {
    _isLoading = true;
    update();
    Response response = await form_Repo.customerOpinionPost(customerOpinionBody);
    ResponseModel responseModel;
    if (response.statusCode == 200) {
      showCustomSnackBar(response.body["message"],isError: false);
      responseModel = ResponseModel(true, response.body["message"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }



}