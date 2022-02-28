
import 'package:pustichal/data/api/api_client.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:pustichal/data/model/body/CustomerOpinionBody.dart';
import 'package:pustichal/helper/app_constants.dart';

class Home_Repo {

  final ApiClient apiClient;

  Home_Repo({required this.apiClient,});
  Future<Response> getHomePageInfo() async {
    return await apiClient.getData(AppConstants.HOME_PAGE,);
  }

}