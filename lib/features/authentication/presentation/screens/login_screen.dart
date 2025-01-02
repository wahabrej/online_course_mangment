import 'package:coursemanagement/core/utils/constants/image_path.dart';
import 'package:coursemanagement/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70.h),
            Image.asset(
              ImagePath.splashicon,
              height: 71.h,
              width: 57.w,
            ),
            SizedBox(height: 14.h),
            // Title
            const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            const Text(
              "Welcome to Learning with us",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40.h),
            // Email field
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text("Email address"),
            ),
            SizedBox(height: 8.h),
            TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                  hintText: "mailto:helloworld@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  suffixIcon: Image.asset(
                    ImagePath.success,
                    width: 24,
                    height: 24,
                  )),
            ),
            const SizedBox(height: 16),
            // Password field
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text("password"),
            ),
            SizedBox(height: 8.h),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: const Icon(Icons.visibility_off_outlined),
              ),
            ),
            SizedBox(height: 16.h),
            // Remember Me and Forgot Password
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {
                    // Handle remember me checkbox
                  },
                ),
                Text(
                  "Remember Me",
                  style: TextStyle(fontSize: 16.sp),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Handle forgot password
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Log In Button
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
                  "Log in",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Register Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("If you don’t have any account please "),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.getSignUpScreen());
                    // Handle login action
                  },
                  child: const Text(
                    "Register now",
                    style: TextStyle(
                      color: Color(0xffFF8C00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

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
            const SizedBox(height: 16),
            // Social Sign-In Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google Button
                OutlinedButton.icon(
                  onPressed: () {
                    // Handle Google sign-up
                  },
                  icon: Image.asset(
                    ImagePath.google,
                    height: 24,
                    width: 24,
                  ),
                  label: Text(
                    "Google",
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Apple Button
                OutlinedButton.icon(
                  onPressed: () {
                    // Handle Apple sign-up
                  },
                  icon: Image.asset(
                    ImagePath.apple,
                    height: 24,
                    width: 24,
                  ),
                  label: Text(
                    "Apple",
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Facebook Button
                OutlinedButton.icon(
                  onPressed: () {
                    // Handle Facebook sign-up
                  },
                  icon: Image.asset(
                    ImagePath.facebook,
                    height: 24,
                    width: 24,
                  ),
                  label: Text(
                    "Facebook",
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
