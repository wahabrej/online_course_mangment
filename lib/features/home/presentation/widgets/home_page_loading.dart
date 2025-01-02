import 'package:coursemanagement/core/common/widgets/get_size_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Card(
        margin: EdgeInsets.only(bottom: 20.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170.h,
                width: double.infinity,
                color: Colors.white,
              ),
              getSizeBox(height: 15.h),
              Container(
                height: 16.h,
                width: 150.w,
                color: Colors.white,
              ),
              getSizeBox(height: 12.h),
              Container(
                height: 12.h,
                width: double.infinity,
                color: Colors.white,
              ),
              getSizeBox(height: 20.h),
              Row(
                children: [
                  Container(
                    height: 12.h,
                    width: 100.w,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Container(
                    height: 12.h,
                    width: 60.w,
                    color: Colors.white,
                  ),
                ],
              ),
              getSizeBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20.h,
                    width: 40.w,
                    color: Colors.white,
                  ),
                  Container(
                    height: 40.h,
                    width: 150.w,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
