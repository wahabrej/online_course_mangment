import 'package:coursemanagement/core/common/styles/global_text_style.dart';
import 'package:coursemanagement/core/utils/constants/app_colors.dart';
import 'package:coursemanagement/features/home/controller/home_controller.dart';
import 'package:coursemanagement/features/home/presentation/widgets/home_page_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FeaturedInstructorsList extends StatelessWidget {
  final HomeController homeController;

  const FeaturedInstructorsList({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeController.featuredInstructorsList.isEmpty
          ? ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => const HomePageLoading(),
            )
          : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: homeController.featuredInstructorsList.length,
              itemBuilder: (context, index) {
                final instructor =
                    homeController.featuredInstructorsList[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 20.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 170.0.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              instructor.imageUrl,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        instructor.name,
                        style: getTextStyle(
                          fontWeight: FontWeight.w700,
                          lineHeight: 12,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        instructor.description,
                        style: getTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: AppColors.textPrimary.withOpacity(.5),
                          lineHeight: 12,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        "Courses: ${instructor.course}",
                        style: getTextStyle(
                          fontWeight: FontWeight.w700,
                          lineHeight: 12,
                          color: AppColors.textPrimary.withOpacity(.8),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 20),
                          SizedBox(width: 5.h),
                          Text(
                            "${instructor.rating}/5 from ${instructor.studentCount}+ students",
                            style: getTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              lineHeight: 10,
                              color: AppColors.textPrimary.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
