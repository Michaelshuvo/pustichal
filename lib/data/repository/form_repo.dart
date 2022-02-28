
import 'package:pustichal/data/api/api_client.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/helper/app_constants.dart';

class Form_Repo {

  final ApiClient apiClient;

  Form_Repo({required this.apiClient,});
  Future<Response> customerOpinionPost(CustomerOpinionBody customerOpinionBody) async {
    return await apiClient.postData(AppConstants.CUSTOMER_FEEDBACK, customerOpinionBody.toJson());
  }

}