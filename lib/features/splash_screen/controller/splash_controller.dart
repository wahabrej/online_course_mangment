import 'dart:async';

import 'package:coursemanagement/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  void checkIsLogin() async {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offNamed(AppRoute.getWelcomeScreenn());
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    checkIsLogin();
  }
}
