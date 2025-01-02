import 'package:coursemanagement/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/utils/constants/image_path.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 56.h),
              // Logo
              Image.asset(
                ImagePath.splashicon,
                height: 71.h,
                width: 57.w,
              ),
              SizedBox(height: 12.h),
              // Title
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40.h),
              // Form Fields
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Full Name"),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Phone number"),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  hintText: "Enter your phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Email"),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Address"),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  hintText: "Enter your address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Age (optional)"),
              ),
              SizedBox(height: 8.h),
              TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  hintText: "Enter your age",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text("Interested (optional)"),
              ),
              SizedBox(height: 8.h),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  //suffixIcon: Image.asset(ImagePath.dropDown),
                  hintText: "Select your interested subject",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: "Science", child: Text("Science")),
                  DropdownMenuItem(value: "Arts", child: Text("Arts")),
                  DropdownMenuItem(
                      value: "Mathematics", child: Text("Mathematics")),
                ],
                onChanged: (value) {
                  // Handle change
                },
              ),
              SizedBox(height: 16.h),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 8.h),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.1), fontSize: 16.sp),
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              // Get Started Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offNamed(AppRoute.getTabBarScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff7F56D9),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Login Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you already have an account please ",
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.getLoginScreen());
                    },
                    child: const Text(
                      "log in",
                      style: TextStyle(
                        color: Color(0xffFF8C00),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Divider with "Or sign up with"
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade400)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Or sign up with"),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade400)),
                ],
              ),
              SizedBox(height: 16.h),
              // Social Sign-Up Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Google Button
                  OutlinedButton.icon(
                    onPressed: () {
                      // Handle Google sign-up
                    },
                    icon: Image.asset(
                      ImagePath.google, // Replace with your Google icon path
                      height: 18.h,
                      width: 18.w,
                    ),
                    label: Text(
                      "Google",
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  // Apple Button
                  OutlinedButton.icon(
                    onPressed: () {
                      // Handle Apple sign-up
                    },
                    icon: Image.asset(
                      ImagePath.apple, // Replace with your Apple icon path
                      height: 18.h,
                      width: 18.w,
                    ),
                    label: Text(
                      "Apple",
                      style: TextStyle(color: Colors.black, fontSize: 14.sp),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  // Facebook Button
                  OutlinedButton.icon(
                    onPressed: () {
                      // Handle Facebook sign-up
                    },
                    icon: Image.asset(
                      ImagePath.facebook,
                      height: 18.h,
                      width: 18.w,
                    ),
                    label: Text(
                      "Facebook",
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
