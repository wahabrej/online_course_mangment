import 'package:coursemanagement/core/common/styles/global_text_style.dart';
import 'package:coursemanagement/core/common/widgets/get_size_box.dart';
import 'package:coursemanagement/core/utils/constants/app_colors.dart';
import 'package:coursemanagement/core/utils/constants/image_path.dart';
import 'package:coursemanagement/features/splash_screen/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());

    return Scaffold(
      backgroundColor: AppColors.textWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImagePath.logo,
            width: MediaQuery.of(context).size.width * .35,
          ),
          getSizeBox(),
          Text(
            "Learning Together",
            style: getTextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
