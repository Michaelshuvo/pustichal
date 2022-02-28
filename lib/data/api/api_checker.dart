

import 'package:get/get.dart';
import 'package:pustichal/view/base/custom_snackbar.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if(response.statusCode == 401) {
      showCustomSnackBar(response.statusText!);
     // Get.find<AuthController>().clearSharedData();
      //Get.find<WishListController>().removeWishes();
      //Get.offAllNamed(RouteHelper.getSignInRoute(RouteHelper.splash));
    }else {
      showCustomSnackBar(response.statusText!);
    }
  }
}
