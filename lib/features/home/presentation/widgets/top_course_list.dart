import 'package:coursemanagement/features/home/controller/home_controller.dart';
import 'package:coursemanagement/features/home/presentation/widgets/home_page_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/styles/global_text_style.dart';
import '../../../../core/common/widgets/get_size_box.dart';
import '../../../../core/utils/constants/app_colors.dart';

class CourseList extends StatelessWidget {
  final HomeController homeController;

  const CourseList({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeController.topCourses.isEmpty
          ? ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => const HomePageLoading(),
            )
          : ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: homeController.topCourses.length,
              itemBuilder: (context, index) {
                final course = homeController.topCourses[index];
                return Card(
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                course.imageUrl,
                              ),
                            ),
                          ),
                        ),
                        getSizeBox(height: 15.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course.title,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                lineHeight: 12,
                              ),
                            ),
                            getSizeBox(height: 12.h),
                            Text(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              course.description,
                              style: getTextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            getSizeBox(height: 20.h),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    course.instructor,
                                    overflow: TextOverflow.ellipsis,
                                    style: getTextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    RatingBarIndicator(
                                      rating: double.parse(
                                          course.rating.toString()),
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      itemSize: 20.0,
                                      direction: Axis.horizontal,
                                    ),
                                    Text(
                                      "${course.rating} (${course.ratingCount})",
                                      style: getTextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            getSizeBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${course.price}",
                                  style: getTextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10),
                                      child: Text(
                                        "Explore Courses",
                                        style: getTextStyle(
                                          color: AppColors.textWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
